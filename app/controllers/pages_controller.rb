class PagesController < ApplicationController
<<<<<<< HEAD
=======
  skip_before_action :authenticate_user!, only: :home
>>>>>>> 64fc60e9068844cc35a38ae6c4464f89537b4b25

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
