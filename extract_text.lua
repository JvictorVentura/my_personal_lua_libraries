function Extract_text(str, start_str, end_str, start_search) --this function will extract a text between to given trings

  local index

  if type(start_search) == "number" then
    index = start_search
  else
    index = 1
  end


	local _ , _end = str:find(start_str, index, true)
	if( _end == nil) then
		return nil
	end
	 local start_index = _end + 1


	local start, index_after = str:find(end_str, start_index, true)
	if( start == nil) then
		return nil
	end
	local end_index = start - 1


	return str:sub(start_index, end_index), index_after

end
