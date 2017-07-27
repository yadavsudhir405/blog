class WelcomeController < ApplicationController
  #include AuthConcern

  def index
    puts "Controllers being called"
    p params[:utm_source]
    p params[:utm_medium]
  end

  def greeting
    @name = params.require(:name)
    render 'greeting'
  end

end
