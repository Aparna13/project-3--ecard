
# class UserMailer < MandrillMailer::TemplateMailer
#   default from: 'support@example.com'

#   def share(ecard)
#     mandrill_mail(
#       template: 'ecard',
#       subject: "You got a card!",
#       to: ecard.recipient,
#         # to: invitation.email,
#         # to: { email: invitation.email, name: 'Honored Guest' },
#       vars: {
#         'RECIPIENT_NAME' => ecard.recipient,
#         'ECARD_URL' => ecard.url
#       },
#       important: true,
#       inline_css: true
#       # recipient_vars: invitation.invitees.map do |invitee|
#       #   { invitee.email =>
#       #     {
#       #       'INVITEE_NAME' => invitee.name,
#       #       'INVITATION_URL' => new_invitation_url(
#       #         invitee.email,
#       #         secret: invitee.secret_code
#       #       )
#       #     }
#       #   }
#       # end
#      )
#   end
# end
