class PagesController < ApplicationController
  def about    
  end

  def contact
  end

  def home
    @Skills = Skill.all
    @Posts = Blog.all
  end
end
