
json.array! @hedgehogs.each do |hedgehog|
  
  json.id hedgehog.id
  json.first_name hedgehog.first_name
  json.age hedgehog.age
  json.color hedgehog.color
  json.favorite_food hedgehog.favorite_food

end