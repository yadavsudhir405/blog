class PingTestController < ApplicationController

  before_action :call_before_filter
  after_action :call_after_filter

  def ping
    puts "inside ping controler"
    id=params[:id]
    StanmarshConsumer.new.call id
    render plain: "hello"
  end

  private

      def call_before_filter
        puts "Before filter called"
        id=params[:id]
        if id.to_i>=5
        end

      end

  private
      def call_after_filter
        p "After filter called"
      end

end



