class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    Inquiry.create(inquiry_params)
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:email, :user_name, :target_url, :inquiry_text)
  end
end
