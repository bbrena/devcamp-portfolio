module BlogsHelper
  def gravatar_helper user
    image_tag "https://en.gravatar.com/userimage/125712839/49e26ea8781d5601750a602ec9bca0a0.jpg", width: 60
  end
end