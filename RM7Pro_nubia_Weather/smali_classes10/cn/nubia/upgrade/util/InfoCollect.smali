.class public Lcn/nubia/upgrade/util/InfoCollect;
.super Ljava/lang/Object;
.source "InfoCollect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoCollect"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneParameter(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v3, "phoneParameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Lcn/nubia/upgrade/util/CommonUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "imei":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getRom()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "rom":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getMobileType()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "mobileType":Ljava/lang/String;
    const-string v5, "InfoCollect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPhoneParameter:IMEI:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ROM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mobileType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v5, "imei"

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v5, "rom"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v5, "mobile_type"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "mobileType":Ljava/lang/String;
    .end local v4    # "rom":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const-string v5, "InfoCollect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch an exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v7, 0x0

    .line 116
    .local v7, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 118
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 120
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 121
    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "unique_key"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "uni_key":Ljava/lang/String;
    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 123
    .local v11, "versionCode":I
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v12}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "checkSum":Ljava/lang/String;
    new-instance v8, Lcn/nubia/upgrade/model/PostApkInfo;

    invoke-direct {v8}, Lcn/nubia/upgrade/model/PostApkInfo;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 125
    .end local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .local v8, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :try_start_1
    invoke-virtual {v8, v1}, Lcn/nubia/upgrade/model/PostApkInfo;->setCheckSum(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v8, v10}, Lcn/nubia/upgrade/model/PostApkInfo;->setUniqueKey(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v8, v11}, Lcn/nubia/upgrade/model/PostApkInfo;->setVersionCode(I)V

    .line 128
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcn/nubia/upgrade/model/PostApkInfo;->setVersionName(Ljava/lang/String;)V

    .line 129
    const/4 v9, 0x0

    .line 130
    .local v9, "rom":Ljava/lang/String;
    const/4 v5, 0x0

    .line 131
    .local v5, "mobileType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 132
    .local v3, "imei":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 134
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcn/nubia/upgrade/util/CommonUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string v12, "imei"

    invoke-virtual {v4, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getRom()Ljava/lang/String;

    move-result-object v9

    .line 151
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getMobileType()Ljava/lang/String;

    move-result-object v5

    .line 153
    const-string v12, "rom"

    invoke-virtual {v4, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v12, "mobile_type"

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 166
    const-string v12, "InfoCollect"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPostApkInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v8

    .end local v1    # "checkSum":Ljava/lang/String;
    .end local v3    # "imei":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "mobileType":Ljava/lang/String;
    .end local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v9    # "rom":Ljava/lang/String;
    .end local v10    # "uni_key":Ljava/lang/String;
    .end local v11    # "versionCode":I
    .restart local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :cond_0
    :goto_0
    move-object v12, v7

    .line 174
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v12

    .line 155
    .end local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "checkSum":Ljava/lang/String;
    .restart local v3    # "imei":Ljava/lang/String;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "mobileType":Ljava/lang/String;
    .restart local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v9    # "rom":Ljava/lang/String;
    .restart local v10    # "uni_key":Ljava/lang/String;
    .restart local v11    # "versionCode":I
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 157
    const-string v12, "InfoCollect"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    :try_start_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 166
    const-string v12, "InfoCollect"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPostApkInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v7, v8

    .line 167
    .end local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    goto :goto_0

    .line 158
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :catch_1
    move-exception v2

    .line 159
    .local v2, "e":Lorg/json/JSONException;
    :try_start_6
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    const-string v12, "InfoCollect"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    :try_start_7
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 166
    const-string v12, "InfoCollect"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPostApkInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v7, v8

    .line 167
    .end local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    goto :goto_0

    .line 161
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :catch_2
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string v12, "InfoCollect"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 165
    :try_start_9
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 166
    const-string v12, "InfoCollect"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPostApkInfo:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 167
    .end local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    goto/16 :goto_0

    .line 165
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :catchall_0
    move-exception v12

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 166
    const-string v13, "InfoCollect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getPostApkInfo:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v12
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3

    .line 169
    .end local v3    # "imei":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "mobileType":Ljava/lang/String;
    .end local v9    # "rom":Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v7, v8

    .line 170
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "checkSum":Ljava/lang/String;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v10    # "uni_key":Ljava/lang/String;
    .end local v11    # "versionCode":I
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :goto_2
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 171
    const-string v12, "InfoCollect"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 169
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static getUniqueKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 78
    .local v2, "manager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 80
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, ""

    .line 81
    .local v3, "uni_key":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "unique_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 88
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    .end local v3    # "uni_key":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "InfoCollect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch an exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 100
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InfoCollect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUniqueKey exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/NuLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, ""

    goto :goto_0
.end method
