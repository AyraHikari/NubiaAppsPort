.class final Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;
.super Ljava/lang/Object;
.source "HttpRequestSportsMatches.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getServerSwitch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 228
    const/4 v3, 0x0

    .line 229
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 231
    .local v8, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v14, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "https://config-api.nubia.com/rom/match/get_cards.do"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v14, v0, v1}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->access$000(Ljava/util/Map;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "finalUrl":Ljava/lang/String;
    new-instance v17, Ljava/net/URL;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    .local v17, "url":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 237
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 238
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 239
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 240
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 241
    const/16 v18, 0x1388

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 242
    const-string v18, "GET"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 245
    .local v15, "response":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v15, v0, :cond_9

    .line 246
    invoke-static {v3}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->access$100(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v16

    .line 247
    .local v16, "result":Ljava/lang/String;
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 248
    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v10, "json":Lorg/json/JSONObject;
    const-string v18, "0"

    const-string v19, "code"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "WorldCup":Z
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 252
    .local v11, "jsonArray":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 254
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 255
    .local v12, "jsonItem":Lorg/json/JSONObject;
    new-instance v9, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;

    invoke-direct {v9}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;-><init>()V

    .line 256
    .local v9, "item":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    const-string v18, "id"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 257
    .local v7, "id":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v7, :cond_0

    .line 258
    const/4 v2, 0x1

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "sports_worldcup_status"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->putWorldCupBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 261
    :cond_0
    invoke-virtual {v9, v7}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setId(I)V

    .line 262
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setName(Ljava/lang/String;)V

    .line 263
    const-string v18, "beginTime"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setBeginTime(Ljava/lang/String;)V

    .line 264
    const-string v18, "endTime"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setEndTime(Ljava/lang/String;)V

    .line 265
    const-string v18, "image"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 266
    const-string v18, "image"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setImage(Ljava/lang/String;)V

    .line 270
    :goto_1
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setStatus(Ljava/lang/String;)V

    .line 271
    const-string v18, "updateUser"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setUpdateUser(Ljava/lang/String;)V

    .line 272
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 268
    :cond_1
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->setImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 299
    .end local v2    # "WorldCup":Z
    .end local v5    # "finalUrl":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "id":I
    .end local v9    # "item":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v12    # "jsonItem":Lorg/json/JSONObject;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "response":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 300
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v18, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    const-string v19, "getServerSwitch"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlist()Ljava/util/List;

    .line 303
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    if-eqz v3, :cond_2

    .line 306
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 309
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 274
    .restart local v2    # "WorldCup":Z
    .restart local v5    # "finalUrl":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v10    # "json":Lorg/json/JSONObject;
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    .restart local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "response":I
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_3
    if-nez v2, :cond_4

    .line 275
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "sports_worldcup_status"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->putWorldCupBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 279
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcn/nubia/SportsGameEvents/SportsDB;->replaceServerSwitchData(Ljava/util/List;)V

    .line 285
    .end local v2    # "WorldCup":Z
    .end local v6    # "i":I
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    :goto_3
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 286
    const-string v18, "data"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 288
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_8

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "sports_SPORTSMATCH_status"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->putSportsMatchBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v16    # "result":Ljava/lang/String;
    :cond_5
    :goto_4
    if-eqz v3, :cond_2

    .line 306
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 282
    .restart local v10    # "json":Lorg/json/JSONObject;
    .restart local v16    # "result":Ljava/lang/String;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlist()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 305
    .end local v5    # "finalUrl":Ljava/lang/String;
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "response":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v18

    if-eqz v3, :cond_7

    .line 306
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 308
    :cond_7
    throw v18

    .line 291
    .restart local v5    # "finalUrl":Ljava/lang/String;
    .restart local v10    # "json":Lorg/json/JSONObject;
    .restart local v11    # "jsonArray":Lorg/json/JSONArray;
    .restart local v14    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "response":I
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "url":Ljava/net/URL;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "sports_SPORTSMATCH_status"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->putSportsMatchBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_4

    .line 297
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "jsonArray":Lorg/json/JSONArray;
    .end local v16    # "result":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches$3;->val$context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlist()Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method
