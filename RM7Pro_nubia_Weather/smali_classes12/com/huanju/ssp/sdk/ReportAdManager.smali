.class public Lcom/huanju/ssp/sdk/ReportAdManager;
.super Ljava/lang/Object;
.source "ReportAdManager.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonChageAd;


# static fields
.field private static final CHARGE_HOST_RELEASE:Ljava/lang/String; = "http://dspdeveloperrtd.nubia.com/nfreport/v1.0/"

.field private static final CHARGE_HOST_TEST:Ljava/lang/String; = "http://dspdeveloperrtd-test.nubia.com/nfreport/v1.0/"

.field private static final DSP_HOST_RELEASE:Ljava/lang/String; = "http://dspapplog.nubia.com/dsprtd/report/"

.field private static final DSP_HOST_TEST:Ljava/lang/String; = "http://dspapplog-test.nubia.com/dsprtd/report/"

.field private static final REPORT_TYPE_ACTV:I = 0x6

.field private static final REPORT_TYPE_CHARGE:I = 0x7

.field private static final REPORT_TYPE_CLICK:I = 0x1

.field private static final REPORT_TYPE_DWNL:I = 0x3

.field private static final REPORT_TYPE_DWNLST:I = 0x2

.field private static final REPORT_TYPE_EXPOSURE:I = 0x5

.field private static final REPORT_TYPE_IMP:I = 0x0

.field private static final REPORT_TYPE_INTL:I = 0x4

.field public static final TYPE_KM:I = 0x1

.field public static final TYPE_SD:I = 0x2

.field private static mReportAdManager:Lcom/huanju/ssp/sdk/ReportAdManager;


# instance fields
.field private mChargeHostUrl:Ljava/lang/String;

