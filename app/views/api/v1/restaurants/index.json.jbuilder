json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name
end

# funcao acima equivalente a:
# @restaurants.map do |restaurant|
#   json <<
#     {
#       id: restaurant.id,
#       name: restaurant.name,
#       address: restaurant.address
#     }
# end
