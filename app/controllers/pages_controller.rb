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
    @payment_method = Payment_method.find(params[:id])
    @payment_method.update(payment_method_params)


  end

# John's job
  # def show_partner_invoice
  #   @partner_invoice = Partner_invoice.find(params[:id])
  # end

  private

  def payment_method_params
    params.require(:payment_method).permit()
  end
end
