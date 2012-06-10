
class DistillerysController < ApplicationController
  # GET /Distillerys/:distillery
  def show
    distilleryName = params[:id]
    @distillery = Distillery.find_by_name(distilleryName)

    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
