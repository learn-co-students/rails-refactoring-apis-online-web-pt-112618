class GithubRepo
  attr_accessor :name, :html_url

  def initialize(hash)
    hash.each do |key, value|
      self.send("#{key}=", value) if key == "name" || key === "html_url"
    end
  end

  def url
    self.html_url
  end

end
