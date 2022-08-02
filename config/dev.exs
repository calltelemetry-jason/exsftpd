import Config

config :exsftpd, Exsftpd.Server,
  port: 2222,
  # root dir for <username>: /tmp/users/<username>/files
  user_root_dir: fn user -> "/tmp/users/#{user}/files" end,
  # look for authorized_keys at /tmp/users/<username>/.ssh
  user_auth_dir: "/Users/",
  # Where to look for ssh host keys
  system_dir: "/tmp/ssh",
  event_handler: fn event -> IO.puts("Event: #{inspect(event)} ") end
