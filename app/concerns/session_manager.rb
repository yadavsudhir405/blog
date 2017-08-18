module SessionManger

  def add_id_to_session
    session[:id] = @person.id
  end
  
  def person_from_session
    @person = Person.where(id: params[:id]).first
  end
end
