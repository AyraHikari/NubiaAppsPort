.class public Lcn/nubia/analytic/sdk/BinderDataBusiness;
.super Ljava/lang/Object;
.source "BinderDataBusiness.java"


# instance fields
.field private mBinderExecutors:Ljava/util/concurrent/ExecutorService;

.field private mDataHandler:Lcn/nubia/analytic/sdk/BinderDataHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcn/nubia/analytic/sdk/BinderDataBusiness;)Lcn/nubia/analytic/sdk/BinderDataHandler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness;->mDataHandler:Lcn/nubia/analytic/sdk/BinderDataHandler;

    return-object v0
.end method


# virtual methods
.method public fetchWhiteSheet(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/analytic/sdk/BinderDataBusiness$2;-><init>(Lcn/nubia/analytic/sdk/BinderDataBusiness;Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public sendToTrafficControl(Landroid/content/Context;JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/analytic/sdk/BinderDataBusiness$1;

    invoke-direct {v1, p0, p1, p4}, Lcn/nubia/analytic/sdk/BinderDataBusiness$1;-><init>(Lcn/nubia/analytic/sdk/BinderDataBusiness;Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public setParams(Ljava/util/concurrent/ExecutorService;Lcn/nubia/analytic/sdk/BinderDataHandler;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness;->mBinderExecutors:Ljava/util/concurrent/ExecutorService;

    .line 43
    iput-object p2, p0, Lcn/nubia/analytic/sdk/BinderDataBusiness;->mDataHandler:Lcn/nubia/analytic/sdk/BinderDataHandler;

    .line 44
    return-void
.end method
