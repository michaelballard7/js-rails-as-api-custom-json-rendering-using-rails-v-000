class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: @birds
  end

  def show

      if @bird
          @bird = Bird.find_by(id: params[:id])
          #   render json: @bird, only: [:id, :name]
          render json: @bird, except: [:created_at, :updated_at]


      else
          render json: {message: 'Bird not found'}
      end
      
    
  end

  
end
