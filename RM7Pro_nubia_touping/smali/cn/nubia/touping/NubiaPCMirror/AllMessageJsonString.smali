.class public Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;
.super Ljava/lang/Object;
.source "AllMessageJsonString.java"


# static fields
.field private static final CHECKINFOWITHPCFORTOUPING:Ljava/lang/String; = "checkInfoWithPCForTouPing"

.field private static final CURRENTPHONERATE_NUM:Ljava/lang/String; = "currentPhonerateNum"

.field private static final CURRENTUSB_TYPE:Ljava/lang/String; = "currentUSB_type"

.field private static final CURRENT_BITREATE_FORCURRENTMIRRORTYPE:Ljava/lang/String; = "BitrateForCurrentMirrotType"

.field private static final CURRENT_SOUND_DTS_TYPE:Ljava/lang/String; = "set_sound_dts_type"

.field private static final CURRENT_SOUND_FORCURRENTMIRRORTYPE:Ljava/lang/String; = "soundForCurrentMirrotType"

.field private static final EXPENDINGSION_STATUS:Ljava/lang/String; = "expandingsionStatus"

.field private static final PRIVATEMODE_STATUS:Ljava/lang/String; = "private_mode_switch"

.field private static final SCREENOFFMIRROR_STATUS:Ljava/lang/String; = "screenoffMirrorStatus"

.field private static final SMALLMIRROR_STATUS:Ljava/lang/String; = "smallMirrorStatus"

.field private static final TAG:Ljava/lang/String; = "AllMessageJsonString"

.field private static final majorProtocol:Ljava/lang/String; = "1"

.field private static final minorProtocol:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->getJsonStringForCheckTouPing(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 29
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->getIntValue(I)I

    move-result v0

    return v0
.end method

.method private static getIntValue(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "temp":I
    packed-switch p0, :pswitch_data_0

    .line 281
    :goto_0
    return v0

    .line 266
    :pswitch_0
    const/4 v0, 0x3

    .line 267
    goto :goto_0

    .line 269
    :pswitch_1
    const/4 v0, 0x1

    .line 270
    goto :goto_0

    .line 272
    :pswitch_2
    const/4 v0, 0x2

    .line 273
    goto :goto_0

    .line 275
    :pswitch_3
    const/4 v0, 0x4

    .line 276
    goto :goto_0

    .line 278
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_0

    .line 54
    const-string v2, "type"

    const-string v3, "usb"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 56
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "type"

    const-string v3, "wireless"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v2, "AllMessageJsonString"

    const-string v3, "getJsonString exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "0"

    goto :goto_1
.end method

.method private static getJsonStringForCheckTouPing(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "majorProtocol"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v3, "minorProtocol"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v3, "appversion"

    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v3, "buildDeviceName"

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getBuildDevice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v3, "deviceName"

    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v3, "width"

    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getWidth(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v3, "height"

    invoke-static {p0}, Lcn/nubia/touping/Utils/PhoneInfo;->getHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string v3, "limit60"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v3, "supportBitAndSounce"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v3, "set_sound_dts_type"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    if-nez v3, :cond_0

    .line 80
    const-string v3, "support_audio_quick_mode"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_0
    const-string v3, "set_sound_dts_status"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v3, "private_mode_switch"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v3, "add_earphone_dts"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v3, "change_touping_resolution"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v3, "usb_frame_bit_control"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v3, "support_dts_external_effect"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v2, "jsonObjectFinal":Lorg/json/JSONObject;
    const-string v3, "checkInfoWithPCForTouPing"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 95
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObjectFinal":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v3, "AllMessageJsonString"

    const-string v4, "getJsonStringForCheckTouPing exception"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "0"

    goto :goto_0
.end method

.method public static sendCheckInfoWithPC(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$6;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$6;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public static sendCurrentBitrate(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # I

    .prologue
    .line 307
    if-nez p0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 308
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$8;

    invoke-direct {v1, p1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$8;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendCurrentBitrateAndSound(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    :try_start_0
    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v4, :cond_0

    .line 371
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 372
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "SOUND_SOURCE_USB"

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 373
    .local v1, "id":I
    invoke-static {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentSound(Landroid/content/Context;I)V

    .line 386
    .end local v1    # "id":I
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string v4, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 376
    .local v3, "quality":I
    invoke-static {p0, v3}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentBitrate(Landroid/content/Context;I)V

    .line 377
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 378
    .restart local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "SOUND_SOURCE"

    const/4 v5, 0x2

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 379
    .restart local v1    # "id":I
    invoke-static {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentSound(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v1    # "id":I
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "quality":I
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    const-string v4, "AllMessageJsonString"

    const-string v5, "sendCurrentBitrateAndSound exception"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendCurrentDtsSelectedStatus(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # I

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$10;

    invoke-direct {v1, p1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$10;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendCurrentDtsSelectedStatus(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isWired"    # Z

    .prologue
    .line 391
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    :goto_0
    return-void

    .line 392
    :cond_0
    const/4 v1, -0x1

    .line 393
    .local v1, "id_dts":I
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 394
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 395
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "SOUND_DTS_WIRED"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 396
    invoke-static {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentDtsSelectedStatus(Landroid/content/Context;I)V

    .line 402
    .end local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    const-string v3, "AllMessageJsonString"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendCurrentDtsSelectedStatus id_dts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    .end local v1    # "id_dts":I
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    const-string v3, "AllMessageJsonString"

    const-string v4, "sendCurrentDtsSelectedStatus exception"

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "id_dts":I
    :cond_2
    :try_start_1
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    .line 398
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 399
    .restart local v2    # "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "SOUND_DTS_WIREDLESS"

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 400
    invoke-static {p0, v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentDtsSelectedStatus(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static sendCurrentExpandingMode(I)V
    .locals 2
    .param p0, "numMode"    # I

    .prologue
    .line 100
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$1;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public static sendCurrentPhoneRateNum(I)V
    .locals 2
    .param p0, "phoneRatenum"    # I

    .prologue
    .line 197
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$5;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$5;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method public static sendCurrentPrivateModeStatus(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$3;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$3;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendCurrentSound(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # I

    .prologue
    .line 327
    if-nez p0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 328
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$9;

    invoke-direct {v1, p1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$9;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendScreenOffMirrorStatus(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 177
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$4;

    invoke-direct {v1, p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$4;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public static sendSmallMirrorStatus(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 121
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$2;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static sendUSBType(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$7;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString$7;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setIntValue2Save(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "temp":I
    packed-switch p0, :pswitch_data_0

    .line 303
    :goto_0
    return v0

    .line 288
    :pswitch_0
    const/4 v0, 0x4

    .line 289
    goto :goto_0

    .line 291
    :pswitch_1
    const/4 v0, 0x1

    .line 292
    goto :goto_0

    .line 294
    :pswitch_2
    const/4 v0, 0x2

    .line 295
    goto :goto_0

    .line 297
    :pswitch_3
    const/4 v0, 0x0

    .line 298
    goto :goto_0

    .line 300
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
