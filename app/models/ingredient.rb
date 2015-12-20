class Ingredient < ActiveRecord::Base

  has_many :recipes
  has_many :dishes, through: :recipes


# trying to get nutritional data from ingredients through the usda api... it's tough to comb through the results...
  def nutrition(name)
    # search = name.gsub(" ", "%20")
    # ndbno_search = HTTParty.get("http://api.nal.usda.gov/ndb/search/?format=json&q=#{search}&sort=n&subset=1&max=1&offset=0&api_key=7LD6bL2gle0SGdpIOV5vQbh7df5UvfgGG6DUkEGP&fg=0500&fg=0100")
    # result = HTTParty.get("http://api.nal.usda.gov/ndb/nutrients/?format=json&api_key=7LD6bL2gle0SGdpIOV5vQbh7df5UvfgGG6DUkEGP&nutrients=205&nutrients=204&nutrients=208&nutrients=269&ndbno=#{search}")
    # facts = JSON.parse(result.body)
    return
  end


end


# nutritionix api:

# HTTParty.get("https://api.nutritionix.com/v1_1/search/#{search}?fields=item_name%2Citem_id%2Cbrand_name%2Cnf_calories%2Cnf_total_fat&appId=4ec2ae00 &appKey=6b308af5c0161c968a338462487da5e8")


# usda api:
# facts = HTTParty.get("http://api.nal.usda.gov/ndb/nutrients/?format=json&api_key=7LD6bL2gle0SGdpIOV5vQbh7df5UvfgGG6DUkEGP&nutrients=205&nutrients=204&nutrients=208&nutrients=269&ndbno=#{ndbno}")
# fields = facts["hits"][0]["fields"]

# ndbno_search = HTTParty.get("http://api.nal.usda.gov/ndb/search/?format=json&q=#{search}
#   &sort=n
#   &fg=poultry%20products
#   &fg=fats%20oils
#   &fg=legumes%20and%20legume%20products
#   &fg=sausages%20luncheon%20meats
#   &fg=soups%2C%20sauces%2C%20and%20gravies
#   &subset=1
#   &max=1
#   &offset=0
#   &api_key=7LD6bL2gle0SGdpIOV5vQbh7df5UvfgGG6DUkEGP"
#   )
