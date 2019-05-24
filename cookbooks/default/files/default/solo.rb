cookbook_path		"#{ENV['HOME']}/Source/dotfiles/cookbooks"
file_backup_path	"#{ENV['HOME']}/.chef/backups"
file_cache_path		"#{ENV['HOME']}/.chef/cache"
cache_type 		"BasicFile"
cache_options		:path => "#{ENV['HOME']}/.chef/checksums"
data_bag_path           "#{ENV['HOME']}/Source/dotfiles/data_bags"
