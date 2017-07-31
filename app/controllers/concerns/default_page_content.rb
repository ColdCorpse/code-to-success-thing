module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_title
  end
  def set_title
  @page_title = " my website things"
  @seo_keywords = "Test_User portfolio"
  end
end