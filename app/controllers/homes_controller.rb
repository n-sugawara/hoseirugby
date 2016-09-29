class HomesController < ApplicationController
  def top
    @sidetopics = Topic.order(data: :desc)
    @sideresults = Result.order(time: :desc)
  end

  def link
    @sideresults = Result.order(time: :desc)
  end

  def history
    @sidetopics = Topic.order(data: :desc)
    @sideresults = Result.order(time: :desc)
  end
end
