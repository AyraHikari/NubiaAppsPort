.class final Lcom/loc/bc$a;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:I

.field static b:I

.field static c:I


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/loc/bb;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loc/bb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/loc/bc$a;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/loc/bc$a;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/loc/bc$a;->c:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    iput p2, p0, Lcom/loc/bc$a;->f:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILcom/loc/bb;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loc/bc$a;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/loc/bc$a;->e:Lcom/loc/bb;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/loc/bb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/loc/bc$a;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/loc/bc$a;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lcom/loc/bc$a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/bc$a;->e:Lcom/loc/bb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-class v1, Lcom/loc/bc;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bc$a;->e:Lcom/loc/bb;

    if-nez v0, :cond_3

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "stm"

    const-string v2, "as"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bc$a;->e:Lcom/loc/bb;

    invoke-virtual {v2}, Lcom/loc/bb;->a()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/bc;->a(Landroid/content/Context;[B)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/loc/bc$a;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :try_start_4
    const-class v4, Lcom/loc/bc;

    monitor-enter v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v0, p0, Lcom/loc/bc$a;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    if-nez v0, :cond_6

    :cond_5
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "stm"

    const-string v2, "apb"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_7
    new-array v3, v0, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, p0, Lcom/loc/bc$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bb;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/loc/bb;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_2
    :try_start_a
    const-string v2, "stm"

    const-string v5, "aStB"

    invoke-static {v0, v2, v5}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v1, :cond_8

    :try_start_b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_8
    :goto_3
    move-object v0, v3

    :cond_9
    :goto_4
    :try_start_c
    iget-object v1, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/bc;->a(Landroid/content/Context;[B)V

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_0

    :cond_a
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v0

    if-eqz v1, :cond_9

    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_b

    :try_start_10
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_b
    :goto_6
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_c
    iget v0, p0, Lcom/loc/bc$a;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :try_start_12
    iget-object v0, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/bc;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bd;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/ax;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    sget-object v2, Lcom/loc/z;->h:Ljava/lang/String;

    const/16 v3, 0x3e8

    const v4, 0x4b000

    const-string v5, "2"

    invoke-static/range {v0 .. v5}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/loc/ax;->g:Lcom/loc/bk;

    if-nez v0, :cond_d

    new-instance v0, Lcom/loc/be;

    new-instance v2, Lcom/loc/bi;

    iget-object v3, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    new-instance v4, Lcom/loc/bf;

    new-instance v5, Lcom/loc/bj;

    new-instance v6, Lcom/loc/bl;

    invoke-direct {v6}, Lcom/loc/bl;-><init>()V

    invoke-direct {v5, v6}, Lcom/loc/bj;-><init>(Lcom/loc/bk;)V

    invoke-direct {v4, v5}, Lcom/loc/bf;-><init>(Lcom/loc/bk;)V

    invoke-direct {v2, v3, v4}, Lcom/loc/bi;-><init>(Landroid/content/Context;Lcom/loc/bk;)V

    invoke-direct {v0, v2}, Lcom/loc/be;-><init>(Lcom/loc/bk;)V

    iput-object v0, v1, Lcom/loc/ax;->g:Lcom/loc/bk;

    :cond_d
    const v0, 0x36ee80

    iput v0, v1, Lcom/loc/ax;->h:I

    iget-object v0, v1, Lcom/loc/ax;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "cKey"

    iput-object v0, v1, Lcom/loc/ax;->i:Ljava/lang/String;

    :cond_e
    iget-object v0, v1, Lcom/loc/ax;->f:Lcom/loc/bq;

    if-nez v0, :cond_f

    new-instance v0, Lcom/loc/bp;

    iget-object v9, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    iget v10, v1, Lcom/loc/ax;->h:I

    iget-object v11, v1, Lcom/loc/ax;->i:Ljava/lang/String;

    new-instance v12, Lcom/loc/bm;

    iget-object v13, v1, Lcom/loc/ax;->a:Ljava/lang/String;

    new-instance v2, Lcom/loc/bn;

    iget-object v3, p0, Lcom/loc/bc$a;->d:Landroid/content/Context;

    sget-boolean v4, Lcom/loc/bc;->a:Z

    invoke-static {}, Lcom/loc/bc;->b()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    sget v6, Lcom/loc/bc;->b:I

    mul-int/lit16 v6, v6, 0x400

    const-string v7, "staticUpdate"

    invoke-static {}, Lcom/loc/bc;->c()I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    invoke-direct/range {v2 .. v8}, Lcom/loc/bn;-><init>(Landroid/content/Context;ZIILjava/lang/String;I)V

    invoke-direct {v12, v13, v2}, Lcom/loc/bm;-><init>(Ljava/lang/String;Lcom/loc/bq;)V

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/loc/bp;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/loc/bq;)V

    iput-object v0, v1, Lcom/loc/ax;->f:Lcom/loc/bq;

    :cond_f
    invoke-static {v1}, Lcom/loc/ay;->a(Lcom/loc/ax;)I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "stm"

    const-string v2, "usd"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    goto/16 :goto_5

    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2
.end method
