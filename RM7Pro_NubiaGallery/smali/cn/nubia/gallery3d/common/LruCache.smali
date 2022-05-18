.class public Lcn/nubia/gallery3d/common/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/common/LruCache$Entry;
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
.field private final mLruMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

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
            "Lcn/nubia/gallery3d/common/LruCache$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 38
    new-instance v0, Lcn/nubia/gallery3d/common/LruCache$1;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/gallery3d/common/LruCache$1;-><init>(Lcn/nubia/gallery3d/common/LruCache;IFZI)V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mLruMap:Ljava/util/HashMap;

    return-void
.end method

.method private cleanUpWeakMap()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/common/LruCache$Entry;

    :goto_0
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcn/nubia/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    iget-object v0, v0, Lcn/nubia/gallery3d/common/LruCache$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/common/LruCache$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 88
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/LruCache;->cleanUpWeakMap()V

    .line 66
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/LruCache;->cleanUpWeakMap()V

    .line 79
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 80
    monitor-exit p0

    return-object v0

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/common/LruCache$Entry;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/common/LruCache$Entry;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/LruCache;->cleanUpWeakMap()V

    .line 71
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mLruMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcn/nubia/gallery3d/common/LruCache;->mWeakMap:Ljava/util/HashMap;

    new-instance v1, Lcn/nubia/gallery3d/common/LruCache$Entry;

    iget-object v2, p0, Lcn/nubia/gallery3d/common/LruCache;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Lcn/nubia/gallery3d/common/LruCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/common/LruCache$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/common/LruCache$Entry;->get()Ljava/lang/Object;

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
