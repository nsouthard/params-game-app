class GamesController < ApplicationController
  def name
    if params["title"]
      @name = params["title"].upcase

      if @name[0] == "A"
        @message = "Hey your name starts with the letter A!"
        @message_2 = params["other_message"]
        render 'name_game.html.erb'
      end
    end
  end

  def guess
    @user_guess = params["submission"].to_i
    winning_number = 42

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low."
    else
      @answer_message = "right on the money."
    end
      
  end

  def url_segment
    @message = params["this_is_a_key"]
  end

  def url_segment_number
    @user_guess = params["number"].to_i
    winning_guess = 42

    if winning_guess < @user_guess
      @answer_message = "too high."
    elsif winning_guess > @user_guess
      @answer_message = "too low."
    else
      @answer_message = "right on the money."
    end
  end

end

