class DabblesController < ApplicationController

  before_filter :new_registration

	def index
	  
  end
  
  def dabble_box
    @idea = 'Dabble Box'
    @success_redirect = dabble_box_path
  end
  
  def whats_on_my_plate
    @idea = 'Rate my Plate' 
    @success_redirect = whats_on_my_plate_path
  end
  
  def my_colours
    @idea = 'Dabble by Colour'
    @success_redirect = my_colours_path
  end
  
  def dabble_remix
    @idea = 'Remix'
    @success_redirect = dabble_remix_path
  end
  
  private
    def new_registration
      @registration = Registration.new
    end

end
