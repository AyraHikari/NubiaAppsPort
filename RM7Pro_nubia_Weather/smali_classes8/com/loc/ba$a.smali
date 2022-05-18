.class final Lcom/loc/ba$a;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/loc/az;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    iput p2, p0, Lcom/loc/ba$a;->a:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/loc/az;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/loc/ba$a;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/loc/ba$a;->c:Lcom/loc/az;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/loc/ba$a;->a:I

    if-ne v0, v1, :cond_2

    :try_start_0
    const-class v6, Lcom/loc/ba;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/loc/ba;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/ax;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    sget-object v2, Lcom/loc/z;->i:Ljava/lang/String;

    sget v3, Lcom/loc/ba;->a:I

    const/high16 v4, 0x200000

    const-string v5, "6"

    invoke-static/range {v0 .. v5}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/loc/ax;->e:Lcom/loc/ak;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/aj;

    new-instance v2, Lcom/loc/al;

    new-instance v3, Lcom/loc/an;

    new-instance v4, Lcom/loc/al;

    invoke-direct {v4}, Lcom/loc/al;-><init>()V

    invoke-direct {v3, v4}, Lcom/loc/an;-><init>(Lcom/loc/ak;)V

    invoke-direct {v2, v3}, Lcom/loc/al;-><init>(Lcom/loc/ak;)V

    invoke-direct {v0, v2}, Lcom/loc/aj;-><init>(Lcom/loc/ak;)V

    iput-object v0, v1, Lcom/loc/ax;->e:Lcom/loc/ak;

    :cond_0
    iget-object v0, p0, Lcom/loc/ba$a;->c:Lcom/loc/az;

    invoke-virtual {v0}, Lcom/loc/az;->a()[B

    move-result-object v0

    invoke-static {v7, v0, v1}, Lcom/loc/ay;->a(Ljava/lang/String;[BLcom/loc/ax;)V

    monitor-exit v6

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "aple"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/loc/ba$a;->a:I

    if-ne v0, v2, :cond_1

    :try_start_3
    invoke-static {}, Lcom/loc/ba;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/ax;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    sget-object v2, Lcom/loc/z;->i:Ljava/lang/String;

    sget v3, Lcom/loc/ba;->a:I

    const/high16 v4, 0x200000

    const-string v5, "6"

    invoke-static/range {v0 .. v5}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V

    const v0, 0xdbba00

    iput v0, v1, Lcom/loc/ax;->h:I

    iget-object v0, v1, Lcom/loc/ax;->g:Lcom/loc/bk;

    if-nez v0, :cond_3

    new-instance v5, Lcom/loc/aj;

    new-instance v0, Lcom/loc/al;

    new-instance v2, Lcom/loc/an;

    invoke-direct {v2}, Lcom/loc/an;-><init>()V

    invoke-direct {v0, v2}, Lcom/loc/al;-><init>(Lcom/loc/ak;)V

    invoke-direct {v5, v0}, Lcom/loc/aj;-><init>(Lcom/loc/ak;)V

    new-instance v0, Lcom/loc/bh;

    new-instance v2, Lcom/loc/bg;

    iget-object v3, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    new-instance v4, Lcom/loc/bl;

    invoke-direct {v4}, Lcom/loc/bl;-><init>()V

    new-instance v6, Ljava/lang/String;

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/loc/v;->a(I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/n;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {}, Lcom/loc/n;->a()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/n;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xa

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/loc/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/loc/bg;-><init>(Landroid/content/Context;Lcom/loc/bk;Lcom/loc/ak;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/loc/bh;-><init>(Lcom/loc/bk;)V

    iput-object v0, v1, Lcom/loc/ax;->g:Lcom/loc/bk;

    :cond_3
    iget-object v0, v1, Lcom/loc/ax;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "fKey"

    iput-object v0, v1, Lcom/loc/ax;->i:Ljava/lang/String;

    :cond_4
    new-instance v0, Lcom/loc/bp;

    iget-object v9, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    iget v10, v1, Lcom/loc/ax;->h:I

    iget-object v11, v1, Lcom/loc/ax;->i:Ljava/lang/String;

    new-instance v2, Lcom/loc/bn;

    iget-object v3, p0, Lcom/loc/ba$a;->b:Landroid/content/Context;

    sget-boolean v4, Lcom/loc/ba;->b:Z

    invoke-static {}, Lcom/loc/ba;->b()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    sget v6, Lcom/loc/ba;->c:I

    mul-int/lit16 v6, v6, 0x400

    const-string v7, "offLocKey"

    sget v8, Lcom/loc/ba;->d:I

    mul-int/lit16 v8, v8, 0x400

    invoke-direct/range {v2 .. v8}, Lcom/loc/bn;-><init>(Landroid/content/Context;ZIILjava/lang/String;I)V

    invoke-direct {v0, v9, v10, v11, v2}, Lcom/loc/bp;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/loc/bq;)V

    iput-object v0, v1, Lcom/loc/ax;->f:Lcom/loc/bq;

    invoke-static {v1}, Lcom/loc/ay;->a(Lcom/loc/ax;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "uold"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
