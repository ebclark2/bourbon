
class DistilleriesController < ApplicationController
  # GET /Distillerys/:distillery
  def show
    @distillery = Distillery.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
