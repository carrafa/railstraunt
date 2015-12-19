class Ingredient < ActiveRecord::Base

  has_many :recipes
  has_many :dishes, through: :recipes


# trying to get nutritional data from ingredients through the usda api... it's tough to comb through the results...
  def nutrition(name)
    result = HTTParty.get("http://api.nal.usda.gov/ndb/search/?format=json&q=#{name}&sort=n&max=25&offset=0&type=b&api_key=7LD6bL2gle0SGdpIOV5vQbh7df5UvfgGG6DUkEGP")
    facts = JSON.parse(result.body)
    # ndbno = JSON.parse(result.body)['list']['item'][0]['ndbno']
    # facts = HTTParty.get("http://api.nal.usda.gov/ndb/nutrients/?format=json&api_key=7LD6bL2gle0SGdpIOV5vQbh7df5UvfgGG6DUkEGP&nutrients=205&nutrients=204&nutrients=208&nutrients=269&ndbno=#{ndbno}")
    return facts
  end


end
