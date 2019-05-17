class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

# Royden's name
  def show_partner_dashboard
  end

# Royden's name
  def edit_payment_method
  end

# John's job
  def update_payment_method
  end

# John's job
  def show_partner_invoices
  end

end
