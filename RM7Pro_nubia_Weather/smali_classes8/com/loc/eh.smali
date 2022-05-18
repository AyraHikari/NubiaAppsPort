.class public final Lcom/loc/eh;
.super Ljava/lang/Object;
.source "Req.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field protected static J:Ljava/lang/String;

.field protected static L:Ljava/lang/String;


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Ljava/lang/String;

.field protected C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dv;",
            ">;"
        }
    .end annotation
.end field

.field protected D:Ljava/lang/String;

.field protected E:Ljava/lang/String;

.field protected F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:[B

.field protected K:Ljava/lang/String;

.field protected M:Ljava/lang/String;

.field protected N:Ljava/lang/String;

.field private O:[B

.field private P:I

.field public a:Ljava/lang/String;

.field protected b:S

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:Ljava/lang/String;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/eh;->J:Ljava/lang/String;

    sput-object v0, Lcom/loc/eh;->L:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/loc/eh;->a:Ljava/lang/String;

    iput-short v2, p0, Lcom/loc/eh;->b:S

    iput-object v1, p0, Lcom/loc/eh;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->y:Ljava/lang/String;

    iput v2, p0, Lcom/loc/eh;->z:I

    iput-object v1, p0, Lcom/loc/eh;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->B:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/eh;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/loc/eh;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->E:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/eh;->F:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/loc/eh;->G:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->H:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->I:[B

    iput-object v1, p0, Lcom/loc/eh;->O:[B

    iput v2, p0, Lcom/loc/eh;->P:I

    iput-object v1, p0, Lcom/loc/eh;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/eh;->N:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;[BI)I
    .locals 4

    const/16 v0, 0x7f

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v1, "GBK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2

    if-le v1, v0, :cond_1

    :goto_1
    int-to-byte v1, v0

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x0

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Req"

    const-string v2, "copyContentWithByteLen"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v3, p1, p2

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/loc/eh;->B:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "lac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "cellid"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "signal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x6

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [B

    if-eqz v0, :cond_0

    :try_start_0
    array-length v3, v0

    if-eq v3, v5, :cond_1

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    const-string v4, "0"

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_2
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Req"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMacBa "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {p0, v0}, Lcom/loc/eh;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/loc/eh;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/eh;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/loc/eh;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/loc/eh;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/loc/eh;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZLcom/loc/dw;Lcom/loc/dx;Landroid/net/ConnectivityManager;Ljava/lang/String;)V
    .locals 25

    const-string v8, "0"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "0"

    const-string v13, "0"

    invoke-static/range {p1 .. p1}, Lcom/loc/k;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/loc/ep;->d()I

    move-result v15

    const-string v6, ""

    const-string v5, ""

    const-string v7, ""

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/loc/eh;->K:Ljava/lang/String;

    const-string v3, "api_serverSDK_130905"

    const-string v2, "S128DF1572465B890OE3F7A13167KLEI"

    if-nez p3, :cond_16

    const-string v3, "UC_nlp_20131029"

    const-string v2, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v4, v3

    move-object v3, v2

    :goto_0
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/loc/dw;->e()I

    move-result v17

    invoke-virtual/range {p4 .. p4}, Lcom/loc/dw;->f()I

    move-result v18

    invoke-virtual/range {p4 .. p4}, Lcom/loc/dw;->g()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/loc/dw;->b()Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/loc/dw;->c()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {p5 .. p5}, Lcom/loc/dx;->e()Ljava/util/ArrayList;

    move-result-object v22

    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    const-string v2, "1"

    move-object v9, v2

    :goto_1
    if-eqz v19, :cond_3

    sget-object v2, Lcom/loc/ej;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/loc/n;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/ej;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    sget-object v2, Lcom/loc/ej;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-ge v2, v8, :cond_1

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/ej;->e:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/loc/ej;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/loc/n;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/ej;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    sget-object v2, Lcom/loc/ej;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-ge v2, v8, :cond_3

    const-string v2, "888888888888888"

    sput-object v2, Lcom/loc/ej;->f:Ljava/lang/String;

    :cond_3
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_4
    invoke-virtual/range {p5 .. p6}, Lcom/loc/dx;->a(Landroid/net/ConnectivityManager;)Z

    move-result v23

    invoke-static {v2}, Lcom/loc/ep;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/loc/ep;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    if-eqz v23, :cond_d

    const-string v2, "2"

    move-object v6, v5

    move-object v5, v2

    :cond_4
    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch v18, :pswitch_data_0

    move-object v2, v7

    :goto_6
    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v8, v2

    :goto_7
    and-int/lit8 v2, v17, 0x4

    const/4 v7, 0x4

    if-ne v2, v7, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->C:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-boolean v2, v0, Lcom/loc/dx;->q:Z

    if-eqz v2, :cond_13

    if-eqz v23, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/loc/dx;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/loc/dx;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v7, -0x80

    if-ge v2, v7, :cond_12

    const/4 v2, 0x0

    :cond_5
    :goto_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x20

    :try_start_3
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v7, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :goto_a
    const/16 v19, 0x20

    move/from16 v0, v19

    if-lt v7, v0, :cond_6

    const-string v2, "unkwn"

    :cond_6
    const-string v7, "*"

    const-string v19, "."

    move-object/from16 v0, v19

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->F:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/loc/eh;->b:S

    if-nez p2, :cond_9

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/loc/eh;->b:S

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    move-object/from16 v0, p0

    iput-short v2, v0, Lcom/loc/eh;->b:S

    :cond_9
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/loc/eh;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/loc/eh;->d:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/loc/ep;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/loc/eh;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/loc/eh;->j:Ljava/lang/String;

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/loc/eh;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/loc/eh;->m:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/loc/eh;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/loc/eh;->o:Ljava/lang/String;

    sget-object v2, Lcom/loc/ej;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->p:Ljava/lang/String;

    sget-object v2, Lcom/loc/ej;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->q:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->s:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/loc/ep;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->t:Ljava/lang/String;

    const-string v2, "5.2.0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->v:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->w:Ljava/lang/String;

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->u:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/loc/eh;->x:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/loc/eh;->y:Ljava/lang/String;

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/loc/eh;->z:I

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/loc/eh;->A:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->B:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/loc/dw;->l()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->D:Ljava/lang/String;

    invoke-static {}, Lcom/loc/dx;->o()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->G:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->E:Ljava/lang/String;

    :try_start_4
    sget-object v2, Lcom/loc/eh;->J:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/loc/n;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/eh;->J:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :cond_a
    :goto_c
    :try_start_5
    sget-object v2, Lcom/loc/eh;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/eh;->L:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_b
    :goto_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->N:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/loc/n;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->N:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_c
    :goto_e
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    :catch_0
    move-exception v2

    const-string v8, "Aps"

    const-string v23, "getApsReq part4"

    move-object/from16 v0, v23

    invoke-static {v2, v8, v0}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v2

    const-string v8, "Aps"

    const-string v23, "getApsReq part2"

    move-object/from16 v0, v23

    invoke-static {v2, v8, v0}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_2
    move-exception v8

    const-string v23, "Aps"

    const-string v24, "getApsReq part"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v8, v0, v1}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    const-string v2, "1"

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_5

    :pswitch_0
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/dv;

    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<mnc>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mnc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lac>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lac>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<cellid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "</cellid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<signal>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/dv;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</signal>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move v7, v2

    :goto_f
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_f

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/dv;

    iget v0, v2, Lcom/loc/dv;->c:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v24, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Lcom/loc/dv;->d:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v24, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/loc/dv;->j:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v7, v2, :cond_e

    const-string v2, "*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_f

    :cond_f
    move-object v2, v8

    goto/16 :goto_6

    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/dv;

    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v7, "<mcc>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<sid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</sid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<nid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</nid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<bid>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</bid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Lcom/loc/dv;->f:I

    if-lez v7, :cond_10

    iget v7, v2, Lcom/loc/dv;->e:I

    if-lez v7, :cond_10

    const-string v7, "<lon>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lon>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<lat>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/dv;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</lat>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v7, "<signal>"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/dv;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "</signal>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_8

    :cond_12
    const/16 v7, 0x7f

    if-le v2, v7, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_13
    invoke-virtual/range {p5 .. p5}, Lcom/loc/dx;->g()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->F:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->F:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_b

    :catch_3
    move-exception v2

    goto/16 :goto_e

    :catch_4
    move-exception v2

    goto/16 :goto_d

    :catch_5
    move-exception v2

    goto/16 :goto_c

    :catch_6
    move-exception v19

    goto/16 :goto_a

    :catch_7
    move-exception v2

    goto/16 :goto_3

    :cond_14
    move-object v8, v7

    goto/16 :goto_7

    :cond_15
    move-object v9, v8

    goto/16 :goto_1

    :cond_16
    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a()[B
    .locals 19

    const/16 v2, 0x1c

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->a:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->d:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->e:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->g:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->h:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->i:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->l:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->m:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->n:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0xb

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->o:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->p:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0xd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->q:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0xe

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->r:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0xf

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->s:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->t:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->u:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->v:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->w:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->x:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->A:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->B:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->E:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->G:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->H:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x1a

    sget-object v4, Lcom/loc/eh;->J:Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->N:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x1c

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->j:Ljava/lang/String;

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->k:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->y:Ljava/lang/String;

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/loc/eh;->z:I

    invoke-static {v2}, Lcom/loc/dw;->a(I)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/loc/eh;->z:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->I:[B

    if-nez v2, :cond_6

    const/4 v2, 0x0

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->I:[B

    :cond_6
    const/4 v2, 0x2

    new-array v10, v2, [B

    const/4 v2, 0x4

    new-array v8, v2, [B

    const/16 v2, 0x1000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->I:[B

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->I:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v2, v2, 0x1000

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->O:[B

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/loc/eh;->P:I

    if-le v2, v3, :cond_19

    :cond_8
    new-array v3, v2, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/loc/eh;->O:[B

    move-object/from16 v0, p0

    iput v2, v0, Lcom/loc/eh;->P:I

    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/loc/ep;->i(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/loc/eh;->b:S

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    array-length v6, v2

    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->c:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->d:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->o:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->e:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->f:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->g:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->u:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->h:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->p:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->q:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->t:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    aput-byte v2, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->v:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->w:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    sget-object v4, Lcom/loc/eh;->J:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    sget-object v4, Lcom/loc/eh;->L:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->x:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->y:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->j:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/loc/eh;->z:I

    and-int/lit8 v5, v4, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/loc/eh;->z:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-eq v5, v4, :cond_9

    const/4 v4, 0x2

    if-ne v5, v4, :cond_c

    :cond_9
    const-string v4, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ne v5, v4, :cond_1b

    const-string v4, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "lac"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "cellid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->c(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    :cond_a
    :goto_6
    const-string v4, "signal"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x7f

    if-le v4, v6, :cond_1c

    const/4 v4, 0x0

    :cond_b
    :goto_7
    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    invoke-static {v4, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x2

    const/4 v4, 0x1

    if-ne v5, v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->B:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->D:Ljava/lang/String;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget v5, v0, Lcom/loc/eh;->z:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_21

    :try_start_1
    const-string v5, "GBK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0x3c

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-byte v6, v5

    aput-byte v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v2, v5

    move v4, v2

    :goto_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/loc/eh;->C:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/loc/eh;->z:I

    and-int/lit8 v2, v2, 0x4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_25

    if-lez v5, :cond_25

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/dv;

    iget-boolean v2, v2, Lcom/loc/dv;->p:Z

    if-nez v2, :cond_d

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    :cond_d
    int-to-byte v2, v5

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    move v7, v2

    :goto_a
    if-ge v7, v5, :cond_26

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/dv;

    iget-boolean v6, v2, Lcom/loc/dv;->p:Z

    if-eqz v6, :cond_15

    iget v6, v2, Lcom/loc/dv;->k:I

    const/4 v11, 0x1

    if-eq v6, v11, :cond_e

    iget v6, v2, Lcom/loc/dv;->k:I

    const/4 v11, 0x3

    if-eq v6, v11, :cond_e

    iget v6, v2, Lcom/loc/dv;->k:I

    const/4 v11, 0x4

    if-ne v6, v11, :cond_22

    :cond_e
    iget v6, v2, Lcom/loc/dv;->k:I

    int-to-byte v6, v6

    iget-boolean v11, v2, Lcom/loc/dv;->n:Z

    if-eqz v11, :cond_f

    or-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    :cond_f
    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget v6, v2, Lcom/loc/dv;->a:I

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->b:I

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->c:I

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->d:I

    invoke-static {v6, v8}, Lcom/loc/ep;->b(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    :cond_10
    :goto_b
    iget v6, v2, Lcom/loc/dv;->j:I

    const/16 v11, 0x7f

    if-le v6, v11, :cond_24

    const/16 v6, 0x63

    :cond_11
    :goto_c
    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget-short v6, v2, Lcom/loc/dv;->l:S

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    const-string v6, "5.1"

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    cmpl-double v6, v12, v14

    if-ltz v6, :cond_15

    iget v6, v2, Lcom/loc/dv;->k:I

    const/4 v11, 0x3

    if-eq v6, v11, :cond_12

    iget v6, v2, Lcom/loc/dv;->k:I

    const/4 v11, 0x4

    if-ne v6, v11, :cond_15

    :cond_12
    iget v2, v2, Lcom/loc/dv;->o:I

    const/16 v6, 0x7fff

    if-le v2, v6, :cond_13

    const/16 v2, 0x7fff

    :cond_13
    if-gez v2, :cond_14

    const/16 v2, 0x7fff

    :cond_14
    invoke-static {v2, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v11, v2

    invoke-static {v2, v6, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v4, v2

    :cond_15
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_a

    :cond_16
    const-string v2, "0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "2"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_17
    const-string v2, "0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->k:Ljava/lang/String;

    goto/16 :goto_2

    :cond_18
    const-string v2, "1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "2"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/eh;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/eh;->y:Ljava/lang/String;

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->O:[B

    move-object v3, v2

    goto/16 :goto_4

    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->t:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/eh;->a(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v2, v4

    goto/16 :goto_5

    :catch_0
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot219"

    invoke-static {v2, v5, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_5

    :cond_1b
    const/4 v4, 0x2

    if-ne v5, v4, :cond_a

    const-string v4, "sid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "nid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "bid"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "lon"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->c(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    const-string v4, "lat"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/loc/eh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ep;->c(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v2, v4

    goto/16 :goto_6

    :cond_1c
    const/16 v6, -0x80

    if-ge v4, v6, :cond_b

    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->B:Ljava/lang/String;

    const-string v5, "\\*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    int-to-byte v4, v6

    aput-byte v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    const/4 v2, 0x0

    move/from16 v18, v2

    move v2, v4

    move/from16 v4, v18

    :goto_d
    if-ge v4, v6, :cond_c

    const-string v5, "lac"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/loc/eh;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/loc/ep;->b(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    const-string v5, "cellid"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/loc/eh;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/loc/ep;->c(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v7, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v5, v2

    const-string v2, "signal"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/loc/eh;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v7, 0x7f

    if-le v2, v7, :cond_1f

    const/4 v2, 0x0

    :cond_1e
    :goto_e
    int-to-byte v2, v2

    aput-byte v2, v3, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_d

    :cond_1f
    const/16 v7, -0x80

    if-ge v2, v7, :cond_1e

    const/4 v2, 0x0

    goto :goto_e

    :cond_20
    const/4 v4, 0x2

    if-ne v5, v4, :cond_c

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :catch_1
    move-exception v4

    :cond_21
    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    goto/16 :goto_9

    :cond_22
    iget v6, v2, Lcom/loc/dv;->k:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_10

    iget v6, v2, Lcom/loc/dv;->k:I

    int-to-byte v6, v6

    iget-boolean v11, v2, Lcom/loc/dv;->n:Z

    if-eqz v11, :cond_23

    or-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    :cond_23
    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    iget v6, v2, Lcom/loc/dv;->a:I

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->g:I

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->h:I

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->i:I

    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->f:I

    invoke-static {v6, v8}, Lcom/loc/ep;->b(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    iget v6, v2, Lcom/loc/dv;->e:I

    invoke-static {v6, v8}, Lcom/loc/ep;->b(I[B)[B

    move-result-object v6

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v3, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v4, v6

    goto/16 :goto_b

    :cond_24
    const/16 v11, -0x80

    if-ge v6, v11, :cond_11

    const/16 v6, 0x63

    goto/16 :goto_c

    :cond_25
    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->E:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    :cond_27
    const/4 v2, 0x0

    aput-byte v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/loc/eh;->F:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x19

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-nez v12, :cond_32

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :goto_10
    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->H:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    const/16 v6, 0x7f

    if-le v5, v6, :cond_28

    const/4 v4, 0x0

    :cond_28
    if-nez v4, :cond_3b

    const/4 v4, 0x0

    aput-byte v4, v3, v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    add-int/lit8 v2, v2, 0x1

    :goto_11
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/eh;->K:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->K:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v4

    :cond_29
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    add-int/lit8 v2, v2, 0x2

    if-nez v5, :cond_2a

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->K:Ljava/lang/String;

    const-string v5, "GBK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    add-int/2addr v2, v4

    :cond_2a
    :goto_12
    const/4 v4, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v4, v5

    const/4 v4, 0x0

    :try_start_6
    invoke-static {v4, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    add-int/lit8 v2, v2, 0x2

    :goto_13
    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_7
    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    add-int/lit8 v2, v2, 0x2

    :goto_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/loc/eh;->I:[B

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->I:[B

    array-length v4, v4

    :cond_2b
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v5

    invoke-static {v5, v6, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    if-lez v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->I:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/loc/eh;->I:[B

    array-length v6, v6

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->I:[B

    array-length v4, v4

    add-int/2addr v2, v4

    :cond_2c
    const-string v4, "5.1"

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2d

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/eh;->N:Ljava/lang/String;

    invoke-static {v4, v3, v2}, Lcom/loc/eh;->a(Ljava/lang/String;[BI)I

    move-result v2

    :cond_2d
    new-array v4, v2, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/loc/ep;->a(J)[B

    move-result-object v3

    add-int/lit8 v5, v2, 0x8

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :cond_2e
    const/4 v2, 0x1

    aput-byte v2, v3, v4

    add-int/lit8 v4, v4, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->E:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    aget-object v2, v5, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/eh;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    add-int/2addr v4, v2

    const/4 v2, 0x2

    :try_start_9
    aget-object v2, v5, v2

    const-string v6, "GBK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v2, v6

    const/16 v7, 0x7f

    if-le v2, v7, :cond_2f

    const/16 v2, 0x7f

    :cond_2f
    int-to-byte v7, v2

    aput-byte v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    add-int/2addr v4, v2

    :goto_15
    const/4 v2, 0x1

    :try_start_a
    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x7f

    if-le v2, v5, :cond_31

    const/4 v2, 0x0

    :cond_30
    :goto_16
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    aput-byte v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_f

    :catch_2
    move-exception v2

    const-string v6, "Req"

    const-string v7, "buildV4Dot214"

    invoke-static {v2, v6, v7}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-byte v2, v3, v4
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_31
    const/16 v5, -0x80

    if-ge v2, v5, :cond_30

    const/4 v2, 0x0

    goto :goto_16

    :catch_3
    move-exception v2

    const-string v5, "Req"

    const-string v6, "buildV4Dot216"

    invoke-static {v2, v5, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "00:00:00:00:00:00"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/eh;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v4

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    const-string v4, "0"

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_32
    int-to-byte v4, v12

    aput-byte v4, v3, v2

    add-int/lit8 v6, v2, 0x1

    invoke-static {}, Lcom/loc/ep;->c()I

    move-result v2

    const/16 v4, 0x11

    if-lt v2, v4, :cond_38

    const/4 v2, 0x1

    move v9, v2

    :goto_17
    const-wide/16 v4, 0x0

    if-eqz v9, :cond_33

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    :cond_33
    const/4 v2, 0x0

    move v8, v2

    :goto_18
    if-ge v8, v12, :cond_3a

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/loc/eh;->a(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v13, v3, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v6, v7

    :try_start_b
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v13, "GBK"

    invoke-virtual {v7, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v13, v7

    int-to-byte v13, v13

    aput-byte v13, v3, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x0

    array-length v14, v7

    invoke-static {v7, v13, v3, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    add-int/2addr v6, v7

    :goto_19
    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    const/16 v13, 0x7f

    if-le v7, v13, :cond_39

    const/4 v7, 0x0

    :cond_34
    :goto_1a
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v3, v6

    add-int/lit8 v7, v6, 0x1

    if-eqz v9, :cond_35

    iget-wide v14, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/32 v16, 0xf4240

    div-long v14, v14, v16

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    sub-long v14, v4, v14

    long-to-int v6, v14

    if-gez v6, :cond_36

    :cond_35
    const/4 v6, 0x0

    :cond_36
    const v13, 0xffff

    if-le v6, v13, :cond_37

    const v6, 0xffff

    :cond_37
    invoke-static {v6, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v6

    const/4 v13, 0x0

    array-length v14, v6

    invoke-static {v6, v13, v3, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v6, v7

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v2, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v2

    const/4 v7, 0x0

    array-length v13, v2

    invoke-static {v2, v7, v3, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v6, v2

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_18

    :cond_38
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_17

    :catch_4
    move-exception v7

    const/4 v7, 0x0

    aput-byte v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_39
    const/16 v13, -0x80

    if-ge v7, v13, :cond_34

    const/4 v7, 0x0

    goto :goto_1a

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/eh;->G:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v10}, Lcom/loc/ep;->a(I[B)[B

    move-result-object v2

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v2, v6

    goto/16 :goto_10

    :cond_3b
    :try_start_c
    array-length v5, v4

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    add-int/2addr v2, v4

    goto/16 :goto_11

    :catch_5
    move-exception v4

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    :catch_6
    move-exception v4

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_12

    :catch_7
    move-exception v4

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_13

    :catch_8
    move-exception v4

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_14

    :catch_9
    move-exception v4

    goto/16 :goto_12

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
.end method
