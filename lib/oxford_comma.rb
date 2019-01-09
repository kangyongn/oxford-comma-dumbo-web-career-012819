def oxford_comma(array)
  if array.count == 1
    return array[0]
  elsif array.count == 2
    return array.join(" and ")
  else
    string = array.first
    # correction, 1st element already concatenated in line above.
    array.shift
    
    array.each do |element|
      if element == array.last
        string << ", and #{element}"
      else
        string << ", #{element}"
      end
    end
  end
    string
end