require 'json'
require 'open-uri'
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ing_serialized = JSON.parse(open(url).read)
ing_serialized['drinks'].each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end

cocktail1 = Cocktail.new(name: "Mojito")
cocktail1.save!
c1dose1 = Dose.new(description: "1 1/2 oz White rum", ingredient: Ingredient.find_by(name: "Lime juice"), cocktail: cocktail1)
c1dose2 = Dose.new(description: "200ml of Water", ingredient: Ingredient.find_by(name: "Water"), cocktail: cocktail1)
c1dose3 = Dose.new(description: "Sugar syrup to your liking", ingredient: Ingredient.find_by(name: "Sugar syrup"), cocktail: cocktail1)
c1dose4 = Dose.new(description: "A slice of lemon", ingredient: Ingredient.find_by(name: "Lemon"), cocktail: cocktail1)
c1dose1.save!
c1dose2.save!
c1dose3.save!
c1dose4.save!
cocktail2 = Cocktail.new(name: "Calpirinia")
cocktail2.save!
c2dose1 = Dose.new(description: "1 1/2 oz of Pisco", ingredient: Ingredient.find_by(name: "Pisco"), cocktail: cocktail2)
c2dose2 = Dose.new(description: "100ml of cold Water", ingredient: Ingredient.find_by(name: "Water"), cocktail: cocktail2)
c2dose3 = Dose.new(description: "2 cups of Triple sec", ingredient: Ingredient.find_by(name: "Triple sec"), cocktail: cocktail2)
c2dose4 = Dose.new(description: "A slice of lemon for decoration", ingredient: Ingredient.find_by(name: "Lemon"), cocktail: cocktail2)
c2dose5 = Dose.new(description: "A table spoon of Orange bitters", ingredient: Ingredient.find_by(name: "Orange bitters"), cocktail: cocktail2)
c2dose1.save!
c2dose2.save!
c2dose3.save!
c2dose4.save!
c2dose5.save!
