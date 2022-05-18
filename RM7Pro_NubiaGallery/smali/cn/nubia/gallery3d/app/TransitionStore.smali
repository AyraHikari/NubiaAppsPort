.class public Lcn/nubia/gallery3d/app/TransitionStore;
.super Ljava/lang/Object;
.source "TransitionStore.java"


# instance fields
.field private mStorage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public clearTransition(Ljava/lang/Object;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dumpState()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransitionStore"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/nubia/gallery3d/app/TransitionStore;->mStorage:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
