function extract_text(start_str, end_str, str) --this function will extract a text between to given trings
	local _ , _end = str:find(start_str, 0, true)
	
	if( _end == nil) then
		return "error"
	end

	start_extracted_string = _end + 1

	

	local start, _ = str:find(end_str, start_extracted_string, true)

	if( start == nil) then
		return "error"
	end

	end_extracted_string = start - 1


	return str:sub(start_extracted_string, end_extracted_string) 	

end
