class Shortener < ApplicationRecord

    attr_accessor :hoster 

    @hoster = ""

    before_create { 
    self.Code = get_encrypted_code
    self.ShortenedUrl = "http://localhost:3001/#{self.Code}"
    if self.BaseUrl.include?("https://")
        self.BaseUrl.gsub!("https://", "")
    end
    if self.BaseUrl.include?("http://")
        self.BaseUrl.gsub!("https://", "")
    end}


    validates_uniqueness_of :ShortenedUrl
    validates_presence_of :BaseUrl



    private 

    def get_encrypted_code(i=6)
        SecureRandom.uuid[0..i]
    end

end
