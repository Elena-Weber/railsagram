class HomeController < ApplicationController
  before_action :set_suggestions

  def index
  end

  def set_suggestions
    @suggestions = [current_user.followers]

    [current_user.followers, current_user.followings].flatten.uniq.each do |person|
      @suggestions.append([person.followers, person.followings])
    end
    
    @suggestions = [@suggestions, User.all.sample(10)].flatten.uniq - [current_user.followings, current_user].flatten 
    @suggestions = @suggestions.sample(5)
  end
end
