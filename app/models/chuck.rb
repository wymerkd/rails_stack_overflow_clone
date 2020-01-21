
class Chuck
  def self.get_chuck
    response = HTTParty.get('http://api.icndb.com/jokes/random?firstName=Robert&lastName=Smith')
    response["value"]["joke"]
  end
end
