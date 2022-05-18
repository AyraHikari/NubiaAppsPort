.class public final Lcom/loc/do;
.super Ljava/lang/Object;
.source "CollectionManager.java"

# interfaces
.implements Lcom/loc/dk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/do$b;,
        Lcom/loc/do$a;
    }
.end annotation


# static fields
.field private static k:J


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/loc/dx;

.field c:Lcom/loc/dw;

.field d:Lcom/loc/cu;

.field e:Lcom/loc/ax;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/ca;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Landroid/location/LocationManager;

.field private i:Lcom/loc/do$a;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/loc/do;->k:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/do;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/loc/do;->b:Lcom/loc/dx;

    iput-object v1, p0, Lcom/loc/do;->c:Lcom/loc/dw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/do;->j:Z

    iput-object p1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    new-instance v0, Lcom/loc/ax;

    invoke-direct {v0}, Lcom/loc/ax;-><init>()V

    iput-object v0, p0, Lcom/loc/do;->e:Lcom/loc/ax;

    iget-object v0, p0, Lcom/loc/do;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/do;->e:Lcom/loc/ax;

    sget-object v2, Lcom/loc/z;->k:Ljava/lang/String;

    const/16 v3, 0x64

    const v4, 0xfa000

    const-string v5, "0"

    invoke-static/range {v0 .. v5}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v6, p0, Lcom/loc/do;->e:Lcom/loc/ax;

    new-instance v7, Lcom/loc/bp;

    sget v8, Lcom/loc/ei;->g:I

    const-string v9, "kKey"

    new-instance v0, Lcom/loc/bn;

    sget-boolean v2, Lcom/loc/ei;->e:Z

    sget v3, Lcom/loc/ei;->f:I

    sget v1, Lcom/loc/ei;->f:I

    mul-int/lit8 v4, v1, 0xa

    const-string v5, "carrierLocKey"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/bn;-><init>(Landroid/content/Context;ZIILjava/lang/String;)V

    invoke-direct {v7, p1, v8, v9, v0}, Lcom/loc/bp;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/loc/bq;)V

    iput-object v7, v6, Lcom/loc/ax;->f:Lcom/loc/bq;

    iget-object v0, p0, Lcom/loc/do;->e:Lcom/loc/ax;

    new-instance v1, Lcom/loc/am;

    invoke-direct {v1}, Lcom/loc/am;-><init>()V

    iput-object v1, v0, Lcom/loc/ax;->e:Lcom/loc/ak;

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/loc/do;->k:J

    return-wide p0
.end method

