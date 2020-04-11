# Rocket.Chat deployment on Clever-Cloud

To deploy Rocket.Chat on Clever-Cloud.

1. Fork this git repo unless you work for Delta Projects.
1. Create a app from this git repo of type node.js with a mongodb addon(must be dedicated cause of oplog tailing).
1. Ask support to enable oplog for your mongodb instance.
1. Set your app to use a dedicated build scaler with size "S" at least.
1. Add a custom domain (optional).
1. Add environment variables below.

```bash
MONGO_OPLOG_URL="mongodb://${MONGODB_ADDON_USER}:${MONGODB_ADDON_PASSWORD}@${MONGODB_ADDON_HOST}:${MONGODB_ADDON_PORT}/local?authSource=${MONGODB_ADDON_DB}"
MONGO_URL="mongodb://${MONGODB_ADDON_USER}:${MONGODB_ADDON_PASSWORD}@${MONGODB_ADDON_HOST}:${MONGODB_ADDON_PORT}/${MONGODB_ADDON_DB}"
NODE_ENV="production"
PORT="8080"
RC_VERSION="3.1.0"
ROOT_URL="https://chat.MYAWESOMEDOMAIN.com"
```

Update *RC_VERSION* to the version of Rocket.Chat you wish to run.  
Update MONGO_OPLOG_URL and MONGO_URL according to your addon variables.  
Update ROOT_URL to the URL address you wish your users to connect to Rocket.Chat.

Now **Re-build and start** your app.
