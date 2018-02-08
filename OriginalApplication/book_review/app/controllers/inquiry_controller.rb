class InquiryController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    Inquiry.create(inquiry_params)
    redirect_to root_path
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:email, :user_name, :target_url, :inquiry_text)
  end
end
