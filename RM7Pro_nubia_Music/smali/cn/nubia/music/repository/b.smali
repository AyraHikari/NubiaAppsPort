.class Lcn/nubia/music/repository/b;
.super Ljava/lang/Object;
.source "CancelableSubscriber.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;
.implements Lcn/nubia/music/repository/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/music/repository/Subscriber",
        "<TT;>;",
        "Lcn/nubia/music/repository/Subscription;"
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Lcn/nubia/music/repository/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/music/repository/Subscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/repository/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/repository/b;->a:Z

    .line 13
    iput-object p1, p0, Lcn/nubia/music/repository/b;->b:Lcn/nubia/music/repository/Subscriber;

    .line 14
    return-void
.end method


# virtual methods
.method public isUnSubscribed()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcn/nubia/music/repository/b;->a:Z

    return v0
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/nubia/music/repository/b;->isUnSubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcn/nubia/music/repository/b;->b:Lcn/nubia/music/repository/Subscriber;

    invoke-interface {v0, p1}, Lcn/nubia/music/repository/Subscriber;->onComplete(Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcn/nubia/music/repository/b;->isUnSubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/music/repository/b;->b:Lcn/nubia/music/repository/Subscriber;

    invoke-interface {v0, p1}, Lcn/nubia/music/repository/Subscriber;->onError(Ljava/lang/Exception;)V

    .line 39
    :cond_0
    return-void
.end method

.method public unSubscribe()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/repository/b;->a:Z

    .line 25
    return-void
.end method
