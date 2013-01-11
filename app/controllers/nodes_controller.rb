class NodesController < ApplicationController
  def index
  	if params[:category].present? or params[:location].present? or params[:keyword].present? 
  		query = []
  		if params[:category] == "All categories"
  		elsif params[:category] == "Search and Rescue"
        query << "category_id = 1"
  		elsif params[:category] == "Material Requests"
        query << "category_id = 2"
  		elsif params[:category] == "Blood Requests"
        query << "category_id = 3"
  		elsif params[:category] == "Voluntary Requests"
        query << "category_id = 4"
      elsif params[:category] == "Information Requests"
        query << "category_id = 5"
  		end

  		query << "location ILIKE '%#{params[:location]}%'" if params[:location].present?
  		query << "value ILIKE '%#{params[:keyword]}%'" if params[:keyword].present?
  		
  		query_string = query.join(' AND ')
  		@nodes = Node.where(parent_id: nil).where(query_string).order("posted_at DESC").page(params[:page]).per_page(10)
  	else
  		@nodes = Node.where(parent_id: nil).order("posted_at DESC").page(params[:page]).per_page(10)
  	end
  end

  def show
  end
end
