class ZebraController < ApplicationController
  def home
    render({ :template => "dice_templates/homepage" })
  end

  def roll
    @num_dice = params.fetch("number_of_dice").to_i
    @num_sides = params.fetch("how_many_sides").to_i

    @rolls = []

    @num_dice.times do
      @rolls.push(rand(1..@num_sides))
    end
    render({ :template => "dice_templates/flexible" })
  end
end
