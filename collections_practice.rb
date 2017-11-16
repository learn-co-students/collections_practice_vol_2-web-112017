require 'pry'
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
  arr.each do |slot|
    name = slot[:name]
    slot[:count] = 0

    arr.each do |hash|
      slot[:count] += 1 if hash[:name] == name
    end
  end
  arr.uniq
end

def merge_data(v2,v1) # [{},{}]
  v1[0].values.map.with_index {|v, i| v2[i].merge(v)}
end

def find_cool(cool)
  p_cool = []
  cool.each.with_index do |x,y|
    x.each { |k,v| p_cool << cool[y] if v == "cool" }
  end
  p_cool
end

def organize_schools(schools)
  main = {}
  schools.each do |key,hash| #school_name_string, hash_with_location
    main[hash[:location]] = []
  end


  main.each do |location, array| #key/"NYC" , array
    schools.each do |key,hash| #school_name_string, hash_with_location|
      if location == schools[key][:location]
        array << key
        # binding.pry
      end
    end
  end


end
