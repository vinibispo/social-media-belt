class TenantHome::IndexController < ApplicationController
  def call
    render 'publics/tenant_home'
  end
end
