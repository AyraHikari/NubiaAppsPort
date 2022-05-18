.class public Lcn/nubia/upgrade/parser/VersionDataParser;
.super Ljava/lang/Object;
.source "VersionDataParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VersionDataParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;
    .locals 23
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 18
    :cond_0
    const-string v20, "VersionDataParser"

    const-string v21, "Json Null or Empty!!!"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const/16 v19, 0x0

    .line 118
    :cond_1
    :goto_0
    return-object v19

    .line 21
    :cond_2
    const/16 v18, 0x0

    .line 23
    .local v18, "versionData":Lcn/nubia/upgrade/model/VersionData;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .local v12, "object":Lorg/json/JSONObject;
    const-string v20, "code"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 25
    .local v5, "code":I
    if-nez v5, :cond_12

    .line 26
    const-string v20, "data"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 28
    .local v11, "jsonObject":Lorg/json/JSONObject;
    new-instance v19, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct/range {v19 .. v19}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    .end local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .local v19, "versionData":Lcn/nubia/upgrade/model/VersionData;
    const/4 v14, 0x0

    .line 31
    .local v14, "update":Z
    :try_start_1
    const-string v20, "update"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 33
    const-string v20, "update"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 37
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V

    .line 38
    if-eqz v14, :cond_1

    .line 42
    const-string v20, "upgrade_time"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 43
    const-string v20, "upgrade_time"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 44
    .local v15, "updgradeTime":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeTime(Ljava/lang/String;)V

    .line 47
    .end local v15    # "updgradeTime":Ljava/lang/String;
    :cond_4
    const-string v20, "upgrade_content"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 48
    const-string v20, "upgrade_content"

    .line 49
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 50
    .local v16, "upgradeContent":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeContent(Ljava/lang/String;)V

    .line 53
    .end local v16    # "upgradeContent":Ljava/lang/String;
    :cond_5
    const-string v20, "apk_url"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 54
    const-string v20, "apk_url"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "apkurl":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcn/nubia/upgrade/model/VersionData;->setApkUrl(Ljava/lang/String;)V

    .line 56
    if-eqz v2, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 57
    :cond_6
    const-string v20, "VersionDataParser"

    const-string v21, "versionData no apk_url empty"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v2    # "apkurl":Ljava/lang/String;
    :cond_7
    :goto_1
    const-string v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 64
    const-string v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 65
    .local v17, "version":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setVersion(Ljava/lang/String;)V

    .line 68
    .end local v17    # "version":Ljava/lang/String;
    :cond_8
    const-string v20, "check_sum_new"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 69
    const-string v20, "check_sum_new"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "checkSumNew":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumNew(Ljava/lang/String;)V

    .line 72
    .end local v3    # "checkSumNew":Ljava/lang/String;
    :cond_9
    const-string v20, "from_version_code"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 73
    const-string v20, "from_version_code"

    .line 74
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "fromVersionCode":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcn/nubia/upgrade/model/VersionData;->setFromVersionCode(Ljava/lang/String;)V

    .line 77
    .end local v7    # "fromVersionCode":Ljava/lang/String;
    :cond_a
    const-string v20, "to_version_code"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 78
    const-string v20, "to_version_code"

    .line 79
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 80
    .local v13, "toVersionCode":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcn/nubia/upgrade/model/VersionData;->setToVersionCode(Ljava/lang/String;)V

    .line 82
    .end local v13    # "toVersionCode":Ljava/lang/String;
    :cond_b
    const-string v20, "is_force"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 83
    const-string v20, "is_force"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 84
    .local v10, "isForce":Z
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcn/nubia/upgrade/model/VersionData;->setIsForce(Z)V

    .line 86
    .end local v10    # "isForce":Z
    :cond_c
    const-string v20, "check_sum_patch"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 87
    const-string v20, "check_sum_patch"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "checkSumPatch":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumPatch(Ljava/lang/String;)V

    .line 90
    .end local v4    # "checkSumPatch":Ljava/lang/String;
    :cond_d
    const-string v20, "file_size"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 91
    const-string v20, "file_size"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 92
    .local v8, "fileSize":J
    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lcn/nubia/upgrade/model/VersionData;->setFileSize(J)V

    .line 94
    .end local v8    # "fileSize":J
    :cond_e
    const-string v20, "package_name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 95
    const-string v20, "package_name"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcn/nubia/upgrade/model/VersionData;->setPackageName(Ljava/lang/String;)V

    .line 98
    :cond_f
    const-string v20, "silent_flag"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 99
    const-string v20, "silent_flag"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcn/nubia/upgrade/model/VersionData;->setSilentFlag(I)V

    :cond_10
    move-object/from16 v18, v19

    .end local v5    # "code":I
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "object":Lorg/json/JSONObject;
    .end local v14    # "update":Z
    .end local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .restart local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :goto_2
    move-object/from16 v19, v18

    .line 118
    goto/16 :goto_0

    .line 61
    .end local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .restart local v5    # "code":I
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "object":Lorg/json/JSONObject;
    .restart local v14    # "update":Z
    .restart local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :cond_11
    const-string v20, "VersionDataParser"

    const-string v21, "versionData no apk_url error!"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 112
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "update":Z
    :catch_0
    move-exception v6

    move-object/from16 v18, v19

    .line 114
    .end local v5    # "code":I
    .end local v12    # "object":Lorg/json/JSONObject;
    .end local v19    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    .local v6, "e":Lorg/json/JSONException;
    .restart local v18    # "versionData":Lcn/nubia/upgrade/model/VersionData;
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    const-string v20, "VersionDataParser"

    const-string v21, "ParseJson Error!!!"

    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 102
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v5    # "code":I
    .restart local v12    # "object":Lorg/json/JSONObject;
    :cond_12
    const/16 v20, 0x7d4

    move/from16 v0, v20

    if-ne v5, v0, :cond_13

    .line 104
    :try_start_2
    new-instance v19, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct/range {v19 .. v19}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
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

    .line 108
    :cond_13
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

    .line 109
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 108
    invoke-static/range {v20 .. v21}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 112
    .end local v5    # "code":I
    .end local v12    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    goto :goto_3
.end method
