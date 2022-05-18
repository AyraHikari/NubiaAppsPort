.class public Lcom/nubia/reyun/sdk/ReYunSDK;
.super Ljava/lang/Object;
.source "ReYunSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/sdk/ReYunSDK$Environment;,
        Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/nubia/reyun/sdk/ReYunSDK;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->switchEnvironment()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/nubia/reyun/sdk/ReYunSDK;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/nubia/reyun/sdk/ReYunSDK;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDK;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/nubia/reyun/sdk/ReYunSDK;

    invoke-direct {v0}, Lcom/nubia/reyun/sdk/ReYunSDK;-><init>()V

    sput-object v0, Lcom/nubia/reyun/sdk/ReYunSDK;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDK;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    sget-object v0, Lcom/nubia/reyun/sdk/ReYunSDK;->mInstance:Lcom/nubia/reyun/sdk/ReYunSDK;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setEnvironment(Lcom/nubia/reyun/sdk/ReYunSDK$Environment;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setEnvironment(Lcom/nubia/reyun/sdk/ReYunSDK$Environment;)V

    .line 36
    return-void
.end method

.method public static setIsInternetApp(Z)V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setIsInternetApp(Z)V

    .line 234
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpsLocation(Landroid/content/Context;Lcom/nubia/reyun/sdk/LocationCallback;Z)V
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getGpsLocation(Landroid/content/Context;Lcom/nubia/reyun/sdk/LocationCallback;Z)V

    .line 222
    return-void
.end method

.method public getNLPLocation(Landroid/content/Context;Lcom/nubia/reyun/sdk/LocationCallback;Z)V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getNLPLocation(Landroid/content/Context;Lcom/nubia/reyun/sdk/LocationCallback;Z)V

    .line 212
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 93
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 70
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    sget-object v5, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    sget-object v6, Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;->On:Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setIsMostEffort(Z)V
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setIsMostEffort(Z)V

    .line 273
    return-void
.end method

.method public setIsSystemUid(Z)V
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setIsSystemUid(Z)V

    .line 250
    return-void
.end method

.method public setPrivacy(Z)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setPrivacy(Z)V

    .line 52
    return-void
.end method

.method public setSdkIsEncrypt(Z)V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setSdkIsEncrypt(Z)V

    .line 238
    return-void
.end method

.method public setSdkIsUseNet(Z)V
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setSdkIsUseNet(Z)V

    .line 246
    return-void
.end method

.method public setSendBySelf(Z)V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->setSendBySelf(Z)V

    .line 230
    return-void
.end method

.method public trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackCustomEvent sessionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    return-void
.end method

.method public trackEventByDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackEventByDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 184
    return-void
.end method

.method public trackLogin(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackLogin(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public trackProfile(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackProfile(Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    return-void
.end method

.method public trackProfileSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackProfileSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public trackRegister(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackRegister(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public trackSession(Ljava/lang/String;JJ)V
    .locals 6

    .prologue
    .line 268
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackSession(Ljava/lang/String;JJ)V

    .line 269
    return-void
.end method

.method public trackSessionEnd(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackSessionEnd(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public trackSessionStart(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 137
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackSessionStart sessionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackSessionStart(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public trackStartup(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackStartup(Ljava/lang/String;)V

    .line 257
    return-void
.end method
