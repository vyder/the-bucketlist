class HomeController < ApplicationController
  # http_basic_authenticate_with :name => "vidur", :password => "goosefraba"
  
  def splash
    @tasks = Task.all
    @done_count = Task.done.size
    @left_count = Task.left.size
  end
end
