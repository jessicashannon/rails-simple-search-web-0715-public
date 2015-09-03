class Search
  def self.for(query)
    if Word.find_by(name: "#{query}")
      [Word.find_by(name: "#{query}")]
    else
      Word.where("name LIKE ?", "%#{query}%")
    end
  end
end
