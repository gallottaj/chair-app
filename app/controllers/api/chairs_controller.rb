class Api::ChairsController < ApplicationController
  def index
    @chairs = Chair.all
    render 'index.json.jbuilder'
  end
  def show
    @chair = Chair.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
  def create
    @chair = Chair.new({style: params[:style], color: params[:color]})
    @chair.save
    render "show.json.jbuilder"
  end
  def update
    @chair = Chair.find_by(id: params[:id])
    @chair = @chair.update({style: params[:style], color: params[:color]})
    render "show.json.jbuilder"
  end
  def delete
    @chair = Chair.find_by(id: params[:id])
    @chair.destroy
    render "delete.json.jbuilder"
  end
end
