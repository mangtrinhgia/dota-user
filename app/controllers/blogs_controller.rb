class BlogsController < ApplicationController

  def index

  end

  def detail
    return redirect_to root_url if params[:id].blank?

    @blog = Blog.where(id: params[:id])
    render 'index', error: "Not exist!" unless @blog.present?

  end

end
