def begins_with_r (array)
    array.all? do |item|
        item.start_with?("r")
   end
end

def contain_a (array)
  array.select do |x|
      x.include?('a')
    end
end

def first_wa (array)
    array.find { |item| item[0,2] == 'wa' }
end

def remove_non_strings (array)
    array.keep_if { |obj| (obj.is_a? String) }
end

def count_elements (array)
    array.each { |original| original[:count] = 0
        name = original[:name]
        array.each{ |item|
            if item[:name] == name
                original[:count] += 1
            end
        }
    }.uniq
end

def merge_data (item1, item2)
 item2[0].values.map.with_index {|v, i| item1[i].merge(v)}
end

def find_cool (array)
    new_array = []
    array.each do |item|
        if item[:temperature] == "cool"
        new_array << item
    end
  end
   new_array
end

def organize_schools(hash)
    new_item = Hash.new {|h,k| h[k] = []}
    hash.each do |a, b|
        location = b[:location]
        if new_item[location]
           new_item[location] << a
        else
           new_item[location] == []
           new_item[location] << a
        end
    end
    new_item
end
