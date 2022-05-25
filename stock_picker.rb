def stock_picker(stock_array) 

  max_price_difference = 0
  return_array = []

  stock_array.each_with_index do |stock, day|
    
    slice_array = stock_array.slice(day + 1, stock_array.length - 1)
    slice_array.each do |slice_stock|

      if slice_stock <= stock
        next

      elsif max_price_difference <= slice_stock - stock
        max_price_difference = slice_stock - stock
        return_array = [day, stock_array.find_index(slice_stock)] 
      end

    end

  end

  puts "#{return_array}"

end