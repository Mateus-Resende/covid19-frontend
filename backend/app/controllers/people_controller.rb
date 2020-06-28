class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # POST /people
  def create
    @person = Person.new(person_params)

    if @person.save
      render json: @person, status: :created
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  private
    def person_params
      params.require(:people).permit(:name, :address, :infected)
    end
end
