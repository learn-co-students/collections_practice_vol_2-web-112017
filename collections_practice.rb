require "pry"

def begins_with_r(array)
  truth = array.collect do |tool|
    tool.to_s.downcase.chr == "r" ? true : false
  end
  truth.all?
end

def contain_a(array)
  array.select do |element|
    element.include? "a"
  end
end

def first_wa(array)
  array.find do |element|
    element[0..1].downcase == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
end

def count_elements(array)
  unique_array = array.uniq
  count_array = unique_array.collect do |element|
    array.count(element)
  end
  answer_array = unique_array.each_with_index do |element, index|
    element[:count] = count_array[index]
  end
  answer_array
end

def merge_data(array1, array2)
  merged_data = []
  temp_array2 = []
  array2.each do |first_name_hash, index|
    first_name_hash.each do |name, attr_hash|
      temp_array2.push(attr_hash)
    end
  end
  merged_data = array1.map.with_index do |firstname_hash, index|
    firstname_hash.merge(temp_array2[index])
  end
  merged_data
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(hash)
  organized = {}
  hash.each do |school, prop_hash|
    prop_hash.each do |location, city|
      if organized[city]
        organized[city].push(school)
      else
        organized[city] = [school]
      end
    end
  end
  organized
end
