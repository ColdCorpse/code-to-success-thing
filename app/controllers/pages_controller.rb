class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @kills = Skill.all
  end

  def about
  end

  def contact
  end
end
