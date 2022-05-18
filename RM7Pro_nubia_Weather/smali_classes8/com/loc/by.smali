.class public final Lcom/loc/by;
.super Ljava/lang/Object;
.source "FpsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/by$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/loc/by;

.field private static h:Ljava/lang/Object;


# instance fields
.field private a:Lcom/loc/bx;

.field private b:Lcom/loc/bz;

.field private c:J

.field private d:Lcom/loc/dc;

.field private e:Lcom/loc/bu;

.field private f:Lcom/loc/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/by;->g:Lcom/loc/by;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/by;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/dc;

    invoke-direct {v0}, Lcom/loc/dc;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->f:Lcom/loc/dc;

    new-instance v0, Lcom/loc/bx;

    invoke-direct {v0}, Lcom/loc/bx;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->a:Lcom/loc/bx;

    new-instance v0, Lcom/loc/bz;

    invoke-direct {v0}, Lcom/loc/bz;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->b:Lcom/loc/bz;

    new-instance v0, Lcom/loc/bu;

    invoke-direct {v0}, Lcom/loc/bu;-><init>()V

    iput-object v0, p0, Lcom/loc/by;->e:Lcom/loc/bu;

    return-void
.end method

.method public static a()Lcom/loc/by;
    .locals 2

    sget-object v0, Lcom/loc/by;->g:Lcom/loc/by;

    if-nez v0, :cond_1

    sget-object v1, Lcom/loc/by;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/by;->g:Lcom/loc/by;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/by;

    invoke-direct {v0}, Lcom/loc/by;-><init>()V

    sput-object v0, Lcom/loc/by;->g:Lcom/loc/by;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/loc/by;->g:Lcom/loc/by;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/loc/by$a;)Lcom/loc/ca;
    .locals 13

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, p0, Lcom/loc/by;->d:Lcom/loc/dc;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/loc/by$a;->a:Lcom/loc/dc;

    iget-object v1, p0, Lcom/loc/by;->d:Lcom/loc/dc;

    invoke-virtual {v0, v1}, Lcom/loc/dc;->a(Lcom/loc/db;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/loc/by;->a:Lcom/loc/bx;

    iget-object v1, p1, Lcom/loc/by$a;->a:Lcom/loc/dc;

    iget-boolean v2, p1, Lcom/loc/by$a;->j:Z

    iget-byte v3, p1, Lcom/loc/by$a;->g:B

    iget-object v4, p1, Lcom/loc/by$a;->h:Ljava/lang/String;

    iget-object v5, p1, Lcom/loc/by$a;->i:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bx;->a(Lcom/loc/dc;ZBLjava/lang/String;Ljava/util/List;)Lcom/loc/bx$a;

    move-result-object v9

    iget-object v0, p0, Lcom/loc/by;->b:Lcom/loc/bz;

    iget-object v1, p1, Lcom/loc/by$a;->a:Lcom/loc/dc;

    iget-object v2, p1, Lcom/loc/by$a;->b:Ljava/util/List;

    iget-boolean v3, p1, Lcom/loc/by$a;->e:Z

    iget-wide v4, p1, Lcom/loc/by$a;->d:J

    invoke-virtual/range {v0 .. v7}, Lcom/loc/bz;->a(Lcom/loc/dc;Ljava/util/List;ZJJ)Ljava/util/List;

    move-result-object v12

    if-nez v9, :cond_3

    if-eqz v12, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/loc/by;->f:Lcom/loc/dc;

    iget-object v1, p1, Lcom/loc/by$a;->a:Lcom/loc/dc;

    iget-wide v2, p1, Lcom/loc/by$a;->f:J

    iput-wide v2, v0, Lcom/loc/dc;->k:J

    iput-wide v2, v0, Lcom/loc/dc;->b:J

    iput-wide v6, v0, Lcom/loc/dc;->c:J

    iget-wide v2, v1, Lcom/loc/dc;->e:D

    iput-wide v2, v0, Lcom/loc/dc;->e:D

    iget-wide v2, v1, Lcom/loc/dc;->d:D

    iput-wide v2, v0, Lcom/loc/dc;->d:D

    iget-wide v2, v1, Lcom/loc/dc;->f:D

    iput-wide v2, v0, Lcom/loc/dc;->f:D

    iget v2, v1, Lcom/loc/dc;->i:F

    iput v2, v0, Lcom/loc/dc;->i:F

    iget v2, v1, Lcom/loc/dc;->g:F

    iput v2, v0, Lcom/loc/dc;->g:F

    iget v1, v1, Lcom/loc/dc;->h:F

    iput v1, v0, Lcom/loc/dc;->h:F

    new-instance v0, Lcom/loc/ca;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/loc/by;->e:Lcom/loc/bu;

    iget-object v2, p0, Lcom/loc/by;->f:Lcom/loc/dc;

    iget-wide v4, p1, Lcom/loc/by$a;->c:J

    move-object v3, v9

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/loc/bu;->a(Lcom/loc/dc;Lcom/loc/bx$a;JLjava/util/List;)[B

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/loc/ca;-><init>(I[B)V

    :goto_1
    iget-object v1, p1, Lcom/loc/by$a;->a:Lcom/loc/dc;

    iput-object v1, p0, Lcom/loc/by;->d:Lcom/loc/dc;

    iput-wide v10, p0, Lcom/loc/by;->c:J

    move-object v8, v0

    goto :goto_0

    :cond_4
    move-object v0, v8

    goto :goto_1
.end method
