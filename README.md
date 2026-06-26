# setup

```bash
# clone repo and skin as submodule
git clone --recurse-submodules git@github.com:TheRaphael0000/ch.tahm-ken-wiki.git

# create the env file
cp .env_sample .env

# fill .env, generate secrets with, for example: python -c "import secrets; print(secrets.token_urlsafe(30))"
vim .env

# download latest datadragon
bash ./datadragon.sh

# start server
docker compose up -d

# load config
docker compose exec -it mediawiki php maintenance/run.php installPreConfigured

# create account
docker compose exec -it mediawiki php maintenance/run.php createAndPromote --sysop --bureaucrat "YourAdminUsername" "YourChosenPassword"

# import datadragon
for folder in "img/challenges-images" "version/img/champion"; do;
    docker compose exec -it mediawiki php maintenance/run.php importImages --overwrite --comment "" /datadragon/$folder
done
```

# run

```bash
docker compose up -d
```
