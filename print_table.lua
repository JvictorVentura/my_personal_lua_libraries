function print_table(table, print_key)
  for k,v in pairs(table) do
    if print_key == true then
      print(k,v)
    else
      print(v)
    end
  end
end
