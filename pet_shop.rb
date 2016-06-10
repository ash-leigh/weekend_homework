def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount_of_pets_sold)
  pet_shop[:admin][:pets_sold] = pet_shop[:admin][:pets_sold] + amount_of_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed (pet_shop, breed_name)
  pet_count =[]
  for pet in pet_shop[:pets]
    pet_count << pet if pet[:breed] == breed_name
  end
  return pet_count
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    pet.delete(:name) if pet[:name] == pet_name
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customers, new_pet)
  return customers[:pets] << new_pet
end

def customer_can_afford_pet(customers, new_pet)
  return customers[:cash] > new_pet[:price]
end

def sell_pet_to_customer (pet_shop, pet, customers)
  if pet != nil
  add_pet_to_customer(customers, pet)
  increase_pets_sold(pet_shop, 1)
  add_or_remove_cash(pet_shop, pet[:price])
  end
end




















  