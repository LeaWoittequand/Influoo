class InfluencerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.influencer_mailer.creation_confirmation.subject
  #
  # def creation_confirmation
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  def creation_confirmation(influencer)
    @influencer = influencer

    mail(
      to:       @influencer.email,
      subject:  "Influencer #{@influencer.first_name} created!"
    )
  end

end
