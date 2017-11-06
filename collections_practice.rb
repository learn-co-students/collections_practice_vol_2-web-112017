def begins_with_r(array)
  counter = 0

  for i in array
    if i[0] == "r"
      counter+=1
    end
  end
  if counter == array.length
    true
  else
    false
  end

end

def contain_a(array)
  contains_a = []
  for i in array
    if i.index("a") != nil
      contains_a.push(i)
    end
  end
  contains_a

end


def first_wa(array)
  array.find do |x|
    x[0..1] == "wa"
  end

end

def remove_non_strings(array)

  array.delete_if do |x|
    !(x.instance_of? String)
  end

end

def count_elements(hash)

 hash.group_by(&:itself).map do |key, value|
   key.merge(count: value.length)
 end

end

def merge_data(arr1, arr2)
  merged_data = []
  arr1.each do |y|
      firstname = y[:first_name]
    arr2.each do |x|
      x.keys.each do |name|
        if(name == firstname)
          stat = x[name]
          dude = {}
          dude[:first_name] = firstname
          stat.keys.each do |a|
          dude[a]=stat[a]
          end
          merged_data.push(dude)
        end
      end
    end
  end

  merged_data

end

def find_cool(hash)

cool_array = []
  hash.each do |x|
    x.each do |keys, vals|
      if vals == "cool"
        cool_array.push(x)
      end
    end
  end
  return cool_array

end

def organize_schools(array)
  org_schools = {}
  array.each do |school, loc|
    loc.each do |location, name|
      puts name
      if org_schools.has_key?(name)
        org_schools[name].push(school)
      else
        org_schools[name] = [school]
      end
    end
  end
  org_schools
end
