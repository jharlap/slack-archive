# IRC (Slack) Archive Bot

Demonstrates using ELK to run a simple archive bot that can connect to a secure IRC server, with archives accessible via Kibana.

Copy docker-compose.yml.example to docker-compose.yml and update the environment variables accordingly. If using with Slack, enable the secure IRC gateway for your team and add a new user to be the bot to use, otherwise oddities should be expected.

Once the bot is running, invite it into any channels you want archived, and browse/search the archive by going to http://localhost:5601. The first time you go there, you need to configure kibana to use `slack-*` as the indices.
