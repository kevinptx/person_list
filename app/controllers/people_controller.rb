class PeopleController < ApplicationController
  def index
    @people = Person.all.by_last_name
  end

  def show
    @person = selected_person
  end

  def new
    @person = Person.new
  end

  def edit
    @person = selected_person
  end

  def create
    @person = Person.new(person_params)

    if (@person.save)
      redirect_to people_path
    else
      render :new
    end
  end

  def update
    @person = selected_person

    if @person.update(person_params)
      redirect_to people_path
    else
      flash[:errors] = people.errors.full_messages
      render :edit
    end
  end

  def destroy
    @person = selected_person.destroy
    redirect_to people_path
  end

  private

  #find by id:
  def selected_person
    Person.find(params[:id])
  end

  #strong params:
  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :hair_color, :eye_color, :gender, :alive)
  end
end
