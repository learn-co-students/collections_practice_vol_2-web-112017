
def begins_with_r(array)
  return array.all? { |word| word.start_with?("r") }
end

def contain_a(array)
  array.select {|w| w.include?("a")}
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if {|item| item.class != String}
end

def count_elements(array)
  counter = []
    array.each do |item|
      id = item[:name]
      neue = true
        counter.each do |thing|
          thing[:count] += 1 if thing[:name] == id
          neue = false if thing[:name] == id
        end
      counter << {:name => id, :count => 1} if neue == true
    end
  counter
end


def merge_data(array_one, array_two)
  array_one.each do |item|
    item.each do |key, value|
      array_two.first[value][key] = value
    end
  end
  array_two.first.values
end

def find_cool(array)
  array.select do |person|
    person[:temperature] == "cool"
  end
end

def organize_schools(array)
  school_hash = {}
  array.each do |school|
    loc = school[1][:location]
    school_hash[loc] = [] if !school_hash[loc]
    school_hash[loc] << school.first
  end
  school_hash
end
