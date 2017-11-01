def begins_with_r(array)
  array.all? {|word| word.downcase.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.downcase.include?("a")}
end

def first_wa(array)
  remove_non_strings(array).select {|word| word.start_with?("wa")}.first
end

def remove_non_strings(array)
  array.select {|elem| elem.class == String}
end

def count_elements(array_of_hashes)
  list_of_names = []
  final_arr =[]
  array_of_hashes.each do |hash|
    list_of_names << hash.values
  end
  list_of_names = list_of_names.flatten
  list_of_names.uniq.each do |name|
    final_arr << {:name => name, :count => list_of_names.count(name)}
  end
  return final_arr
end

def merge_data(array1, array2)
  final_array = []
  names = []
  array1.each do |hash|
    names << hash.values
  end
  names.flatten!
  names.each do |name|
    final_array << {:first_name => name}.merge(array2[0][name])
  end
  return final_array

end


def find_cool(array_of_hashes)
  array_of_hashes.select {|hash| hash.has_value?("cool")}
end

def organize_schools(hash_of_hashes)
  final_hash = {}
  hash_of_hashes.collect do |key,value|
    final_hash[value[:location]] = []
  end

  final_hash.each do |key1,value1|
    hash_of_hashes.each do |key2,value2|
      value1 << key2 if key1 == value2[:location]
    end
  end
end
