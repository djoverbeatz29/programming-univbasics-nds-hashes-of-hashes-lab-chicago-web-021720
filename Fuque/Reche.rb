def naming_system
  hierarchy = ["Kingdom", "Phylum", "Class", "Order", "Family", "Genus", "Species"]
  N = hierarchy.length - 1
  reche = {:label => hierarchy[N], :sub_category => nil}
  for i in 0...N do
    reche = {:label => hierarchy[N-1-i], :sub_category => reche}
  end
  reche
end

curr = naming_system
for i in 0...hierarchy.length do
  put "Level #{i}: #{curr[:label]}"
  curr = curr[:sub_category]
end