class NodesController < ApplicationController
  def index
  	@nodes = Node.order("posted_at DESC").all
  end

  def show
  end
end
