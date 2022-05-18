.class public abstract Lcom/loc/ar;
.super Lcom/loc/q;
.source "BinaryRequest.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/loc/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/t;)V
    .locals 1

    invoke-direct {p0}, Lcom/loc/q;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ar;->a:Landroid/content/Context;

    :cond_0
    iput-object p2, p0, Lcom/loc/ar;->b:Lcom/loc/t;

    return-void
.end method

.method private static q()[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v0, "PANDORA$"

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "bre"

    const-string v3, "gbh"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "bre"

    const-string v3, "gbh"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "bre"

    const-string v2, "gbh"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "bre"

    const-string v3, "gbh"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private r()[B
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput-byte v5, v0, v4

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/loc/ar;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/loc/ar;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/loc/ar;->l()Z

    move-result v5

    iget-object v0, p0, Lcom/loc/ar;->b:Lcom/loc/t;

    if-eqz v0, :cond_0

    const-string v0, "navi"

    iget-object v6, p0, Lcom/loc/ar;->b:Lcom/loc/t;

    invoke-virtual {v6}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, v5, v0}, Lcom/loc/m;->a(Landroid/content/Context;ZZ)[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v4}, Lcom/loc/u;->a(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_1
    invoke-virtual {p0}, Lcom/loc/ar;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    array-length v4, v0

    invoke-static {v4}, Lcom/loc/u;->a(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_2
    invoke-virtual {p0}, Lcom/loc/ar;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    array-length v4, v0

    invoke-static {v4}, Lcom/loc/u;->a(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    const-string v4, "bre"

    const-string v5, "gpd"

    invoke-static {v0, v4, v5}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    new-array v0, v1, [B

    aput-byte v2, v0, v2

    goto :goto_4

    :cond_2
    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    throw v0

    :cond_3
    const/4 v0, 0x2

    :try_start_7
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "bre"

    const-string v3, "gred"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v3, "bre"

    const-string v4, "gred"

    invoke-static {v0, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v1

    const-string v2, "bre"

    const-string v3, "gred"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private s()[B
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/ar;->a_()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "bre"

    const-string v3, "grrd"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    array-length v2, v0

    invoke-static {v2}, Lcom/loc/u;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "bre"

    const-string v3, "grrd"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "bre"

    const-string v3, "grrd"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "bre"

    const-string v2, "grrd"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "bre"

    const-string v3, "grrd"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private t()[B
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/ar;->f()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "bre"

    const-string v3, "gred"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :try_start_2
    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v0}, Lcom/loc/o;->a([B)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v2}, Lcom/loc/u;->a(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "bre"

    const-string v3, "gred"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    const-string v2, "bre"

    const-string v3, "gred"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    new-array v0, v6, [B

    aput-byte v5, v0, v5

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "bre"

    const-string v2, "gred"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "bre"

    const-string v3, "gred"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract a_()[B
.end method

.method public b_()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ar;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/loc/m;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/ar;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/loc/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "ts"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scode"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public final e()[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/loc/ar;->q()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0}, Lcom/loc/ar;->r()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0}, Lcom/loc/ar;->s()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-direct {p0}, Lcom/loc/ar;->t()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "bre"

    const-string v3, "geb"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "bre"

    const-string v3, "geb"

    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "bre"

    const-string v2, "geb"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "bre"

    const-string v3, "geb"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public abstract f()[B
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1"

    return-object v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    const-string v0, "platform=Android&sdkversion=%s&product=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/loc/ar;->b:Lcom/loc/t;

    invoke-virtual {v3}, Lcom/loc/t;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/loc/ar;->b:Lcom/loc/t;

    invoke-virtual {v3}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
