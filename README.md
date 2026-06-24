# install

```bash
docker compose up -d
docker compose exec -it mediawiki php maintenance/run.php installPreConfigured
docker compose exec -it mediawiki php maintenance/run.php createAndPromote --sysop --bureaucrat "YourAdminUsername" "YourChosenPassword"
```