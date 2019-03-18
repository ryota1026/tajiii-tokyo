class ObjectController < ApplicationController
  def import
    Object.import(params[:file])
    redirect_to "/object"
  end
end
