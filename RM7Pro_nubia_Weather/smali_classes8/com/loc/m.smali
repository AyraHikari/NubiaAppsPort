.class public final Lcom/loc/m;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/m$a;
    }
.end annotation


# direct methods
.method public static a()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "1"

    invoke-static {}, Lcom/loc/k;->a()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v2, "CI"

    const-string v3, "TS"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/k;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/r;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CI"

    const-string v3, "Sco"

    invoke-static {v1, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Lcom/loc/u;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/u;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/loc/u;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZZ)[B
    .locals 4

    :try_start_0
    new-instance v1, Lcom/loc/m$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/loc/m$a;-><init>(B)V

    invoke-static {p0}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/n;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, v1, Lcom/loc/m$a;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/m$a;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/m$a;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/m$a;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->i:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/n;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/n;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/n;->q(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/n;->p(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/n;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/n;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->p:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string v0, ""

    iput-object v0, v1, Lcom/loc/m$a;->q:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_8

    const-string v0, ""

    iput-object v0, v1, Lcom/loc/m$a;->r:Ljava/lang/String;

    :goto_1
    if-eqz p1, :cond_9

    const-string v0, ""

    iput-object v0, v1, Lcom/loc/m$a;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, v1, Lcom/loc/m$a;->t:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/loc/n;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->w:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v0, v1, Lcom/loc/m$a;->x:Ljava/lang/String;

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "aid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/n;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget-boolean v0, Lcom/loc/v;->d:Z

    if-nez v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/loc/v;->e:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/loc/n;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|oaid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    :cond_3
    const-string v0, ","

    invoke-static {p0, v0}, Lcom/loc/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|multiImeis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    :cond_4
    invoke-static {p0}, Lcom/loc/n;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|meid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|serial="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-static {}, Lcom/loc/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|adiuExtras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|storage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/loc/n;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|ram="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/n;->B(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|arch="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/loc/n;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/loc/m;->a(Lcom/loc/m$a;)[B

    move-result-object v0

    :goto_4
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/loc/n;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->q:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CI"

    const-string v2, "gz"

    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    :try_start_1
    invoke-static {p0}, Lcom/loc/n;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->r:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/loc/n;->c()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/loc/m$a;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/loc/m$a;->t:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v0, ""

    iput-object v0, v1, Lcom/loc/m$a;->x:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private static a(Lcom/loc/m$a;)[B
    .locals 8

    const/4 v1, 0x0

    const/16 v5, 0x75

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/m$a;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->e:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->f:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->g:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->h:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->i:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->l:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->m:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->n:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->o:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->p:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->q:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->r:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->s:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->t:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->u:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->v:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->w:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->x:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/m$a;->y:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/u;->b([B)[B

    move-result-object v3

    invoke-static {}, Lcom/loc/u;->d()Ljava/security/PublicKey;

    move-result-object v0

    array-length v4, v3

    if-le v4, v5, :cond_0

    const/16 v4, 0x75

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x75

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v0}, Lcom/loc/o;->a([BLjava/security/Key;)[B

    move-result-object v4

    array-length v0, v3

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x80

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x75

    const/16 v5, 0x80

    array-length v6, v3

    add-int/lit8 v6, v6, -0x75

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    invoke-static {v3, v0}, Lcom/loc/o;->a([BLjava/security/Key;)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_4
    const-string v3, "CI"

    const-string v4, "gzx"

    invoke-static {v0, v3, v4}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method
