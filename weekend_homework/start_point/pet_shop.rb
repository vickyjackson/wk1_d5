#
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
  return pets_of_that_name[0][:name]
end

# def remove_pet_by_name(petshop, name)
#   pet_by_name = find_pet_by_name(petshop, name)
#   # petshop[:pets].delete(pet_by_name)
# end
