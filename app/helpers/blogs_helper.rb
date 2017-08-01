module BlogsHelper
  def gravatar_helper user
    image_tag "https://en.gravatar.com/userimage/125712839/49e26ea8781d5601750a602ec9bca0a0.jpg", width: 60
  end
  
  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div
    end
  end
  
  def markdown(text)
    coderayified = CodeRayify.new(filter_html: true, hard_wrap: true)\
    
    options = {
      fenced_code_blocks: true, 
      no_intra_emphasis: true,
      autolink: true, 
      lax_html_blocks: true
    }
    
    markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
    markdown_to_html.render(text).html_safe
  end
end