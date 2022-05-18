.class Lcn/nubia/music/repository/a;
.super Lcn/nubia/music/repository/b;
.source "CachedSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/nubia/music/repository/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/music/database/AccessRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/music/database/AccessRequest",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/music/repository/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcn/nubia/music/repository/b;-><init>(Lcn/nubia/music/repository/Subscriber;)V

    .line 14
    return-void
.end method


# virtual methods
.method a(Lcn/nubia/music/database/AccessRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/database/AccessRequest",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    iput-object p1, p0, Lcn/nubia/music/repository/a;->a:Lcn/nubia/music/database/AccessRequest;

    .line 18
    return-void
.end method

.method public unSubscribe()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcn/nubia/music/repository/b;->unSubscribe()V

    .line 23
    iget-object v0, p0, Lcn/nubia/music/repository/a;->a:Lcn/nubia/music/database/AccessRequest;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcn/nubia/music/repository/a;->a:Lcn/nubia/music/database/AccessRequest;

    invoke-virtual {v0}, Lcn/nubia/music/database/AccessRequest;->cancel()V

    .line 26
    :cond_0
    return-void
.end method
