def naming_system
  hierarchy = ["Kingdom", "Phylum", "Class", "Order", "Family", "Genus", "Species"]
  n = hierarchy.length - 1
  reche = {:label => hierarchy[n], :sub_category => nil}
  for i in 0...n do
    reche = {:label => hierarchy[n-1-i], :sub_category => reche}
  end
  reche
end

curr = naming_system
for i in 0...7 do
  puts "Level #{i}: #{curr[:label]}"
  curr = curr[:sub_category]
end