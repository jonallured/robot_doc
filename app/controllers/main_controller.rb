class MainController < ApplicationController
  def show
    @now = Time.now.to_i
  end
end
