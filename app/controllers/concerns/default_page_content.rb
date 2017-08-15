module DefaultPageContent
    extend ActiveSupport::Concern
  
  included do
      before_filter :set_page_defaults 
  end
  
    def set_page_defaults 
      @page_title  = "Construction Cost Estimating Consulting Estimate Firm"
      @seo_keywords = "Cost Engineers, Inc."
  end
end