class DemoJob < ActiveJob::Base
  queue_as :critical

  def perform(name , count)
     count.to_i.times do |i|
       p "****************#{name}=>#{i}"
     end
     p "*************Default locale #{I18n.locale}"
  end
end