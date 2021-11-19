class Lr8Controller < ApplicationController
  def input

  end

  def view
    v1 = params[:v1].to_i

    def mathexp(num1)
      Math.log(num1 + 1) / Math.log(2)
    end
    
    def mathexp2(num2)
      (mathexp(num2) - mathexp(num2).to_i).zero?
    end
    
    def mathexp3(num1, num2)
      ((mathexp(num1) / num2) - (mathexp(num1) / num2).to_i).zero?
    end
    
    def easynumb(numb)
      @array = []
      1.upto(numb) do |numb1|
        next unless mathexp2(numb1)
    
        count = 0
        1.upto(mathexp(numb1)) do |numb2|
          count += 1 if mathexp3(numb1, numb2)
        end
        @array.push(numb1) if count == 2
      end
      @array
    end

    easynumb(v1)
    
  end

end
