module SessionManger

  def add_id_to_session
    session[:id] = @person.id
  end
end