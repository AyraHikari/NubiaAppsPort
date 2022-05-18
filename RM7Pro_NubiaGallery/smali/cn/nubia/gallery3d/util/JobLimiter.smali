.class public Lcn/nubia/gallery3d/util/JobLimiter;
.super Ljava/lang/Object;
.source "JobLimiter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;
    }
.end annotation


# static fields
.field private static final STATE_CANCELLED:I = 0x2

.field private static final STATE_DONE:I = 0x1

.field private static final STATE_INIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "JobLimiter"


# instance fields
.field private final mJobs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private final mPool:Lcn/nubia/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/util/ThreadPool;I)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    .line 132
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/util/ThreadPool;

    iput-object p1, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mPool:Lcn/nubia/gallery3d/util/ThreadPool;

    .line 133
    iput p2, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mLimit:I

    return-void
.end method

.method private submitTasksIfAllowed()V
    .locals 2

    .line 145
    :cond_0
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mLimit:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;

    .line 147
    invoke-virtual {v0}, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget v1, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mLimit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mLimit:I

    .line 149
    iget-object v1, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mPool:Lcn/nubia/gallery3d/util/ThreadPool;

    invoke-virtual {v1, v0, p0}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;->setFuture(Lcn/nubia/gallery3d/util/Future;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized onFutureDone(Lcn/nubia/gallery3d/util/Future;)V
    .locals 0

    monitor-enter p0

    .line 156
    :try_start_0
    iget p1, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mLimit:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mLimit:I

    .line 157
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "TT;>;",
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "TT;>;)",
            "Lcn/nubia/gallery3d/util/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    new-instance v0, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/util/ThreadPool$Job;

    invoke-direct {v0, p1, p2}, Lcn/nubia/gallery3d/util/JobLimiter$JobWrapper;-><init>(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)V

    .line 138
    iget-object p1, p0, Lcn/nubia/gallery3d/util/JobLimiter;->mJobs:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/JobLimiter;->submitTasksIfAllowed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
