.class public Lcn/nubia/analytic/sdk/ComponentAgent;
.super Ljava/lang/Object;
.source "ComponentAgent.java"


# static fields
.field private static mInstance:Lcn/nubia/analytic/sdk/ComponentAgent;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mBinderExecutors:Ljava/util/concurrent/ExecutorService;

.field private mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

.field private mRequestCacheHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcn/nubia/analytic/sdk/ComponentAgent;

    invoke-direct {v0}, Lcn/nubia/analytic/sdk/ComponentAgent;-><init>()V

    sput-object v0, Lcn/nubia/analytic/sdk/ComponentAgent;->mInstance:Lcn/nubia/analytic/sdk/ComponentAgent;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    .line 36
    iput-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mRequestCacheHandler:Landroid/os/Handler;

    .line 37
    iput-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mApplicationContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    .line 45
    return-void
.end method

.method public static getInstance()Lcn/nubia/analytic/sdk/ComponentAgent;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcn/nubia/analytic/sdk/ComponentAgent;->mInstance:Lcn/nubia/analytic/sdk/ComponentAgent;

    return-object v0
.end method


# virtual methods
.method public fetchWhiteSheet(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    invoke-interface {v0, p1, p2}, Lcn/nubia/analytic/interfaces/IDataHandler;->sendWhiteToTraffic(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V

    .line 81
    :cond_0
    return-void
.end method

.method public sendData(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
    .line 72
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    invoke-interface {v0, p1, p2}, Lcn/nubia/analytic/interfaces/IDataHandler;->sendtoTraffic(Landroid/content/Context;Ljava/util/List;)V

    .line 75
    :cond_0
    return-void
.end method

.method public setParams(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mApplicationContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/analytic/sdk/DataHandlerFactory;->getDataHandler(Landroid/content/Context;)Lcn/nubia/analytic/interfaces/IDataHandler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    .line 59
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    iget-object v1, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    iget-object v2, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mRequestCacheHandler:Landroid/os/Handler;

    invoke-interface {v0, v1, v2}, Lcn/nubia/analytic/interfaces/IDataHandler;->setRequestParams(Lcn/nubia/analytic/interfaces/IDataHandler;Landroid/os/Handler;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    instance-of v0, v0, Lcn/nubia/analytic/sdk/BinderDataHandler;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    .line 63
    iget-object v0, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    check-cast v0, Lcn/nubia/analytic/sdk/BinderDataHandler;

    iget-object v1, p0, Lcn/nubia/analytic/sdk/ComponentAgent;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lcn/nubia/analytic/sdk/BinderDataHandler;->setExecutorService(Ljava/util/concurrent/ExecutorService;)V

    .line 68
    :cond_0
    return-void
.end method
