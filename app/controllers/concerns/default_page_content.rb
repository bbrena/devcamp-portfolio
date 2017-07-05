module DefaultPageContent
    extend ActiveSupport::Concern
  
  included do
      before_filter :set_page_defaults 
  end
  
    def set_page_defaults 
      @page_title  = "Brena B.'s Website"
      @seo_keywords = "Devcamp Portfolio"
  end
end