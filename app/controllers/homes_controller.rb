class HomesController < ApplicationController
  def top
    @sidetopics = Topic.order(created_at: :desc)
    @sideresults = Result.order(created_at: :desc)
  end

  def link
    @sideresults = Result.order(created_at: :desc)
  end

  def history
    @sidetopics = Topic.order(created_at: :desc)
    @sideresults = Result.order(created_at: :desc)
  end
end
