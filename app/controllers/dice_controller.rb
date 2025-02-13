class DiceController < ApplicationController

  def two_six

    render({ :template => "dice_templates/2d6" })
    end
    
    
    def two_ten
    render({ :template => "dice_templates/2d10"})
    end
    
    def one_twenty
      render({ :template => "dice_templates/1d20"})
      end
    
      def five_four
        render({ :template => "dice_templates/5d4"})
        end

def homepage
  render({ :template => "dice_templates/homepage"})
  end

  def random
    @num_dice = params.fetch("number_of_dice").to_i

  @sides = params.fetch("how_many_sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end
    
    render({ :template => "dice_templates/random"})
end


end
