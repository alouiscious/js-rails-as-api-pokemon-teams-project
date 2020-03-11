class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    render json: TrainerSerializer.new(trainers)
  end

    # render json: TrainerSerializer.new(@trainers).to_serialized_json
    # render json: trainers.to_json(:include => {
    #   :pokemon => {
    #     :only => [:name, :species, :nickname]
    #   }
    # })

  def show
    trainer = Trainer.find_by(id: params[:id])
    # options = { include: [:pokemon] }
    render json: TrainerSerializer.new(trainer)
    # render json: TrainerSerializer.new(trainer, options).to_serialized_json
  end


end
