module DefaultPageContent
    extend ActiveSupport::Concern
  
  included do
      before_filter :set_page_defaults 
  end
  
    def set_page_defaults 
      @page_title  = "Cost Engineers, Inc. Website"
      @seo_keywords = "Cost Engineers, Inc."
  end
end