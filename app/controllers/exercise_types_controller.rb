class ExerciseTypesController < ApplicationController
  before_action :set_exercise_type, only: [:show, :edit, :update, :destroy]

  def index
    @exercise_types = ExerciseType.all
  end

  def new
    @exercise_type = ExerciseType.new
  end

  def create
    @exercise_type = ExerciseType.new(exercise_type_params)
    respond_to do |format|
      if @exercise_type.save
        format.html { redirect_to exercise_types_path }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    respond_to do |format|
      if @exercise_type.update(exercise_type_params)
        format.html {redirect_to @exercise_type}
      else
        format.html{ render :edit }
      end
    end
  end

  def destroy
    @exercise_type.destroy
    respond_to do |format|
      format.html { redirect_to exercise_types_url }
    end
  end

  private
    def set_exercise_type
      @exercise_type = ExerciseType.find(params[:id])
    end

    def exercise_type_params
      params.require(:exercise_type).permit(:name)
    end
end
