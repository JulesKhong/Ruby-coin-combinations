require('pry')

class Float
  define_method(:change) do
    change = {"quarters" => 0, "dimes" => 0, "nickels" => 0}
    counter = 0
    input = self
    until counter.==(self)
      if input./(0.25) >= 1
        change["quarters"]=((input./(0.25)).floor())
        num_quarters = change.fetch("quarters")
        input = (input.-(0.25.*(num_quarters))).round(2)
        counter = (counter.+(0.25.*(num_quarters)))
      elsif input./(0.10) >= 1
        change["dimes"]=((input./(0.10)).floor())
        num_dimes = change.fetch("dimes")
        input = (input.-(0.10.*(num_dimes))).round(2)
        counter = (counter.+(0.10.*(num_dimes)))
      elsif input./(0.05) >= 1
        change["nickels"]=((input./(0.05)).floor())
        num_nickels = change.fetch("nickels")
        input = (input.-(0.05.*(num_nickels))).round(2)
        counter = (counter.+(0.05.*(num_nickels)))
      else
        false
      end

    end

    result_quarter = change.fetch("quarters")
    if result_quarter > 1
      result_quarter = (result_quarter.to_s()).concat(" quarters")
    elsif result_quarter > 0
      result_quarter = result_quarter.to_s().concat(" quarter")
    else
      result_quarter = ""
    end

    result_dime = change.fetch("dimes")
    if result_dime > 1
      result_dime = (result_dime.to_s()).concat(" dimes")
    elsif result_dime == 1
      result_dime = result_dime.to_s().concat(" dime")
    else
      result_dime = ""
    end

    result_nickel = change.fetch("nickels")
    if result_nickel > 1
      result_nickel = (result_nickel.to_s()).concat(" nickels")
    elsif result_nickel == 1
      result_nickel = result_nickel.to_s().concat(" nickel")
    else
      result_nickel = ""
    end

    if (result_quarter != "") && (result_dime != "") && (result_nickel != "")
      final_change = result_quarter.concat(" " + result_dime + " " + result_nickel)

    elsif (result_quarter != "") && (result_nickel != "")
      final_change = result_quarter.concat(" " + result_nickel)


    elsif (result_dime != "") && (result_nickel != "")
      final_change = result_dime.concat(" " + result_nickel)
    elsif (result_dime != "") && (result_quarter != "")
      final_change = result_quarter.concat(" " + result_dime)

    elsif (result_quarter != "")
      final_change = result_quarter
    elsif (result_dime != "")
      final_change = result_dime
    elsif (result_nickel != "")
      final_change = result_nickel
    end
    final_change
  end
end
