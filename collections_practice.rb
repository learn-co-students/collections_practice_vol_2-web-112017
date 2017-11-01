
def begins_with_r(tools)
  if tools.any? do |tool|
    tool[0] != "r"
      end
    return false
  else
    return true
  end
end

def contain_a(array)
  array.select { |word| word.split("").include?("a") }
end

def first_wa(array)
  array.find { |element| element[0..1] == "wa"  }
end

def remove_non_strings(array)
  array.delete_if { |object| object.is_a?(String) == false  }
end

def count_elements(array)
  array.group_by { |element| element }
    .map { |k, v| k.merge(count: v.length)  }
end

def merge_data(keys, data)
  data.first.values.map.with_index do |value, index|
    keys[index].merge(value)
  end
end

def find_cool(cool)
  cool.select.with_index { |value, index| cool[index].values[1] == "cool" }
end

def organize_schools(schools)
  schools.each.with_object({}) do |(school, info), hash|
    (hash[info[:location]] ||= []) << school
  end
end
