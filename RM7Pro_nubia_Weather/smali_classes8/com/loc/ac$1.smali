.class final Lcom/loc/ac$1;
.super Ljava/lang/Object;
.source "ErrorLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ac;->a(Landroid/content/Context;Lcom/loc/bq;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/loc/bq;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/ac$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/ac$1;->c:Lcom/loc/bq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    const-class v8, Lcom/loc/ac;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/loc/ac;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/ax;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac$1;->b:Ljava/lang/String;

    const/16 v3, 0x3e8

    const v4, 0x3e8000

    const-string v5, "1"

    invoke-static/range {v0 .. v5}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/loc/ac$1;->c:Lcom/loc/bq;

    iput-object v0, v1, Lcom/loc/ax;->f:Lcom/loc/bq;

    iget-object v0, v1, Lcom/loc/ax;->g:Lcom/loc/bk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bh;

    new-instance v2, Lcom/loc/bg;

    iget-object v3, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    new-instance v4, Lcom/loc/bl;

    invoke-direct {v4}, Lcom/loc/bl;-><init>()V

    new-instance v5, Lcom/loc/aj;

    new-instance v6, Lcom/loc/al;

    new-instance v7, Lcom/loc/an;

    invoke-direct {v7}, Lcom/loc/an;-><init>()V

    invoke-direct {v6, v7}, Lcom/loc/al;-><init>(Lcom/loc/ak;)V

    invoke-direct {v5, v6}, Lcom/loc/aj;-><init>(Lcom/loc/ak;)V

    const-string v6, "QImtleSI6IiVzIiwicGxhdGZvcm0iOiJhbmRyb2lkIiwiZGl1IjoiJXMiLCJhZGl1IjoiJXMiLCJwa2ciOiIlcyIsIm1vZGVsIjoiJXMiLCJhcHBuYW1lIjoiJXMiLCJhcHB2ZXJzaW9uIjoiJXMiLCJzeXN2ZXJzaW9uIjoiJXMi"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/loc/n;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x4

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x5

    iget-object v10, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/loc/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/loc/ac$1;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/loc/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x7

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/loc/bg;-><init>(Landroid/content/Context;Lcom/loc/bk;Lcom/loc/ak;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/loc/bh;-><init>(Lcom/loc/bk;)V

    iput-object v0, v1, Lcom/loc/ax;->g:Lcom/loc/bk;

    :cond_0
    const v0, 0x36ee80

    iput v0, v1, Lcom/loc/ax;->h:I

    invoke-static {v1}, Lcom/loc/ay;->a(Lcom/loc/ax;)I

    monitor-exit v8

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "lg"

    const-string v2, "pul"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
