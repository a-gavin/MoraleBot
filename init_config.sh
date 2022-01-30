# Usage: init_config.sh DISCORD_BOT_ID OWNER_ID MONGO_URI CLIENT_ID
echo                                                    \
    {                                                   \
        \"token\" : \"$1\",                             \
        \"prefix\" : \"!\",                             \
        \"dailyAmount\": 500,                           \
        \"dailyMultiplier\" : 1.5,                      \
        \"ownerId\" : \"$2\",                           \
        \"mongoURI\" : \"$3\",                          \
        \"botChannelId\" : \"571250035086589973\",      \
        \"generalChannelId\" : \"570359349474492428\",  \
        \"boostedRoleId\" : \"867879384279285810\",     \
        \"devRoleId\": \"594078142495326213\",          \
        \"lurkerRoleId\" : \"672982961708335114\",      \
        \"clientId\" : \"$4\",                          \
        \"guildId\" : \"570359349474492426\",           \
        \"freebieAmount\" : 50                          \
    }                                                   \
> config.json