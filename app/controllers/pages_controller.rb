class PagesController < ApplicationController
  def home
  end
  def about
  end
  def contact
    @members = ["Sparkles", "Momma", "Orion", "Rigel", "Isabelle", "Maasa"]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
