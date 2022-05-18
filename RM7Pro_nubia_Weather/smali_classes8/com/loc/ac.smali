.class public Lcom/loc/ac;
.super Ljava/lang/Object;
.source "ErrorLogManager.java"


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loc/ax;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loc/bq;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/loc/bq;",
            ">;"
        }
    .end annotation
.end field

.field private static e:[Ljava/lang/String;

.field private static f:I

.field private static g:Z

.field private static h:I

.field private static i:Lcom/loc/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ac;->b:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/loc/ac;->e:[Ljava/lang/String;

    sput v1, Lcom/loc/ac;->f:I

    sput-boolean v1, Lcom/loc/ac;->g:Z

    sput v1, Lcom/loc/ac;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/loc/t;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/loc/z;->a()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz p0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/t;

    invoke-virtual {v0}, Lcom/loc/t;->f()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/loc/z;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    const-string v0, "com.amap.api.col"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-static {}, Lcom/loc/u;->a()Lcom/loc/t;
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/j;->printStackTrace()V

    :cond_5
    const-string v0, "com.amap.co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.amap.opensdk.co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.amap.location"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :try_start_1
    invoke-static {}, Lcom/loc/u;->b()Lcom/loc/t;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/loc/t;->a(Z)V
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/j;->printStackTrace()V

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/t;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const v4, 0xfa000

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/anr/traces.txt"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    if-le v0, v4, :cond_1

    sub-int/2addr v0, v4

    int-to-long v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_1
    new-instance v2, Lcom/loc/ap;

    sget-object v0, Lcom/loc/ao;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Lcom/loc/ap;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v5

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Lcom/loc/ap;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "pid"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :goto_2
    const-string v4, "\"main\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/loc/ap;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v0

    :goto_3
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    :cond_3
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Lcom/loc/ap;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_6
    sget-boolean v0, Lcom/loc/ac;->g:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/loc/ac;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_a

    :try_start_5
    sget v0, Lcom/loc/ac;->f:I

    const/16 v6, 0x9

    if-le v0, v6, :cond_6

    const/4 v0, 0x0

    sput v0, Lcom/loc/ac;->f:I

    :cond_6
    sget-object v0, Lcom/loc/ac;->e:[Ljava/lang/String;

    sget v6, Lcom/loc/ac;->f:I

    aput-object v4, v0, v6

    sget v0, Lcom/loc/ac;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/loc/ac;->f:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_7
    :try_start_6
    sget v0, Lcom/loc/ac;->h:I

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3

    sget-boolean v0, Lcom/loc/ac;->g:Z

    if-nez v0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/t;

    invoke-virtual {v0}, Lcom/loc/t;->f()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/loc/z;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/loc/ac;->g:Z

    if-eqz v7, :cond_7

    sput-object v0, Lcom/loc/ac;->i:Lcom/loc/t;

    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "alg"

    const-string v7, "aDa"

    invoke-static {v0, v6, v7}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_8
    move v4, v5

    goto/16 :goto_1

    :cond_9
    sget v0, Lcom/loc/ac;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/loc/ac;->h:I
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_a
    move v4, v5

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_8
    if-eqz v0, :cond_b

    :try_start_7
    invoke-virtual {v0}, Lcom/loc/ap;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_b
    :goto_9
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_6
    move-exception v0

    const-string v3, "alg"

    const-string v4, "getA"

    invoke-static {v0, v3, v4}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_a
    :try_start_9
    const-string v4, "alg"

    const-string v5, "getA"

    invoke-static {v0, v4, v5}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_c

    :try_start_a
    invoke-virtual {v2}, Lcom/loc/ap;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    :cond_c
    :goto_b
    if-eqz v3, :cond_4

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_6

    :catch_8
    move-exception v0

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_9
    move-exception v0

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v0, v2, v4}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_c
    if-eqz v2, :cond_d

    :try_start_c
    invoke-virtual {v2}, Lcom/loc/ap;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_a

    :cond_d
    :goto_d
    if-eqz v3, :cond_e

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_b

    :cond_e
    :goto_e
    throw v0

    :catch_a
    move-exception v1

    const-string v2, "alg"

    const-string v4, "getA"

    invoke-static {v1, v2, v4}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_b
    move-exception v1

    const-string v2, "alg"

    const-string v3, "getA"

    invoke-static {v1, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_f
    move-object v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_c
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catch_d
    move-exception v0

    goto :goto_a

    :catch_e
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_8

    :catch_f
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_8

    :cond_10
    move v5, v4

    move-object v4, v0

    goto/16 :goto_3
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/loc/ac;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/loc/z;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/loc/ac;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/loc/ac;->i:Lcom/loc/t;

    if-eqz v1, :cond_0

    const-string v1, "ANR"

    sget-object v2, Lcom/loc/ac;->i:Lcom/loc/t;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3, v1, v0}, Lcom/loc/ac;->a(Landroid/content/Context;Lcom/loc/t;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/loc/bq;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/loc/ab;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/loc/ac$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/loc/ac$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/bq;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/loc/t;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/u;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/t;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/loc/k;->a(Landroid/content/Context;)Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ",\"timestamp\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\",\"et\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, "\",\"classname\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\"detail\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p4}, Lcom/loc/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    sget-object v2, Lcom/loc/z;->b:Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/loc/ac;->a:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/loc/bd;->a(Ljava/lang/ref/WeakReference;)Lcom/loc/ax;

    move-result-object v1

    const/16 v3, 0x3e8

    const v4, 0x3e8000

    const-string v5, "1"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/loc/bd;->a(Landroid/content/Context;Lcom/loc/ax;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/loc/ax;->e:Lcom/loc/ak;

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/ai;

    new-instance v2, Lcom/loc/aj;

    new-instance v3, Lcom/loc/al;

    new-instance v4, Lcom/loc/an;

    invoke-direct {v4}, Lcom/loc/an;-><init>()V

    invoke-direct {v3, v4}, Lcom/loc/al;-><init>(Lcom/loc/ak;)V

    invoke-direct {v2, v3}, Lcom/loc/aj;-><init>(Lcom/loc/ak;)V

    invoke-direct {v0, v2}, Lcom/loc/ai;-><init>(Lcom/loc/ak;)V

    iput-object v0, v1, Lcom/loc/ax;->e:Lcom/loc/ak;

    :cond_2
    :try_start_0
    const-string v0, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v7, v0, v1}, Lcom/loc/ay;->a(Ljava/lang/String;[BLcom/loc/ax;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    sget-object v2, Lcom/loc/z;->d:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-nez p2, :cond_0

    sget-object v2, Lcom/loc/z;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/loc/u;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ac;->a(Ljava/lang/String;)Lcom/loc/t;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ac;->a(Lcom/loc/t;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "\n"

    const-string v3, "<br/>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_2

    const-string v4, "class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p4, :cond_3

    const-string v4, " method:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$<br/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, p2, v2, v0}, Lcom/loc/ac;->a(Landroid/content/Context;Lcom/loc/t;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Lcom/loc/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/loc/ac;->a(Lcom/loc/t;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, p0, v0, p2, p3}, Lcom/loc/ac;->a(Landroid/content/Context;Lcom/loc/t;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lcom/loc/t;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/loc/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget v0, Lcom/loc/ac;->f:I

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/loc/ac;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v2, Lcom/loc/ac;->f:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/loc/ac;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "alg"

    const-string v3, "gLI"

    invoke-static {v0, v2, v3}, Lcom/loc/ab;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/loc/bo;

    sget-boolean v1, Lcom/loc/ac;->b:Z

    invoke-direct {v0, v1}, Lcom/loc/bo;-><init>(Z)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/loc/ac;->b:Z

    sget-object v1, Lcom/loc/z;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/loc/ac;->a(Landroid/content/Context;Lcom/loc/bq;Ljava/lang/String;)V

    return-void
.end method

.method static c(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/loc/ac;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/ac;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/loc/bp;

    const v2, 0x36ee80

    const-string v3, "hKey"

    new-instance v4, Lcom/loc/br;

    invoke-direct {v4, p0}, Lcom/loc/br;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/loc/bp;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/loc/bq;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/loc/ac;->c:Ljava/lang/ref/WeakReference;

    :cond_1
    sget-object v0, Lcom/loc/ac;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bq;

    sget-object v1, Lcom/loc/z;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/loc/ac;->a(Landroid/content/Context;Lcom/loc/bq;Ljava/lang/String;)V

    return-void
.end method

.method static d(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Lcom/loc/ac;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/ac;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/loc/bp;

    const v2, 0x36ee80

    const-string v3, "gKey"

    new-instance v4, Lcom/loc/br;

    invoke-direct {v4, p0}, Lcom/loc/br;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/loc/bp;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/loc/bq;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/loc/ac;->d:Ljava/lang/ref/WeakReference;

    :cond_1
    sget-object v0, Lcom/loc/ac;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bq;

    sget-object v1, Lcom/loc/z;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/loc/ac;->a(Landroid/content/Context;Lcom/loc/bq;Ljava/lang/String;)V

    return-void
.end method
