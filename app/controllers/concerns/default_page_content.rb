module DefaultPageContent
  extend ActiveSupport::Concern

  included do before_action :set_defaults
  end

  def set_defaults
    @page_title = "My Portfolio App | Personnal website"
    @seo_keywords = "Christophe Panon portfolio"
  end

end
