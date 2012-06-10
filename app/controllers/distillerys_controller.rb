
class DistillerysController < ApplicationController
  # GET /Distillerys/:distillery
  def show
    @distillery = params[:id]
    puts @distillery
    @whiskeys = Whiskey.find_all_by_distillery(@distillery)

    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
