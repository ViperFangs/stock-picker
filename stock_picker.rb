def stock_picker(stock_array) 

  highest_stock = stock_array[0]
  max_price_difference = 0
  return_array = []

  stock_array.each_with_index do |stock, day|

    slice_array = stock_array.slice(day + 1, stock_array.length - 1)
    slice_array.each do |number|

      if number <= stock
        next

      elsif max_price_difference <= number - stock
        max_price_difference = number - stock
        return_array = [day, stock_array.find_index(number)] 
      end

    end

  end

  puts "#{return_array}"

end