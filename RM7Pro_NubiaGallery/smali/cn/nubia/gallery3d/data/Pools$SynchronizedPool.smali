.class public Lcn/nubia/gallery3d/data/Pools$SynchronizedPool;
.super Lcn/nubia/gallery3d/data/Pools$SimplePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/nubia/gallery3d/data/Pools$SimplePool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/data/Pools$SimplePool;-><init>(I)V

    .line 138
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-super {p0}, Lcn/nubia/gallery3d/data/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/data/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
