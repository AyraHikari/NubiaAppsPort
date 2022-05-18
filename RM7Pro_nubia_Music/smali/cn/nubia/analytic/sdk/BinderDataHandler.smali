.class public Lcn/nubia/analytic/sdk/BinderDataHandler;
.super Lcn/nubia/analytic/sdk/BaseDataHandler;
.source "BinderDataHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderDataHandler"


# instance fields
.field protected mAppLaunchTime:J

.field private mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

.field private mBinderExecutors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Lcn/nubia/analytic/sdk/BaseDataHandler;-><init>()V

    .line 27
    iput-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    .line 28
    iput-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mAppLaunchTime:J

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcn/nubia/analytic/sdk/BinderDataHandler;)Lcn/nubia/analytic/sdk/BinderDataBusiness;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    return-object v0
.end method

.method static synthetic access$1(Lcn/nubia/analytic/sdk/BinderDataHandler;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/analytic/sdk/BinderDataHandler;->handleTime(Landroid/content/Context;J)V

    return-void
.end method

.method private handleTime(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 168
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {p1, p2, p3}, Lcn/nubia/analytic/util/SharedPreferEditor;->setServerTimeOffset(Landroid/content/Context;J)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized fetchServerTime(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/nubia/analytic/util/BundleFactory;->decodeServerTime()Landroid/os/Bundle;

    move-result-object v0

    .line 108
    invoke-static {p1}, Lcn/nubia/analytic/sdk/ClientSdk;->getInstance(Landroid/content/Context;)Lcn/nubia/analytic/sdk/ClientSdk;

    move-result-object v1

    new-instance v2, Lcn/nubia/analytic/sdk/BinderDataHandler$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/analytic/sdk/BinderDataHandler$2;-><init>(Lcn/nubia/analytic/sdk/BinderDataHandler;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/analytic/sdk/ClientSdk;->send(Landroid/os/Bundle;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchWhiteSheet(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/nubia/analytic/util/BundleFactory;->decodeWhiteSheet()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    invoke-static {p1}, Lcn/nubia/analytic/sdk/ClientSdk;->getInstance(Landroid/content/Context;)Lcn/nubia/analytic/sdk/ClientSdk;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcn/nubia/analytic/sdk/ClientSdk;->send(Landroid/os/Bundle;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Landroid/content/Context;Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcn/nubia/analytic/util/CommonInfoFactory;->splitContexts(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_0

    .line 98
    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcn/nubia/analytic/util/BundleFactory;->createBundle(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v0

    .line 73
    invoke-static {p1}, Lcn/nubia/analytic/sdk/ClientSdk;->getInstance(Landroid/content/Context;)Lcn/nubia/analytic/sdk/ClientSdk;

    move-result-object v3

    new-instance v4, Lcn/nubia/analytic/sdk/BinderDataHandler$1;

    invoke-direct {v4, p0}, Lcn/nubia/analytic/sdk/BinderDataHandler$1;-><init>(Lcn/nubia/analytic/sdk/BinderDataHandler;)V

    invoke-virtual {v3, v0, v4}, Lcn/nubia/analytic/sdk/ClientSdk;->send(Landroid/os/Bundle;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendWhiteToTraffic(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcn/nubia/analytic/sdk/BinderDataBusiness;

    invoke-direct {v0}, Lcn/nubia/analytic/sdk/BinderDataBusiness;-><init>()V

    iput-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    .line 44
    :cond_0
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    iget-object v1, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/analytic/sdk/BinderDataBusiness;->setParams(Ljava/util/concurrent/ExecutorService;Lcn/nubia/analytic/sdk/BinderDataHandler;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/analytic/sdk/BinderDataBusiness;->fetchWhiteSheet(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V

    .line 46
    return-void
.end method

.method public sendtoTraffic(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Lcn/nubia/analytic/util/AppUtil;->timeAlignment(J)J

    move-result-wide v2

    .line 56
    iput-wide v2, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mAppLaunchTime:J

    .line 57
    iget-object v4, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    if-nez v4, :cond_0

    .line 58
    new-instance v4, Lcn/nubia/analytic/sdk/BinderDataBusiness;

    invoke-direct {v4}, Lcn/nubia/analytic/sdk/BinderDataBusiness;-><init>()V

    iput-object v4, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    .line 60
    :cond_0
    iget-object v4, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    iget-object v5, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v4, v5, p0}, Lcn/nubia/analytic/sdk/BinderDataBusiness;->setParams(Ljava/util/concurrent/ExecutorService;Lcn/nubia/analytic/sdk/BinderDataHandler;)V

    .line 61
    iget-object v4, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderDataBusiness:Lcn/nubia/analytic/sdk/BinderDataBusiness;

    invoke-virtual {v4, p1, v2, v3, p2}, Lcn/nubia/analytic/sdk/BinderDataBusiness;->sendToTrafficControl(Landroid/content/Context;JLjava/util/List;)V

    .line 63
    const-string v2, "BinderDataHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BinderDataHandler onAppLaunch COST time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/analytic/util/NeoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/analytic/sdk/BinderDataHandler;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    .line 34
    return-void
.end method
