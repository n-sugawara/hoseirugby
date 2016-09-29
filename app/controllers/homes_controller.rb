class HomesController < ApplicationController
  def top
    @sidetopics = Topic.order(data: :desc)
    @sideresults = Result.order(time: :desc)
  end

  def schedule
    @sideresults = Result.order(time: :desc)
  end

  def info
    @sidetopics = Topic.order(data: :desc)
    @sideresults = Result.order(time: :desc)
  end
end
