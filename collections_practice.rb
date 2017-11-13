def begins_with_r(arr)
  arr.each {|x| next if x.start_with?("r") ; return false}
  true
end

def contain_a(arr)
  arr.select {|x| x.include?("a")}
end

def first_wa(arr)
  arr.find {|x| x.to_s.include?("wa")}
end

def remove_non_strings(arr)
  arr.delete_if {|x| (x.class != String)}
end

def count_elements(arr)

end
