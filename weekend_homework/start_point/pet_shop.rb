def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(petshop)
  return petshop[:admin][:total_cash]
end

def add_or_remove_cash(petshop, cash)
  new_total_cash = petshop[:admin][:total_cash] += cash
  return new_total_cash
end

def pets_sold(petshop)
  return petshop[:admin][:pets_sold]
end

def increase_pets_sold(petshop, pets_sold)
  new_pets_sold_total = petshop[:admin][:pets_sold] += pets_sold
  return new_pets_sold_total
end

def stock_count(petshop)
  stock = petshop[:pets].length
  return stock
end

def pets_by_breed(petshop, breed)
  pets_of_that_breed = []
  for pet in petshop[:pets]
    if pet[:breed] == breed
      pets_of_that_breed << pet
    end
  end
  return pets_of_that_breed
end

def find_pet_by_name(petshop, name)
  pets_of_that_name = []
  for pet in petshop[:pets]
    if pet[:name] == name
      pets_of_that_name << pet
    end
  end
  return pets_of_that_name[0]
end

def remove_pet_by_name(petshop, name)
  pet_by_name = find_pet_by_name(petshop, name)
  petshop[:pets].delete(pet_by_name)
end

def add_pet_to_stock(petshop, newpet)
  petshop[:pets] << newpet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, newpet)
  customer[:pets] << newpet
end

def customer_can_afford_pet(customer, newpet)
  if (customer[:cash] < newpet[:price])
    return false
  else
    return true
  end
end

def sell_pet_to_customer(petshop, pet, customer)
  if (pet != nil) && (customer_can_afford_pet(customer, pet) == true)
    add_pet_to_customer(customer, pet)
    increase_pets_sold(petshop, 1)
    remove_customer_cash(customer, pet[:price])
    add_or_remove_cash(petshop, pet[:price])
  end
end
