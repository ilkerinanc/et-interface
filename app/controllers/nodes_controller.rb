class NodesController < ApplicationController
  def index
  	@nodes = Node.where(parent_id: nil).order("posted_at DESC").all
  end

  def show
  end
end
