.class public Lcn/nubia/music/repository/Subscriptions;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# instance fields
.field private mSubscriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/repository/Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/repository/Subscriptions;->mSubscriptionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcn/nubia/music/repository/Subscription;)V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/music/repository/Subscriptions;->mSubscriptionList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/music/repository/Subscriptions;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/repository/Subscription;

    invoke-interface {v0}, Lcn/nubia/music/repository/Subscription;->unSubscribe()V

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/repository/Subscriptions;->mSubscriptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    return-void
.end method