.field private mHostUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "http://dspapplog.nubia.com/dsprtd/report/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    .line 40
    const-string v0, "http://dspdeveloperrtd.nubia.com/nfreport/v1.0/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mChargeHostUrl:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/huanju/ssp/sdk/ReportAdManager$2;->$SwitchMap$com$huanju$ssp$base$core$common$Config$NetEnvironment:[I

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getNetEnvironment()Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    const-string v0, "http://dspapplog.nubia.com/dsprtd/report/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    .line 68
    const-string v0, "http://dspdeveloperrtd.nubia.com/nfreport/v1.0/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mChargeHostUrl:Ljava/lang/String;

    .line 71
    :goto_0
    return-void

    .line 59
    :pswitch_0
    const-string v0, "http://dspapplog-test.nubia.com/dsprtd/report/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    .line 60
    const-string v0, "http://dspdeveloperrtd-test.nubia.com/nfreport/v1.0/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mChargeHostUrl:Ljava/lang/String;

    goto :goto_0

    .line 63
    :pswitch_1
    const-string v0, "http://dspapplog.nubia.com/dsprtd/report/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    .line 64
    const-string v0, "http://dspdeveloperrtd.nubia.com/nfreport/v1.0/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mChargeHostUrl:Ljava/lang/String;

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/huanju/ssp/sdk/ReportAdManager;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/huanju/ssp/sdk/ReportAdManager;->mReportAdManager:Lcom/huanju/ssp/sdk/ReportAdManager;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Lcom/huanju/ssp/sdk/ReportAdManager;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/huanju/ssp/sdk/ReportAdManager;->mReportAdManager:Lcom/huanju/ssp/sdk/ReportAdManager;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/huanju/ssp/sdk/ReportAdManager;

    invoke-direct {v0}, Lcom/huanju/ssp/sdk/ReportAdManager;-><init>()V

    sput-object v0, Lcom/huanju/ssp/sdk/ReportAdManager;->mReportAdManager:Lcom/huanju/ssp/sdk/ReportAdManager;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lcom/huanju/ssp/sdk/ReportAdManager;->mReportAdManager:Lcom/huanju/ssp/sdk/ReportAdManager;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "reportType"    # I

    .prologue
    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    :cond_0
    const-string v5, "ReportAdManager"

    const-string v6, "onAppStartDownload bundle/seatId/appId must be not empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 89
    :cond_1
    if-nez p2, :cond_2

    .line 90
    const-string p2, ""

    .line 92
    :cond_2
    const-string v1, ""

    .line 93
    .local v1, "hostUrl":Ljava/lang/String;
    packed-switch p6, :pswitch_data_0

    .line 120
    :goto_1
    const-string v4, ""

    .line 121
    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x7

    if-eq p6, v5, :cond_3

    .line 123
    :try_start_0
    const-string v5, "${BUNDLE}"

    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "${TYPE}"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 124
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "${SEATID}"

    .line 125
    invoke-virtual {v5, v6, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "${APPID}"

    .line 126
    invoke-virtual {v5, v6, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "${VERSION}"

    .line 127
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "${IMEI}"

    .line 128
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getImeiMD5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "${KEYWORD}"

    const-string v7, "UTF-8"

    .line 129
    invoke-static {p2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 157
    :goto_2
    new-instance v5, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;

    new-instance v6, Lcom/huanju/ssp/sdk/ReportAdManager$1;

    invoke-direct {v6, p0}, Lcom/huanju/ssp/sdk/ReportAdManager$1;-><init>(Lcom/huanju/ssp/sdk/ReportAdManager;)V

    invoke-direct {v5, v4, v6}, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;-><init>(Ljava/lang/String;Lcom/huanju/ssp/base/core/request/ad/listener/IHttpListener;)V

    .line 162
    invoke-virtual {v5}, Lcom/huanju/ssp/base/core/report/track/ReportAdUrlProcessor;->process()V

    goto :goto_0

    .line 95
    .end local v4    # "url":Ljava/lang/String;
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "imp/1.gif?imei=${IMEI}&package_name=${BUNDLE}&keyword=${KEYWORD}&bid_type=${TYPE}&seat_id=${SEATID}&app_id=${APPID}&version=${VERSION}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    goto :goto_1

    .line 98
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "click/1.gif?imei=${IMEI}&package_name=${BUNDLE}&keyword=${KEYWORD}&bid_type=${TYPE}&seat_id=${SEATID}&app_id=${APPID}&version=${VERSION}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    goto/16 :goto_1

    .line 101
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dwnlst/1.gif?imei=${IMEI}&package_name=${BUNDLE}&keyword=${KEYWORD}&bid_type=${TYPE}&seat_id=${SEATID}&app_id=${APPID}&version=${VERSION}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    goto/16 :goto_1

    .line 104
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dwnl/1.gif?imei=${IMEI}&package_name=${BUNDLE}&keyword=${KEYWORD}&bid_type=${TYPE}&seat_id=${SEATID}&app_id=${APPID}&version=${VERSION}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    goto/16 :goto_1

    .line 107
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "intl/1.gif?imei=${IMEI}&package_name=${BUNDLE}&keyword=${KEYWORD}&bid_type=${TYPE}&seat_id=${SEATID}&app_id=${APPID}&version=${VERSION}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exposure/1.gif?imei=${IMEI}&package_name=${BUNDLE}&keyword=${KEYWORD}&bid_type=${TYPE}&seat_id=${SEATID}&app_id=${APPID}&version=${VERSION}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    goto/16 :goto_1

    .line 113
    :pswitch_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "actv/1.gif?imei=${IMEI}&package_name=${BUNDLE}&keyword=${KEYWORD}&bid_type=${TYPE}&seat_id=${SEATID}&app_id=${APPID}&version=${VERSION}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    goto/16 :goto_1

    .line 116
    :pswitch_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mChargeHostUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dwnl?reqjson=%s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 130
    .restart local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v2, ""

    .line 136
    .local v2, "jsonData":Ljava/lang/String;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "imei"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getImeiMD5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    const-string v5, "bundle"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v5, "keyword"

    invoke-virtual {v3, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v5, "type"

    invoke-virtual {v3, v5, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    const-string v5, "seatId"

    invoke-virtual {v3, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v5, "appId"

    invoke-virtual {v3, v5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v5, "version"

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-static {}, Lcom/huanju/ssp/base/utils/CuidUtils;->getCuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huanju/ssp/base/utils/KeyUtil;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "UTF-8"

    invoke-static {v2, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&cuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getCuid()Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&svr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/huanju/ssp/base/core/common/Config;->SDK_VERSION:Ljava/lang/String;

    const-string v7, "utf-8"

    .line 149
    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_2

    .line 151
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 152
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public onActivate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 253
    const-string v0, "onActivate"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 254
    const/4 v6, 0x6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 255
    return-void
.end method

.method public onAdClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 200
    const-string v0, "onAdClick"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 201
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 202
    return-void
.end method

.method public onAdDetailShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 213
    const-string v0, "onAdDetailShow"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 214
    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 215
    return-void
.end method

.method public onAdShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 187
    const-string v0, "onAdShow"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 188
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 189
    return-void
.end method

.method public onAppDownloadComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 227
    const-string v0, "onAppDownloadComplete"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 228
    const/4 v6, 0x7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 229
    return-void
.end method

.method public onAppInstallComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 240
    const-string v0, "onAppInstallComplete"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 241
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 242
    return-void
.end method

.method public onAppStartDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "bundle"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "seatId"    # Ljava/lang/String;
    .param p4, "appId"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 174
    const-string v0, "onAppStartDownload"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 175
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/huanju/ssp/sdk/ReportAdManager;->reportAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 176
    return-void
.end method

.method public setIsDebug(Z)V
    .locals 1
    .param p1, "isDebug"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    const-string v0, "http://dspapplog-test.nubia.com/dsprtd/report/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    .line 261
    const-string v0, "http://dspdeveloperrtd-test.nubia.com/nfreport/v1.0/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mChargeHostUrl:Ljava/lang/String;

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v0, "http://dspapplog.nubia.com/dsprtd/report/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mHostUrl:Ljava/lang/String;

    .line 264
    const-string v0, "http://dspdeveloperrtd.nubia.com/nfreport/v1.0/"

    iput-object v0, p0, Lcom/huanju/ssp/sdk/ReportAdManager;->mChargeHostUrl:Ljava/lang/String;

    goto :goto_0
.end method
