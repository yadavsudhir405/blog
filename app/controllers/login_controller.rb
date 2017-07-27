class LoginController <ApplicationController

  def authenticate
    puts "Validating users"
    username=params[:username]
    password=params[:password]
    puts "username:#{username} and password:#{password}"
    if (username=="admin") && (password=="admin") then
      render "success"
    else
      render "fail"
    end
  end

  def login
    render "login1"
  end
end


