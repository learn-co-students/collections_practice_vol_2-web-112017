# your code goes here

def begins_with_r(tools)
  tools.each do |tool|
    if tool[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  new_array = []
  array.each do |elements|
    if elements.include?("a")
      new_array << elements
    end
  end
new_array
end

def first_wa(array)
  array.each do |x|
    if x[0..1] == "wa"
      return x
    end
  end
end


def remove_non_strings(array)
  array.delete_if {|x| !x.is_a?(String)}
    return array
end

def count_elements(array)
  new_hash = {}
  array.each do |x|
    if !new_hash.has_key?(x[:name])
      new_hash[x[:name]] = 1
    else new_hash[x[:name]] += 1
    end
  end
  new_hash.map do |k,v|
    { name: k , count: v }
  end
end



def merge_data(data_1, data_2)
   merged = []
   data_1.each_with_index do |x, i|
    merged << data_1[i].merge(data_2[0][data_1[i].values[0]])
   end
   merged
 end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each do |k,v|
      if k == :temperature && v== "cool"
        cool_hashes << hash
      end
    end
  end
  cool_hashes
end

def organize_schools(hashes)
   reorganized = {}
   hashes.each do |school,city|
     if reorganized[city[:location]] == nil
       reorganized[city[:location]] = []
       reorganized[city[:location]] << school
     else
      reorganized[city[:location]] << school
    end
  end
   reorganized
end
