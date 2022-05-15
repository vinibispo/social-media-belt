class App::Links::IndexController < ApplicationController
  def call
    link = Link.new
    render 'app/links', locals: { link: }
  end
end

class Link
  include ActiveModel::Model
end
