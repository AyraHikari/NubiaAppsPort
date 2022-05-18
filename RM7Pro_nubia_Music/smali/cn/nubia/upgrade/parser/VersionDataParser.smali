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
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    :cond_0
    const-string v0, "VersionDataParser"

    const-string v2, "Json Null or Empty!!!"

    invoke-static {v0, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 118
    :cond_1
    :goto_0
    return-object v0

    .line 23
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 25
    if-nez v3, :cond_10

    .line 26
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 28
    new-instance v0, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {v0}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    const-string v1, "update"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 33
    const-string v1, "update"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 37
    :goto_1
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V

    .line 38
    if-eqz v1, :cond_1

    .line 42
    const-string v1, "upgrade_time"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 43
    const-string v1, "upgrade_time"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeTime(Ljava/lang/String;)V

    .line 47
    :cond_3
    const-string v1, "upgrade_content"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    const-string v1, "upgrade_content"

    .line 49
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeContent(Ljava/lang/String;)V

    .line 53
    :cond_4
    const-string v1, "apk_url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 54
    const-string v1, "apk_url"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setApkUrl(Ljava/lang/String;)V

    .line 56
    if-eqz v1, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 57
    :cond_5
    const-string v1, "VersionDataParser"

    const-string v2, "versionData no apk_url empty"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_6
    :goto_2
    const-string v1, "version"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 64
    const-string v1, "version"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setVersion(Ljava/lang/String;)V

    .line 68
    :cond_7
    const-string v1, "check_sum_new"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 69
    const-string v1, "check_sum_new"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumNew(Ljava/lang/String;)V

    .line 72
    :cond_8
    const-string v1, "from_version_code"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 73
    const-string v1, "from_version_code"

    .line 74
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setFromVersionCode(Ljava/lang/String;)V

    .line 77
    :cond_9
    const-string v1, "to_version_code"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 78
    const-string v1, "to_version_code"

    .line 79
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setToVersionCode(Ljava/lang/String;)V

    .line 82
    :cond_a
    const-string v1, "is_force"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 83
    const-string v1, "is_force"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setIsForce(Z)V

    .line 86
    :cond_b
    const-string v1, "check_sum_patch"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 87
    const-string v1, "check_sum_patch"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumPatch(Ljava/lang/String;)V

    .line 90
    :cond_c
    const-string v1, "file_size"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 91
    const-string v1, "file_size"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 92
    invoke-virtual {v0, v4, v5}, Lcn/nubia/upgrade/model/VersionData;->setFileSize(J)V

    .line 94
    :cond_d
    const-string v1, "package_name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 95
    const-string v1, "package_name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setPackageName(Ljava/lang/String;)V

    .line 98
    :cond_e
    const-string v1, "silent_flag"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "silent_flag"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setSilentFlag(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 114
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 115
    const-string v1, "VersionDataParser"

    const-string v2, "ParseJson Error!!!"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_f
    :try_start_2
    const-string v1, "VersionDataParser"

    const-string v2, "versionData no apk_url error!"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 102
    :cond_10
    const/16 v2, 0x7d4

    if-ne v3, v2, :cond_11

    .line 104
    :try_start_3
    new-instance v0, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {v0}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 105
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 108
    :cond_11
    :try_start_5
    const-string v2, "VersionDataParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "message"

    .line 109
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v2, v0}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    goto/16 :goto_0

    .line 112
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_3

    :cond_12
    move v1, v2

    goto/16 :goto_1
.end method
