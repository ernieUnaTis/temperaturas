class Temperatura < ApplicationRecord

  require'net/http'

  filterrific(
   default_filter_params: { sorted_by: 'registro_asc' },
   available_filters: [
     :sorted_by
   ]
 )

 scope :sorted_by, ->(sort_option) {
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    temperaturas = Temperatura.arel_table
    case sort_option.to_s
    when /^registro_/
      # order("students.created_at #{direction}")
      order(temperaturas[:registro].send(direction))
    when /^temperatura_/
      # order("LOWER(students.last_name) #{direction}, LOWER(students.first_name) #{direction}")
      order(temperaturas[:temperatura].lower.send(direction))
    else
      raise(ArgumentError, "Invalid sort option: #{sort_option.inspect}")
    end
  }



    def almacenarTemperatura()
      uri = URI('http://api.openweathermap.org/data/2.5/weather?q=Monterrey,MX&appid=3fc82b390a874c7c422510d5488b0722&lang=es&units=metric')
      response = Net::HTTP.get_response(uri) # => String
      @jsonTemperatura = JSON.parse(response.body)
      @temperatura = Temperatura.new
      @temperatura.temperatura = @jsonTemperatura["main"]["temp"]
      @temperatura.minima = @jsonTemperatura["main"]["temp_min"]
      @temperatura.maxima = @jsonTemperatura["main"]["temp_max"]
      @temperatura.registro = Time.now
      @temperatura.save
    end

    def self.options_for_sorted_by
  [
    ['Temperatura', 'temperatura_asc'],
      ['Temperatura', 'temperatura_desc'],
    ['Registration date (newest first)', 'registro_desc'],
    ['Registration date (oldest first)', 'registro_asc'],

  ]
end
end
