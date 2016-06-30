require('pry')

class Float
  define_method(:change) do
    change = {"quarters" => 0, "dimes" => 0}
    counter = 0
    input = self
    until counter.==(self)
      if input./(0.25) >= 1
        change["quarters"]=((input./(0.25)).floor())
        # change.store("quarters", ((input./(0.25)).floor()))
        num_quarters = change.fetch("quarters")
        input = (input.-(0.25.*(num_quarters))).round(2)
        counter = (counter.+(0.25.*(num_quarters)))
      elsif input./(0.10) >= 1
        change["dimes"]=((input./(0.10)).floor())
        num_dimes = change.fetch("dimes")
        input = (input.-(0.10.*(num_dimes))).round(2)
        counter = (counter.+(0.10.*(num_dimes)))
        # binding.pry
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

    final_change = result_quarter.concat(" " + result_dime)
    final_change
  end
end
