class TipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

  def create
    @tip       = Tip.new(tip_params)
    @tip.state = "pending"
    @tip.user  = current_user

    @performer_profile     = PerformerProfile.find(params[:performer_profile_id])
    @tip.performer_profile = @performer_profile
    @tip.save!

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "tip-performer-#{@performer_profile.id}",
        # images: [teddy.photo_url],
        amount: @tip.amount_cents,
        currency: 'usd',
        quantity: 1
      }],
      success_url: "#{request.referer}?tip=success",
      cancel_url: "#{request.referer}?tip=fail"
    )

    @tip.update!(checkout_session_id: session.id)
    redirect_to new_tip_payment_path(@tip)
  end

  def new
    if params[:tip] == "success"
      flash[:notice] = "Tip Successful"
    end

    @performer = User.find(params[:performer_id])
  end

  private

  def tip_params
    params.require(:tip).permit(:amount)
  end
end
