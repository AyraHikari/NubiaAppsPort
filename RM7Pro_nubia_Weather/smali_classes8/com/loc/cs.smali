.class public final Lcom/loc/cs;
.super Ljava/lang/Object;
.source "RssiInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/cs$a;
    }
.end annotation


# static fields
.field private static volatile g:Lcom/loc/cs;

.field private static h:Ljava/lang/Object;


# instance fields
.field private a:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/loc/cs$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/loc/cs$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/loc/cs$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/loc/cs$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/cs;->g:Lcom/loc/cs;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/cs;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cs;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cs;->f:Ljava/lang/Object;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/loc/cs;->a:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/loc/cs;->b:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/loc/cs;->c:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/loc/cs;->d:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static a()Lcom/loc/cs;
    .locals 2

    sget-object v0, Lcom/loc/cs;->g:Lcom/loc/cs;

    if-nez v0, :cond_1

    sget-object v1, Lcom/loc/cs;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/cs;->g:Lcom/loc/cs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cs;

    invoke-direct {v0}, Lcom/loc/cs;-><init>()V

    sput-object v0, Lcom/loc/cs;->g:Lcom/loc/cs;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/loc/cs;->g:Lcom/loc/cs;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/util/LongSparseArray;J)S
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/loc/cs$a;",
            ">;J)S"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cs$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x7fff

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/loc/cs$a;->b:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-short v1, v1

    iget-boolean v0, v0, Lcom/loc/cs$a;->c:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    neg-int v0, v1

    int-to-short v0, v0

    goto :goto_1
.end method

.method private static a(Ljava/util/List;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cr;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/loc/cs$a;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/loc/cs$a;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cr;

    new-instance v4, Lcom/loc/cs$a;

    invoke-direct {v4, v9}, Lcom/loc/cs$a;-><init>(B)V

    invoke-interface {v0}, Lcom/loc/cr;->b()I

    move-result v5

    iput v5, v4, Lcom/loc/cs$a;->a:I

    iput-wide v2, v4, Lcom/loc/cs$a;->b:J

    iput-boolean v9, v4, Lcom/loc/cs$a;->c:Z

    invoke-interface {v0}, Lcom/loc/cr;->a()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cr;

    invoke-interface {v0}, Lcom/loc/cr;->a()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/cs$a;

    if-nez v1, :cond_2

    new-instance v1, Lcom/loc/cs$a;

    invoke-direct {v1, v9}, Lcom/loc/cs$a;-><init>(B)V

    invoke-interface {v0}, Lcom/loc/cr;->b()I

    move-result v0

    iput v0, v1, Lcom/loc/cs$a;->a:I

    iput-wide v2, v1, Lcom/loc/cs$a;->b:J

    iput-boolean v10, v1, Lcom/loc/cs$a;->c:Z

    :cond_1
    :goto_2
    invoke-virtual {p2, v6, v7, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget v5, v1, Lcom/loc/cs$a;->a:I

    invoke-interface {v0}, Lcom/loc/cr;->b()I

    move-result v8

    if-eq v5, v8, :cond_1

    invoke-interface {v0}, Lcom/loc/cr;->b()I

    move-result v0

    iput v0, v1, Lcom/loc/cs$a;->a:I

    iput-wide v2, v1, Lcom/loc/cs$a;->b:J

    iput-boolean v10, v1, Lcom/loc/cs$a;->c:Z

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method final a(J)S
    .locals 1

    iget-object v0, p0, Lcom/loc/cs;->a:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p2}, Lcom/loc/cs;->a(Landroid/util/LongSparseArray;J)S

    move-result v0

    return v0
.end method

.method final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/loc/cs;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/cs;->a:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/loc/cs;->b:Landroid/util/LongSparseArray;

    invoke-static {p1, v0, v2}, Lcom/loc/cs;->a(Ljava/util/List;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    iget-object v0, p0, Lcom/loc/cs;->a:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/loc/cs;->b:Landroid/util/LongSparseArray;

    iput-object v2, p0, Lcom/loc/cs;->a:Landroid/util/LongSparseArray;

    iput-object v0, p0, Lcom/loc/cs;->b:Landroid/util/LongSparseArray;

    iget-object v0, p0, Lcom/loc/cs;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final b(J)S
    .locals 1

    iget-object v0, p0, Lcom/loc/cs;->c:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p2}, Lcom/loc/cs;->a(Landroid/util/LongSparseArray;J)S

    move-result v0

    return v0
.end method

.method final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/cr;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/loc/cs;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/cs;->c:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/loc/cs;->d:Landroid/util/LongSparseArray;

    invoke-static {p1, v0, v2}, Lcom/loc/cs;->a(Ljava/util/List;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    iget-object v0, p0, Lcom/loc/cs;->c:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/loc/cs;->d:Landroid/util/LongSparseArray;

    iput-object v2, p0, Lcom/loc/cs;->c:Landroid/util/LongSparseArray;

    iput-object v0, p0, Lcom/loc/cs;->d:Landroid/util/LongSparseArray;

    iget-object v0, p0, Lcom/loc/cs;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
