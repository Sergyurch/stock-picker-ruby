def stock_picker(arr)
  min_index = arr.index(arr.sort[0])
  max_index = arr.index(arr.sort[-1])
  if max_index > min_index
    return [min_index, max_index].to_s
  else
    difference = 0
    start = min_index
    finish = -1
    while start != nil do
      max = arr[start..finish].sort[-1]
      max_index = start + arr[start..finish].index(max)
      if (max - arr[start]) > difference
        difference = max - arr[start]
        best_buy_index = start
        best_sell_index = max_index
      end
      finish = start - 1
      new_min = arr[0...start].sort[0]
      if start == 0
        start = nil
      else  
        start = arr[0...start].index(new_min)
      end
    end
    return [best_buy_index, best_sell_index].to_s
  end
end