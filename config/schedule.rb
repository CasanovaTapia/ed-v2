every 10.minutes do
  rake "searchkick:reindex CLASS=Profile"
end
