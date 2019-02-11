class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@event-brite-project.fr'

  def attendant_email(attendance)
    #on récupère l'instance Attendance
    @attendance = attendance

    #on récupère l'instance de Event
    @event = Event.find(@attendance.event_id)

    #on récupère l'instance User avec l'admin
    @admin = User.find(Event.find(@attendance.event_id).admin_id)

    #on récupère l'instance User avec le participant
    @participant = User.find(@attendance.participant_id)

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://event-brite-project.fr/' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @admin.email, subject: 'Un nouveau participant !')
  end
end
