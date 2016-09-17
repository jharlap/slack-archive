input {
  irc {
    host => "${IRC_HOST}"
    channels => [ "${IRC_CHANNEL}" ]
    nick => "${IRC_USERNAME}"
    user => "${IRC_USERNAME}"
    password => "${IRC_PASSWORD}"
    real => "Archive Bot"
    secure => true
    type => "slack"
  }
}
