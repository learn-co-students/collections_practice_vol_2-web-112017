require 'pry'
# your code goes here
def begins_with_r(array)
  array.each { |el|
    if(el[0].upcase == "R")
       next
     else
       return false
     end
   }
  return true
end

def contain_a(array)
  array.select {
    |l| l.include?('a')
  }
end

def first_wa(array)
  return array.find{|el| el[0..1].downcase == "wa"}
end

def remove_non_strings(array)
  array.select { |el|
      el.instance_of?(String)
  }
end

def count_elements(array)
  array.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.
    map { |name, count| { :name=>name, :count=>count } }
end












def merge_data(keys, data)#both arrays

  # keys.each {|el| #first_name => blake
  #
  #   data.map { |e|
  #     #binding.pry
  #     e[el[:first_name]][:first_name] = el[:first_name]
  #   }
  # }
  newArray = []
   data.map { |el|
    keys.map { |e|
      #binding.pry
      newArray << e.merge(el[e[:first_name]])

      #el += e[el[:first_name]].values
    }
   }
   newArray
end





def find_cool(hash_array)
  return hash_array.select { |el|
    #binding.pry
    el.find {|k, v|
      v == "cool"}
   }
end


def organize_schools(schools)
  answer_hash = {}

  schools.each do |key, hash|
    if answer_hash[hash[:location]] == nil
    answer_hash[hash[:location]] = [key]
    else
      answer_hash[hash[:location]] << key
    end
  end
  answer_hash
end
