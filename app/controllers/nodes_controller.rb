class NodesController < ApplicationController
  def index
  	if params[:category].present? or params[:location].present? or params[:keyword].present? 
  		query = []
  		if params[:category] == "All categories"
  		elsif params[:category] == "Search and Rescue"
  		elsif params[:category] == "Material Requests"
  		elsif params[:category] == "Blood Requests"
  		elsif params[:category] == "Voluntary Requests"
  		end

  		query << "location ILIKE '%#{params[:location]}%'" if params[:location].present?
  		query << "value ILIKE '%#{params[:keyword]}%'" if params[:keyword].present?
  		
  		query_string = query.join(' AND ')
  		@nodes = Node.where(parent_id: nil).where(query_string)
  	else
  		@nodes = Node.where(parent_id: nil).order("posted_at DESC").all
  	end
  end

  def show
  end
end