.method static synthetic a(Lcom/loc/ao;Lcom/loc/ax;Ljava/util/List;[B)Ljava/util/List;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/loc/do;->b(Lcom/loc/ao;Lcom/loc/ax;Ljava/util/List;[B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/ao;Ljava/util/List;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/loc/ao;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "aps"

    const-string v2, "dlo"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/ao;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/do;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/do;->j:Z

    return v0
.end method

.method private static a(I)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, p0}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/do;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/loc/do;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static b(Lcom/loc/ao;Lcom/loc/ax;Ljava/util/List;[B)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loc/ao;",
            "Lcom/loc/ax;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/util/List",
            "<",
            "Lcom/loc/ca;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/loc/ao;->b()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    move v1, v3

    :goto_1
    if-ge v6, v8, :cond_7

    aget-object v5, v7, v6

    const-string v3, ".0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_1
    const-string v9, "\\."

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    aget-object v9, v5, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/loc/ao;->a(Ljava/lang/String;)Lcom/loc/ao$b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Lcom/loc/ao$b;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v4}, Lcom/loc/ao$b;->a()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    if-nez v3, :cond_4

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :cond_3
    :goto_3
    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Lcom/loc/ao$b;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    const/4 v10, 0x2

    :try_start_6
    new-array v10, v10, [B

    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    invoke-static {v10}, Lcom/loc/ep;->b([B)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    const v11, 0xffff

    if-le v10, v11, :cond_8

    :cond_5
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Lcom/loc/ao$b;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    :cond_7
    :goto_5
    move-object v1, v2

    goto :goto_0

    :cond_8
    :try_start_9
    new-array v10, v10, [B

    invoke-virtual {v3, v10}, Ljava/io/InputStream;->read([B)I

    const/4 v11, 0x2

    new-array v11, v11, [B

    :goto_6
    invoke-virtual {v3, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-ltz v12, :cond_a

    invoke-static {v11}, Lcom/loc/ep;->b([B)I

    move-result v12

    new-array v12, v12, [B

    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/loc/o;->a([B[B[B)[B

    move-result-object v12

    array-length v13, v12

    add-int/2addr v5, v13

    const/4 v13, 0x4

    new-array v13, v13, [B

    invoke-virtual {v3, v13}, Ljava/io/InputStream;->read([B)I

    const/4 v14, 0x3

    aget-byte v14, v13, v14

    and-int/lit16 v14, v14, 0xff

    const/4 v15, 0x2

    aget-byte v15, v13, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    const/4 v15, 0x1

    aget-byte v15, v13, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    const/4 v15, 0x0

    aget-byte v13, v13, v15

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    or-int/2addr v13, v14

    new-instance v14, Lcom/loc/ca;

    invoke-static {v12}, Lcom/loc/u;->b([B)[B

    move-result-object v12

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v15

    move-object/from16 v0, p3

    invoke-static {v0, v12, v15}, Lcom/loc/o;->b([B[B[B)[B

    move-result-object v12

    invoke-direct {v14, v13, v12}, Lcom/loc/ca;-><init>(I[B)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    :catch_1
    move-exception v5

    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_c

    :cond_9
    :goto_7
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v4}, Lcom/loc/ao$b;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v3

    goto/16 :goto_2

    :cond_a
    add-int/2addr v1, v5

    :try_start_c
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/loc/ax;->f:Lcom/loc/bq;

    invoke-virtual {v5}, Lcom/loc/bq;->b()I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v5

    if-le v1, v5, :cond_c

    if-eqz v3, :cond_b

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a

    :cond_b
    :goto_8
    if-eqz v4, :cond_7

    :try_start_e
    invoke-virtual {v4}, Lcom/loc/ao$b;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v1

    goto/16 :goto_5

    :cond_c
    if-eqz v3, :cond_d

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    :cond_d
    :goto_9
    if-eqz v4, :cond_1

    :try_start_10
    invoke-virtual {v4}, Lcom/loc/ao$b;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v3

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_e

    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d

    :cond_e
    :goto_a
    if-eqz v4, :cond_f

    :try_start_12
    invoke-virtual {v4}, Lcom/loc/ao$b;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_e

    :cond_f
    :goto_b
    :try_start_13
    throw v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5

    :catch_5
    move-exception v1

    const-string v3, "aps"

    const-string v4, "upc"

    invoke-static {v1, v3, v4}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object v1, v2

    goto/16 :goto_0

    :catch_6
    move-exception v3

    goto/16 :goto_2

    :catch_7
    move-exception v3

    goto/16 :goto_3

    :catch_8
    move-exception v1

    goto/16 :goto_4

    :catch_9
    move-exception v1

    goto/16 :goto_5

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v3

    goto :goto_9

    :catch_c
    move-exception v3

    goto :goto_7

    :catch_d
    move-exception v3

    goto :goto_a

    :catch_e
    move-exception v3

    goto :goto_b
.end method

.method private static b(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static synthetic c(Lcom/loc/do;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/do;->f()V

    return-void
.end method

.method static synthetic e()[B
    .locals 1

    const/16 v0, 0x80

    invoke-static {v0}, Lcom/loc/do;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/do;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/loc/do;->f:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/loc/do;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/loc/do;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x100

    invoke-static {v2}, Lcom/loc/do;->a(I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    invoke-static {v3}, Lcom/loc/do;->b(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ca;

    invoke-virtual {v0}, Lcom/loc/ca;->b()[B

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    array-length v5, v4

    const v6, 0xffff

    if-gt v5, v6, :cond_2

    invoke-static {}, Lcom/loc/u;->c()[B

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/loc/o;->b([B[B[B)[B

    move-result-object v4

    array-length v5, v4

    invoke-static {v5}, Lcom/loc/do;->b(I)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v0}, Lcom/loc/ca;->a()I

    move-result v0

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    shr-int/lit8 v6, v0, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "clm"

    const-string v2, "wtD"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/do;->e:Lcom/loc/ax;

    invoke-static {v1, v0, v2}, Lcom/loc/ay;->a(Ljava/lang/String;[BLcom/loc/ax;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/loc/di;)Lcom/loc/dj;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/ed;

    invoke-direct {v0}, Lcom/loc/ed;-><init>()V

    iget-object v1, p1, Lcom/loc/di;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/loc/ed;->a(Ljava/util/Map;)V

    iget-object v1, p1, Lcom/loc/di;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/ed;->a(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/loc/di;->d:[B

    invoke-virtual {v0, v1}, Lcom/loc/ed;->a([B)V

    invoke-static {}, Lcom/loc/aq;->a()Lcom/loc/aq;

    invoke-static {v0}, Lcom/loc/aq;->c(Lcom/loc/av;)Lcom/loc/aw;

    move-result-object v1

    new-instance v0, Lcom/loc/dj;

    invoke-direct {v0}, Lcom/loc/dj;-><init>()V

    iget-object v2, v1, Lcom/loc/aw;->a:[B

    iput-object v2, v0, Lcom/loc/dj;->c:[B

    iget-object v1, v1, Lcom/loc/aw;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/loc/dj;->b:Ljava/util/Map;

    const/16 v1, 0xc8

    iput v1, v0, Lcom/loc/dj;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    invoke-virtual {v0}, Lcom/loc/do$a;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/loc/do;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/loc/do;->f()V

    iget-object v0, p0, Lcom/loc/do;->b:Lcom/loc/dx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/dx;->a(Lcom/loc/do;)V

    iget-object v0, p0, Lcom/loc/do;->c:Lcom/loc/dw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/dw;->a(Lcom/loc/do;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/do;->c:Lcom/loc/dw;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/do;->b:Lcom/loc/dx;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/do;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/do;->j:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "clm"

    const-string v2, "stc"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/do;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do;->g:Landroid/os/Handler;

    new-instance v1, Lcom/loc/do$b;

    invoke-direct {v1, p0, p1}, Lcom/loc/do$b;-><init>(Lcom/loc/do;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "cl"

    const-string v2, "olcc"

    invoke-static {v0, v1, v2}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/loc/dw;Lcom/loc/dx;Landroid/os/Handler;)V
    .locals 6

    iget-boolean v0, p0, Lcom/loc/do;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/do;->j:Z

    iput-object p1, p0, Lcom/loc/do;->c:Lcom/loc/dw;

    iput-object p2, p0, Lcom/loc/do;->b:Lcom/loc/dx;

    iget-object v0, p0, Lcom/loc/do;->b:Lcom/loc/dx;

    invoke-virtual {v0, p0}, Lcom/loc/dx;->a(Lcom/loc/do;)V

    iget-object v0, p0, Lcom/loc/do;->c:Lcom/loc/dw;

    invoke-virtual {v0, p0}, Lcom/loc/dw;->a(Lcom/loc/do;)V

    iput-object p3, p0, Lcom/loc/do;->g:Landroid/os/Handler;

    :try_start_0
    iget-object v0, p0, Lcom/loc/do;->h:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/do;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/do;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/do;->h:Landroid/location/LocationManager;

    :cond_2
    iget-object v0, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/do$a;

    invoke-direct {v0, p0}, Lcom/loc/do$a;-><init>(Lcom/loc/do;)V

    iput-object v0, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    :cond_3
    iget-object v0, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    invoke-virtual {v0, p0}, Lcom/loc/do$a;->a(Lcom/loc/do;)V

    iget-object v0, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/do;->h:Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/do;->h:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/high16 v4, -0x40800000    # -1.0f

    iget-object v5, p0, Lcom/loc/do;->i:Lcom/loc/do$a;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_4
    iget-object v0, p0, Lcom/loc/do;->d:Lcom/loc/cu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cu;

    const-string v1, "5.2.0"

    iget-object v2, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "S128DF1572465B890OE3F7A13167KLEI"

    iget-object v4, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/cu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/dk;)V

    iput-object v0, p0, Lcom/loc/do;->d:Lcom/loc/cu;

    iget-object v0, p0, Lcom/loc/do;->d:Lcom/loc/cu;

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cu;->a(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cu;->b(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cu;->c(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cu;->d(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cu;->e(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cu;->f(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/cu;->g(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/cu;->h(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/cu;->i(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Lcom/loc/cu;->a(I)Lcom/loc/cu;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/cu;->j(Ljava/lang/String;)Lcom/loc/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/dd;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/loc/cu;->a(J)Lcom/loc/cu;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/do;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/n;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cu;->k(Ljava/lang/String;)Lcom/loc/cu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "col"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/do;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do;->g:Landroid/os/Handler;

    new-instance v1, Lcom/loc/do$1;

    invoke-direct {v1, p0}, Lcom/loc/do$1;-><init>(Lcom/loc/do;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "cl"

    const-string v2, "upw"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/do;->d:Lcom/loc/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do;->c:Lcom/loc/dw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/do;->c:Lcom/loc/dw;

    invoke-virtual {v0}, Lcom/loc/dw;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cu;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "cl"

    const-string v2, "upc"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/loc/do;->k:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/do$b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/loc/do$b;-><init>(Lcom/loc/do;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
