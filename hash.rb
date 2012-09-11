# Hash with capital H and square brackets means create a new hash
# with the following elements in square brackets i think
hash_type1 = Hash.new("Go Fish" => "Salmon")
hash_type1["aardvark"] = 100
hash_type1["buzzards"] = 200
#hash_type1 = Hash["aardvark", 100, "buzzards", 200]
hash_type2a = Hash[ ["aardvark", 100], ["buzzards", 200] ]
hash_type2b = Hash[ [["aardvark", 100], ["buzzards", 200]] ]
hash_type3 = Hash["aardvark" => 100, "buzzards" => 200]
hash_type4 = {100 => "aardvark", 200 => "buzzards"}

puts hash_type1.inspect # {"aardvark" => 100, "buzzards" => 200}
puts hash_type1["aardvark"] # 100
puts hash_type1[1] # Go FishSalmon
puts hash_type2a.inspect # {["aardvark" => 100] => ["buzzards" , 200]}
puts hash_type2a[["a", 100]] # nil
puts hash_type2b.inspect # {"aardvark" => 100, "buzzards" => 200}
puts hash_type2b["a"] # nil
puts hash_type3.inspect # {"aardvark" => 100, "buzzards" => 200}
puts hash_type4[100].upcase! # AARDVARK
puts hash_type4[2] # nil because it doesn't make sense. There is no "2" key