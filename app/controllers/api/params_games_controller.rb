class Api::ParamsGamesController < ApplicationController
  def show_names_action
    user_name = params["user_name"]
    temp = user_name.to_s
    @name = temp.upcase
    render "show_names_json.jbuilder"
  end

  def a_or_not
    user_name = params["user_name"]
    if user_name[0] == "a"
      @message = "Hey, your name begins with an A!"
    else
      @message = "No A's here, pal!"
    end
    render "a_or_not_json.jbuilder"
  end

  def segment_guess
    @number = params["my_number"].to_i
    target = 42

    if @number > target
      @message = "Too High, try something lower."
    elsif @number < target
      @message = "Too Low, you really should aim higher"
    else
      @message = "You got it, next beer's on me."
    end
    render 'guess.json.jbuilder'
  end
end

