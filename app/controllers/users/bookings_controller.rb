module Users
  class BookingsController < ApplicationController

    def index #trips
      flats_ids = current_user.flats.map { |f| f.id }
      @bookings = current_user.bookings.where("flat_id NOT IN (?)", flats_ids)
    end

    def demands #bookings
      @flats = current_user.flats
    end

  end
end