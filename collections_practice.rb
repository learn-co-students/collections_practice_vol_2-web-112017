# your code goes here
require 'pry'

def begins_with_r(array)
  array.each do |word|
     if word[0] != "r"
       return false
     end
  end
  true
end

def contain_a(array)
  final = []
  array.each do |word|
  if word.include?("a") == true
    final << word
   end
  end
  return final
end

def first_wa(array)
  array.each do |word|
    if word[0] == 'w' && word[1] == 'a'
      return word
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|word| word.class != String}
end

def count_elements(array)
  array.each do |name_hash|
    name = name_hash[:name]
    name_hash[:count] = 0
    #puts name_hash
    array.each do |hash|
      if hash[:name] == name
        name_hash[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(keys, data)
  final = []
  keys.each do |full_name|
    name = full_name[:first_name]
    data.each do |name_info|
        if name_info[name]
          merged_person = name_info[name]
          merged_person[:first_name] = name
          final << merged_person
        end
      end
    end
    return final
end

def find_cool(cool)
  final = []
  cool.each do |cool_hash|
    cool_hash.each do |key, value|
      if value == "cool"
        final << cool_hash
      end
    end
  end
  final
end

def organize_schools(schools)
  final = {}
  schools.each do |school_name, place|
    #puts place[:location]
    location = place[:location]
    if final[location]
      #puts final[location]
      final[location] << school_name
    else
      final[location] = []
      final[location] << school_name
    end
  end
  final
end
