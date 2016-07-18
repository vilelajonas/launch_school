names = ["Jonas", "Pedro", "Paulo", "Mateus", "Camila", "Isadora"]

names.each_with_index do |name, i|
  p (i + 1).to_s + ". " + name
end