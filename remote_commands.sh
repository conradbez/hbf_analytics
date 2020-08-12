dokku apps:create hbf


# sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
dokku postgres:create hbf

dokku postgres:link hbf hbf