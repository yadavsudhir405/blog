class WelcomeController < ApplicationController
  #include AuthConcern

  def index
    puts "Controllers being called"
  end

  def greeting
    @name = params.require(:name)
    render 'greeting'
  end


end
