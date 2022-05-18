.class public Lcn/nubia/upgrade/parser/VersionDataParser;
.super Ljava/lang/Object;
.source "VersionDataParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VersionDataParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;
    .locals 23
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 19
    :cond_0
    const-string v20, "VersionDataParser"

    const-string v21, "Json Null or Empty!!!"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const/16 v19, 0x0

    .line 113
    :cond_1
    :goto_0
    return-object v19

    .line 22
    :cond_2
    const/16 v18, 0x0

    .line 24
    .local v18, "versionData":Lcn/nubia/upgrade/model/VersionData;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .local v12, "object":Lorg/json/JSONObject;
    const-string v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 26
    .local v5, "code":I
    if-nez v5, :cond_10

    .line 27
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 29
    .local v11, "jsonObject":Lorg/json/JSONObject;
    new-instance v19, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct/range {v19 .. v19}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    .end local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .local v19, "versionData":Lcn/nubia/upgrade/model/VersionData;
    const/4 v14, 0x0

    .line 32
    .local v14, "update":Z
    :try_start_1
    const-string v20, "update"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 34
    const-string v20, "update"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 38
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V

    .line 39
    if-eqz v14, :cond_1

    .line 43
    const-string v20, "upgrade_time"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 44
    const-string v20, "upgrade_time"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 45
    .local v15, "updgradeTime":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeTime(Ljava/lang/String;)V

    .line 48
    .end local v15    # "updgradeTime":Ljava/lang/String;
    :cond_4
    const-string v20, "upgrade_content"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 49
    const-string v20, "upgrade_content"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 51
    .local v16, "upgradeContent":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeContent(Ljava/lang/String;)V

    .line 54
    .end local v16    # "upgradeContent":Ljava/lang/String;
    :cond_5
    const-string v20, "apk_url"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 55
    const-string v20, "apk_url"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "apkurl":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/model/VersionData;->setApkUrl(Ljava/lang/String;)V

    .line 57
    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 58
    :cond_6
    const-string v20, "VersionDataParser"

    const-string v21, "versionData no apk_url empty"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v2    # "apkurl":Ljava/lang/String;
    :cond_7
    :goto_1
    const-string v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 65
    const-string v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 66
    .local v17, "version":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setVersion(Ljava/lang/String;)V

    .line 69
    .end local v17    # "version":Ljava/lang/String;
    :cond_8
    const-string v20, "check_sum_new"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 70
    const-string v20, "check_sum_new"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "checkSumNew":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumNew(Ljava/lang/String;)V

    .line 73
    .end local v3    # "checkSumNew":Ljava/lang/String;
    :cond_9
    const-string v20, "from_version_code"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 74
    const-string v20, "from_version_code"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "fromVersionCode":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcn/nubia/upgrade/model/VersionData;->setFromVersionCode(Ljava/lang/String;)V

    .line 78
    .end local v7    # "fromVersionCode":Ljava/lang/String;
    :cond_a
    const-string v20, "to_version_code"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 79
    const-string v20, "to_version_code"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 81
    .local v13, "toVersionCode":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcn/nubia/upgrade/model/VersionData;->setToVersionCode(Ljava/lang/String;)V

    .line 83
    .end local v13    # "toVersionCode":Ljava/lang/String;
    :cond_b
    const-string v20, "is_force"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 84
    const-string v20, "is_force"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 85
    .local v10, "isForce":Z
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcn/nubia/upgrade/model/VersionData;->setIsForce(Z)V

    .line 87
    .end local v10    # "isForce":Z
    :cond_c
    const-string v20, "check_sum_patch"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 88
    const-string v20, "check_sum_patch"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "checkSumPatch":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumPatch(Ljava/lang/String;)V

    .line 92
    .end local v4    # "checkSumPatch":Ljava/lang/String;
    :cond_d
    const-string v20, "file_size"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 93
    const-string v20, "file_size"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 94
    .local v8, "fileSize":J
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcn/nubia/upgrade/model/VersionData;->setFileSize(J)V

    .end local v8    # "fileSize":J
    :cond_e
    move-object/from16 v18, v19

    .end local v5    # "code":I
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "object":Lorg/json/JSONObject;
    .end local v14    # "update":Z
    .end local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .restart local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :goto_2
    move-object/from16 v19, v18

    .line 113
    goto/16 :goto_0

    .line 62
    .end local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .restart local v5    # "code":I
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "object":Lorg/json/JSONObject;
    .restart local v14    # "update":Z
    .restart local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :cond_f
    const-string v20, "VersionDataParser"

    const-string v21, "versionData no apk_url error!"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 107
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "update":Z
    :catch_0
    move-exception v6

    move-object/from16 v18, v19

    .line 109
    .end local v5    # "code":I
    .end local v12    # "object":Lorg/json/JSONObject;
    .end local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .local v6, "e":Lorg/json/JSONException;
    .restart local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    const-string v20, "VersionDataParser"

    const-string v21, "ParseJson Error!!!"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 97
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v5    # "code":I
    .restart local v12    # "object":Lorg/json/JSONObject;
    :cond_10
    const/16 v20, 0x7d4

    move/from16 v0, v20

    if-ne v5, v0, :cond_11

    .line 99
    :try_start_2
    new-instance v19, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct/range {v19 .. v19}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 100
    .end local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .restart local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    const/16 v20, 0x0

    :try_start_3
    invoke-virtual/range {v19 .. v20}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v18, v19

    .end local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .restart local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    goto :goto_2

    .line 103
    :cond_11
    :try_start_4
    const-string v20, "VersionDataParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "code is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "message"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 107
    .end local v5    # "code":I
    .end local v12    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    goto :goto_3
.end method
