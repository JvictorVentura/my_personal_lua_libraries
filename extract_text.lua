function extract_text(start_str, end_str, str) --this function will extract a text between to given trings
	start_match, end_match = str:find(start_str, 0, true)
	e_match = end_match + 1

	start_match, end_match = str:find(end_str, e_match, true)
	s_match = start_match

	s_match = s_match - 1

	if s_match ~= nil and e_match ~= nil then
		extracted_string = str:sub(e_match, s_match) 	
	else
		return "error"
	end
	return extracted_string 
end
