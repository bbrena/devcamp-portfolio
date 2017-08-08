module DefaultPageContent
    extend ActiveSupport::Concern
  
  included do
      before_filter :set_page_defaults 
  end
  
    def set_page_defaults 
      @page_title  = "Beading Brena's Jewelry"
      @seo_keywords = "Beading Brena's Jewelry"
  end
end