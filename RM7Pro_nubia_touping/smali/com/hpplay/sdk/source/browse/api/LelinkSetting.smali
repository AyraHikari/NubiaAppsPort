.class public Lcom/hpplay/sdk/source/browse/api/LelinkSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;,
        Lcom/hpplay/sdk/source/browse/api/LelinkSetting$ConfigChangeListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/hpplay/sdk/source/browse/api/LelinkSetting;


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkSetting$ConfigChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private userIcon:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->access$000(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->appKey:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->access$100(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->appSecret:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->access$200(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->appVersion:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->access$300(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userId:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->access$400(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userName:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;->access$500(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userIcon:Ljava/lang/String;

    .line 56
    return-void
.end method

.method static synthetic access$600(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Lcom/hpplay/sdk/source/browse/api/LelinkSetting;
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->newInstance(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/hpplay/sdk/source/browse/api/LelinkSetting;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->sInstance:Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    return-object v0
.end method

.method private static newInstance(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)Lcom/hpplay/sdk/source/browse/api/LelinkSetting;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->sInstance:Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    if-nez v0, :cond_1

    .line 40
    const-class v1, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->sInstance:Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;-><init>(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$LelinkSettingBuilder;)V

    sput-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->sInstance:Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_1
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->sInstance:Lcom/hpplay/sdk/source/browse/api/LelinkSetting;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addConfigChangeListener(Lcom/hpplay/sdk/source/browse/api/LelinkSetting$ConfigChangeListener;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->mListeners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->mListeners:Ljava/util/Set;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setUserIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userIcon:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userId:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->mListeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$ConfigChangeListener;

    .line 74
    invoke-interface {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkSetting$ConfigChangeListener;->onUserIdChange()V

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/hpplay/sdk/source/browse/api/LelinkSetting;->userName:Ljava/lang/String;

    .line 89
    return-void
.end method
