# frozen_string_literal: true

class LinkMenuComponent < ViewComponent::Base
  attr_reader :href

  def initialize(href:)
    @href = href
  end

  def visited
    helpers.current_page? href
  end
end
