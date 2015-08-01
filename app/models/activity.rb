class Activity < ActiveRecord::Base
validates :address_start,  presence: true
validates :address_end, presence: true

geocoded_by :given_addressess
after_validation :geocode

	def given_addressess
		#Take address A, and return coordinates
		start_coordinates = Geocoder.coordinates(address_start)
		#Take address B, and return coordinates
		end_coordinates = Geocoder.coordinates(address_end)
		#Calculate distance in km, and save to database
		self.distance = Geocoder::Calculations.distance_between(start_coordinates, end_coordinates)
	end
end
