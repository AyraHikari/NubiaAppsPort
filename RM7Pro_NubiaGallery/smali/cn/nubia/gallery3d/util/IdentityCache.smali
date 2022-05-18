.class public Lcn/nubia/gallery3d/util/IdentityCache;
.super Ljava/lang/Object;
.source "IdentityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/util/IdentityCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mWeakMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcn/nubia/gallery3d/util/IdentityCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private cleanUpWeakMap()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/util/IdentityCache$Entry;

    :goto_0
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcn/nubia/gallery3d/util/IdentityCache$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/util/IdentityCache$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/IdentityCache;->cleanUpWeakMap()V

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/util/IdentityCache$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/util/IdentityCache$Entry;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized keys()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/IdentityCache;->cleanUpWeakMap()V

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mWeakMap:Ljava/util/HashMap;

    new-instance v1, Lcn/nubia/gallery3d/util/IdentityCache$Entry;

    iget-object v2, p0, Lcn/nubia/gallery3d/util/IdentityCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Lcn/nubia/gallery3d/util/IdentityCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/util/IdentityCache$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/util/IdentityCache$Entry;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
