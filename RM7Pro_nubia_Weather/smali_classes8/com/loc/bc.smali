.class public Lcom/loc/bc;
.super Ljava/lang/Object;
.source "StatisticsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bc$a;
    }
.end annotation


# static fields
.field static a:Z

.field static b:I

.field private static c:I

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loc/ax;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x14

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bc;->a:Z

    sput v1, Lcom/loc/bc;->b:I

    sput v1, Lcom/loc/bc;->c:I

    sput v0, Lcom/loc/bc;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/loc/bc;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/bc$a;

    sget v2, Lcom/loc/bc$a;->c:I

    invoke-direct {v1, p0, v2}, Lcom/loc/bc$a;-><init>(Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Landroid/content/Context;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/loc/bc;->d:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/loc/bd;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/ax;

    move-result-object v1

    sget-object v2, Lcom/loc/z;->h:Ljava/lang/String;

    const/16 v3, 0x3e8

    const v4, 0x4b000

    const-string v5, "2"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/loc/ax;->e:Lcom/loc/ak;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/am;

    invoke-direct {v0}, Lcom/loc/am;-><init>()V

    iput-object v0, v1, Lcom/loc/ax;->e:Lcom/loc/ak;

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p1, v1}, Lcom/loc/ay;->a(Ljava/lang/String;[BLcom/loc/ax;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "stm"

    const-string v2, "wts"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/loc/bb;Landroid/content/Context;)V
    .locals 4

    const-class v1, Lcom/loc/bc;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/loc/bc$a;

    sget v3, Lcom/loc/bc$a;->a:I

    invoke-direct {v2, p1, v3, p0}, Lcom/loc/bc$a;-><init>(Landroid/content/Context;ILcom/loc/bb;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/util/List;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/bb;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-class v1, Lcom/loc/bc;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/loc/bc$a;

    sget v3, Lcom/loc/bc$a;->b:I

    invoke-direct {v2, p1, v3, p0}, Lcom/loc/bc$a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(ZI)V
    .locals 2

    const-class v1, Lcom/loc/bc;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/loc/bc;->a:Z

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/loc/bc;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lcom/loc/bc;->c:I

    return v0
.end method

.method public static declared-synchronized b(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/bb;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-class v1, Lcom/loc/bc;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/loc/as;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/loc/bc;->a(Ljava/util/List;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/loc/bc;->e:I

    return v0
.end method
