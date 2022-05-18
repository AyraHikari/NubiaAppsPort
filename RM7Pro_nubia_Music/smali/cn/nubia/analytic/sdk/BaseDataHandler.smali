.class public Lcn/nubia/analytic/sdk/BaseDataHandler;
.super Ljava/lang/Object;
.source "BaseDataHandler.java"

# interfaces
.implements Lcn/nubia/analytic/interfaces/IDataHandler;


# instance fields
.field protected mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

.field protected mRequestCacheHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcn/nubia/analytic/sdk/BaseDataHandler;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    .line 19
    iput-object v0, p0, Lcn/nubia/analytic/sdk/BaseDataHandler;->mRequestCacheHandler:Landroid/os/Handler;

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized insert(Landroid/content/Context;Ljava/util/List;)J
    .locals 2
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
    .line 32
    monitor-enter p0

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0
.end method

.method public sendWhiteToTraffic(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public sendtoTraffic(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
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
    .line 40
    return-void
.end method

.method public setRequestParams(Lcn/nubia/analytic/interfaces/IDataHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/analytic/sdk/BaseDataHandler;->mDataHandler:Lcn/nubia/analytic/interfaces/IDataHandler;

    .line 25
    iput-object p2, p0, Lcn/nubia/analytic/sdk/BaseDataHandler;->mRequestCacheHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method
