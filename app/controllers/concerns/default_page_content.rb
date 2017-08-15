module DefaultPageContent
    extend ActiveSupport::Concern
  
  included do
      before_filter :set_page_defaults 
  end
  
    def set_page_defaults 
      @page_title  = "Cost Engineers Inc. Website"
      @seo_keywords = "cost-engineers, Cost-Engineers, Cost-engineers, cost-Engineers, Cost Engineers, cost Engineers, Cost engineers, Cost-Engineers Inc., Cost-engineers Inc., Cost-engineers inc., cost-engineers inc., cost-engineers Inc."
  end
end