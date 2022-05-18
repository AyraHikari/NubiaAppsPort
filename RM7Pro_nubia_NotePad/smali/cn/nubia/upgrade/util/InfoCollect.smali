.class public Lcn/nubia/upgrade/util/InfoCollect;
.super Ljava/lang/Object;
.source "InfoCollect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPostApkInfo(Landroid/content/Context;)Lcn/nubia/upgrade/model/PostApkInfo;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v11, 0x0

    .line 25
    .local v11, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 28
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 30
    .local v10, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "unique_key"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 32
    .local v15, "uni_key":Ljava/lang/String;
    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v16, v0

    .line 33
    .local v16, "versionCode":I
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "checkSum":Ljava/lang/String;
    new-instance v12, Lcn/nubia/upgrade/model/PostApkInfo;

    invoke-direct {v12}, Lcn/nubia/upgrade/model/PostApkInfo;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    .line 36
    .end local v11    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .local v12, "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :try_start_1
    invoke-virtual {v12, v3}, Lcn/nubia/upgrade/model/PostApkInfo;->setCheckSum(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v12, v15}, Lcn/nubia/upgrade/model/PostApkInfo;->setUniqueKey(Ljava/lang/String;)V

    .line 38
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setVersionCode(I)V

    .line 39
    const/4 v13, 0x0

    .line 40
    .local v13, "rom":Ljava/lang/String;
    const/4 v9, 0x0

    .line 41
    .local v9, "mobileType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 42
    .local v5, "imei":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v17, "InfoCollect"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AppPackage"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 46
    :try_start_2
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 48
    .local v7, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 49
    const-string v17, "imei"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .end local v7    # "manager":Landroid/telephony/TelephonyManager;
    :goto_0
    :try_start_3
    const-string v17, "android.os.SystemProperties"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    .line 57
    .local v14, "system":Ljava/lang/Class;
    const-string v17, "get"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 58
    .local v8, "method":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "ro.build.rom.internal.id"

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 59
    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "ro.product.model"

    aput-object v20, v18, v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 60
    const-string v17, "rom"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v17, "mobile_type"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    :try_start_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "system":Ljava/lang/Class;
    :goto_1
    move-object v11, v12

    .line 96
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "checkSum":Ljava/lang/String;
    .end local v5    # "imei":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "mobileType":Ljava/lang/String;
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v13    # "rom":Ljava/lang/String;
    .end local v15    # "uni_key":Ljava/lang/String;
    .end local v16    # "versionCode":I
    .restart local v11    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :goto_2
    return-object v12

    .line 50
    .end local v11    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "checkSum":Ljava/lang/String;
    .restart local v5    # "imei":Ljava/lang/String;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "mobileType":Ljava/lang/String;
    .restart local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v13    # "rom":Ljava/lang/String;
    .restart local v15    # "uni_key":Ljava/lang/String;
    .restart local v16    # "versionCode":I
    :catch_0
    move-exception v4

    .line 52
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v17, "PostApkInfo"

    const-string v18, "TelephonyManager getDeviceId permission denied"

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 63
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 65
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    :try_start_7
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 89
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "imei":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "mobileType":Ljava/lang/String;
    .end local v13    # "rom":Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v11, v12

    .line 91
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "checkSum":Ljava/lang/String;
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v15    # "uni_key":Ljava/lang/String;
    .end local v16    # "versionCode":I
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :goto_3
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 92
    const-string v17, "InfoCollect"

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v12, 0x0

    goto :goto_2

    .line 66
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "checkSum":Ljava/lang/String;
    .restart local v5    # "imei":Ljava/lang/String;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v9    # "mobileType":Ljava/lang/String;
    .restart local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v12    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .restart local v13    # "rom":Ljava/lang/String;
    .restart local v15    # "uni_key":Ljava/lang/String;
    .restart local v16    # "versionCode":I
    :catch_3
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 85
    :try_start_9
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 69
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v4

    .line 71
    .local v4, "e":Ljava/lang/IllegalAccessException;
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 85
    :try_start_b
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    .line 72
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 74
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 85
    :try_start_d
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_1

    .line 75
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v4

    .line 77
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 85
    :try_start_f
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    .line 78
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_7
    move-exception v4

    .line 80
    .local v4, "e":Lorg/json/JSONException;
    :try_start_10
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 85
    :try_start_11
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_1

    .line 81
    .end local v4    # "e":Lorg/json/JSONException;
    :catch_8
    move-exception v4

    .line 82
    .local v4, "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const-string v17, "InfoCollect"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 85
    :try_start_13
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v17, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcn/nubia/upgrade/model/PostApkInfo;->setPatchValue(Ljava/lang/String;)V

    .line 86
    const-string v18, "InfoCollect"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v17
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_2

    .line 89
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "checkSum":Ljava/lang/String;
    .end local v5    # "imei":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "mobileType":Ljava/lang/String;
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    .end local v13    # "rom":Ljava/lang/String;
    .end local v15    # "uni_key":Ljava/lang/String;
    .end local v16    # "versionCode":I
    .restart local v11    # "postApkInfo":Lcn/nubia/upgrade/model/PostApkInfo;
    :catch_9
    move-exception v4

    goto/16 :goto_3
.end method
