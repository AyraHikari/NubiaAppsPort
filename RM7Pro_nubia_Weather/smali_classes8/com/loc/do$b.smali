.class final Lcom/loc/do$b;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/do;

.field private b:I

.field private c:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/loc/do;I)V
    .locals 1

    iput-object p1, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/do$b;->b:I

    iput p2, p0, Lcom/loc/do$b;->b:I

    return-void
.end method

.method constructor <init>(Lcom/loc/do;Landroid/location/Location;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/loc/do$b;-><init>(Lcom/loc/do;I)V

    iput-object p2, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v2, 0x3

    const/4 v1, 0x1

    iget v0, p0, Lcom/loc/do$b;->b:I

    if-ne v0, v1, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    invoke-static {v0}, Lcom/loc/do;->a(Lcom/loc/do;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    const-string v0, "satellites"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/loc/ep;->a(Landroid/location/Location;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v1, v1, Lcom/loc/do;->b:Lcom/loc/dx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v1, v1, Lcom/loc/do;->b:Lcom/loc/dx;

    iget-boolean v1, v1, Lcom/loc/dx;->r:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v1, v1, Lcom/loc/do;->b:Lcom/loc/dx;

    invoke-virtual {v1}, Lcom/loc/dx;->f()V

    :cond_3
    iget-object v1, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v1, v1, Lcom/loc/do;->b:Lcom/loc/dx;

    invoke-virtual {v1}, Lcom/loc/dx;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v2, v2, Lcom/loc/do;->c:Lcom/loc/dw;

    invoke-virtual {v2}, Lcom/loc/dw;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/loc/by$a;

    invoke-direct {v3}, Lcom/loc/by$a;-><init>()V

    new-instance v4, Lcom/loc/dc;

    invoke-direct {v4}, Lcom/loc/dc;-><init>()V

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    iput v5, v4, Lcom/loc/dc;->i:F

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/loc/dc;->f:D

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/loc/dc;->d:D

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    iput v5, v4, Lcom/loc/dc;->h:F

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iput-wide v6, v4, Lcom/loc/dc;->e:D

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v5

    iput-boolean v5, v4, Lcom/loc/dc;->j:Z

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/loc/dc;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v5

    iput v5, v4, Lcom/loc/dc;->g:F

    int-to-byte v0, v0

    iput-byte v0, v4, Lcom/loc/dc;->l:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/loc/dc;->b:J

    iget-object v0, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/loc/dc;->c:J

    iget-object v0, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/loc/dc;->k:J

    iput-object v4, v3, Lcom/loc/by$a;->a:Lcom/loc/dc;

    iput-object v1, v3, Lcom/loc/by$a;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->b:Lcom/loc/dx;

    invoke-virtual {v0}, Lcom/loc/dx;->c()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dd;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/loc/by$a;->c:J

    :cond_4
    sget-wide v0, Lcom/loc/dx;->w:J

    iput-wide v0, v3, Lcom/loc/by$a;->d:J

    iget-object v0, p0, Lcom/loc/do$b;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/loc/by$a;->f:J

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->p(Landroid/content/Context;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, v3, Lcom/loc/by$a;->g:B

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/by$a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->b:Lcom/loc/dx;

    iget-boolean v0, v0, Lcom/loc/dx;->q:Z

    iput-boolean v0, v3, Lcom/loc/by$a;->e:Z

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ep;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/loc/by$a;->j:Z

    iput-object v2, v3, Lcom/loc/by$a;->i:Ljava/util/List;

    invoke-static {v3}, Lcom/loc/cu;->a(Lcom/loc/by$a;)Lcom/loc/ca;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    invoke-static {v1}, Lcom/loc/do;->b(Lcom/loc/do;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    invoke-static {v2}, Lcom/loc/do;->b(Lcom/loc/do;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    invoke-static {v0}, Lcom/loc/do;->b(Lcom/loc/do;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_5

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/loc/do$b;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lcom/loc/do$b;-><init>(Lcom/loc/do;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    invoke-virtual {v0}, Lcom/loc/do;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "cl"

    const-string v2, "coll"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    iget v0, p0, Lcom/loc/do$b;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v1, 0x0

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/loc/do;->a(J)J

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v0, v0, Lcom/loc/do;->e:Lcom/loc/ax;

    iget-object v0, v0, Lcom/loc/ax;->f:Lcom/loc/bq;

    invoke-virtual {v0}, Lcom/loc/bq;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v2, v2, Lcom/loc/do;->e:Lcom/loc/ax;

    iget-object v2, v2, Lcom/loc/ax;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v2, v2, Lcom/loc/do;->e:Lcom/loc/ax;

    iget-wide v2, v2, Lcom/loc/ax;->b:J

    invoke-static {v0, v2, v3}, Lcom/loc/ao;->a(Ljava/io/File;J)Lcom/loc/ao;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/loc/do;->e()[B
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v2

    if-nez v2, :cond_7

    :try_start_8
    invoke-virtual {v1}, Lcom/loc/ao;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_7
    :try_start_9
    iget-object v3, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v3, v3, Lcom/loc/do;->e:Lcom/loc/ax;

    invoke-static {v1, v3, v0, v2}, Lcom/loc/do;->a(Lcom/loc/ao;Lcom/loc/ax;Ljava/util/List;[B)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    :try_start_a
    invoke-virtual {v1}, Lcom/loc/ao;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_9
    :try_start_b
    iget-object v4, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    iget-object v4, v4, Lcom/loc/do;->e:Lcom/loc/ax;

    iget-object v4, v4, Lcom/loc/ax;->f:Lcom/loc/bq;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/loc/bq;->a(Z)V

    invoke-static {}, Lcom/loc/cu;->a()[B

    move-result-object v4

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/loc/o;->b([B[B[B)[B

    move-result-object v4

    invoke-static {v2}, Lcom/loc/dy;->a([B)[B

    move-result-object v2

    invoke-static {v2, v4, v3}, Lcom/loc/cu;->a([B[BLjava/util/List;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/loc/u;->b([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cu;->a([B)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1, v0}, Lcom/loc/do;->a(Lcom/loc/ao;Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_a
    if-eqz v1, :cond_0

    :try_start_c
    invoke-virtual {v1}, Lcom/loc/ao;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_d
    const-string v2, "leg"

    const-string v3, "uts"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v1, :cond_0

    :try_start_e
    invoke-virtual {v1}, Lcom/loc/ao;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_b

    :try_start_f
    invoke-virtual {v1}, Lcom/loc/ao;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    :cond_b
    :goto_2
    throw v0

    :cond_c
    iget v0, p0, Lcom/loc/do$b;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/loc/do$b;->a:Lcom/loc/do;

    invoke-static {v0}, Lcom/loc/do;->c(Lcom/loc/do;)V

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method
