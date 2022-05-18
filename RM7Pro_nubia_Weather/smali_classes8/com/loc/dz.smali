.class public final Lcom/loc/dz;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/dz$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/loc/dz$a;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:J

.field d:Ljava/lang/String;

.field e:Lcom/loc/dv;

.field f:Z

.field g:Z

.field h:Ljava/lang/String;

.field private i:J

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    iput-wide v6, p0, Lcom/loc/dz;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/dz;->j:Z

    const-string v0, "2.0.201501131131"

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dz;->k:Ljava/lang/String;

    iput-object v3, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/loc/dz;->b:Z

    iput-wide v6, p0, Lcom/loc/dz;->c:J

    iput-object v3, p0, Lcom/loc/dz;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/loc/dz;->e:Lcom/loc/dv;

    iput-object v3, p0, Lcom/loc/dz;->m:Ljava/lang/String;

    iput-wide v6, p0, Lcom/loc/dz;->n:J

    iput-boolean v4, p0, Lcom/loc/dz;->f:Z

    iput-boolean v4, p0, Lcom/loc/dz;->g:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dz;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/loc/ds;
    .locals 18

    const/4 v3, 0x0

    :try_start_0
    const-string v2, "cgiwifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v3, v2

    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/loc/dz$a;->a()Lcom/loc/ds;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/loc/dz$a;->a()Lcom/loc/ds;

    move-result-object v2

    const-string v4, "mem"

    invoke-virtual {v2, v4}, Lcom/loc/ds;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/loc/dz$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/loc/ds;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/loc/ds;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/loc/ei;->a(J)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v2}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/loc/dz;->c:J

    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/loc/ds;->setLocationType(I)V

    :goto_2
    return-object v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v6, v3

    :goto_3
    if-ltz v6, :cond_18

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/loc/dz$a;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/loc/dz$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/loc/dz$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_6
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_d

    const/4 v3, 0x1

    invoke-virtual {v4}, Lcom/loc/dz$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/loc/ep;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    move-object v2, v4

    :goto_5
    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v12}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Cache"

    const-string v4, "get1"

    invoke-static {v2, v3, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    :try_start_1
    const-string v8, ",access"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, ",access"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_a

    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    :cond_a
    const-string v8, ",access"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    aget-object v8, v7, v8

    const/4 v9, 0x0

    aget-object v7, v7, v9

    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v7, 0x0

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    aget-object v7, v7, v8

    goto :goto_7

    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",access"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    goto/16 :goto_4

    :cond_d
    move v10, v3

    invoke-virtual {v4}, Lcom/loc/dz$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v13, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v13, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    invoke-virtual {v13}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    new-array v15, v3, [D

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    new-array v0, v3, [D

    move-object/from16 v16, v0

    const/4 v3, 0x0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v7, v3

    :goto_a
    if-eqz v17, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_b
    aput-wide v8, v15, v7

    invoke-virtual {v12, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_c
    aput-wide v8, v16, v7

    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_a

    :cond_10
    const-wide/16 v8, 0x0

    goto :goto_b

    :cond_11
    const-wide/16 v8, 0x0

    goto :goto_c

    :cond_12
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    invoke-static/range {v15 .. v16}, Lcom/loc/dz;->a([D[D)[D

    move-result-object v3

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    const-wide v14, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v7, v8, v14

    if-ltz v7, :cond_13

    move-object v2, v4

    goto/16 :goto_5

    :cond_13
    const/4 v7, 0x1

    aget-wide v8, v3, v7

    invoke-static {}, Lcom/loc/ei;->g()D

    move-result-wide v14

    const-wide v16, 0x3fe3c6a7ef9db22dL    # 0.618

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    cmpl-double v7, v8, v14

    if-ltz v7, :cond_14

    move-object v2, v4

    goto/16 :goto_5

    :cond_14
    if-eqz v10, :cond_15

    const/4 v7, 0x0

    aget-wide v8, v3, v7

    invoke-static {}, Lcom/loc/ei;->g()D

    move-result-wide v14

    const-wide v16, 0x3fe3c6a7ef9db22dL    # 0.618

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    cmpl-double v3, v8, v14

    if-ltz v3, :cond_15

    move-object v2, v4

    goto/16 :goto_5

    :cond_15
    add-int/lit8 v3, v6, -0x1

    move v6, v3

    goto/16 :goto_3

    :cond_16
    const-string v2, "cgi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/dz$a;

    move-object v3, v2

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_18
    move-object v2, v5

    goto/16 :goto_5
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "MD5"

    invoke-static {p3}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/loc/dy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    :cond_1
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const-string v3, "&"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cgi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "cgi"

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/loc/dy;->a([BLjava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Lcom/loc/o;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ",access"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cgi"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ",access"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v3, "mmac"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    aget-object v1, v1, v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-static {}, Lcom/loc/ei;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "hmdb"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    const-string v1, "hist"

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v11, v1

    move-object v1, v9

    move-object v9, v0

    move-object v0, v11

    :goto_1
    :try_start_2
    const-string v2, "DB"

    const-string v3, "fetchHist p2"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v2

    invoke-static {}, Lcom/loc/ei;->d()J

    move-result-wide v4

    sub-long/2addr v2, v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time >"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    const-string v1, " and feature = \'"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hist"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/dz;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "feature"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, " nb"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "loc"

    aput-object v4, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time ASC"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v7

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "MD5"

    invoke-static {p1}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/dy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    :cond_5
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_6
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v2, Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    new-instance v1, Lorg/json/JSONObject;

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {v1, v4}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "type"

    const-string v5, "new"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_3
    new-instance v4, Lcom/loc/ds;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/loc/ds;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/loc/ds;->b(Lorg/json/JSONObject;)V

    const-string v1, "mmac"

    invoke-static {v2, v1}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "cgi"

    invoke-static {v2, v1}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cgi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "network#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "cgi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cgiwifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/loc/ds;Landroid/content/Context;Z)V

    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    if-eqz v7, :cond_b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :cond_c
    :try_start_5
    const-string v1, "mmac"

    invoke-static {v2, v1}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mmac"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",access"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :catch_1
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v7

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/loc/dy;->b([BLjava/lang/String;)[B

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/loc/dy;->b([BLjava/lang/String;)[B

    move-result-object v1

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_5
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/o;->b(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v1, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/loc/dy;->b([BLjava/lang/String;)[B

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {v1, v4}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "type"

    const-string v5, "new"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_6
    if-eqz v7, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    throw v0

    :cond_11
    :try_start_6
    const-string v1, "mmac"

    invoke-static {v2, v1}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mmac"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",access"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_13
    const-string v1, "cgi"

    invoke-static {v2, v1}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cgi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "network#"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "cgi"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cgi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v7, v9

    goto/16 :goto_6

    :catchall_2
    move-exception v1

    move-object v7, v9

    move-object v9, v0

    move-object v0, v1

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v7, v1

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v1, v9

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v9, 0x3

    const/4 v0, 0x1

    const/4 v8, 0x0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, "MD5"

    invoke-static {p4}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loc/dy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    :cond_2
    invoke-direct {p0, p1, p3, p4}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v4, "hmdb"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p4, v4, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v4, "CREATE TABLE IF NOT EXISTS hist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/loc/dz;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (feature VARCHAR PRIMARY KEY, nb VARCHAR, loc VARCHAR, time VARCHAR);"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v4, "REPLACE INTO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "hist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/dz;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " VALUES (?, ?, ?, ?)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/loc/dy;->a([BLjava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->toStr()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/loc/dz;->l:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/loc/dy;->a([BLjava/lang/String;)[B

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v0

    :goto_1
    if-ge v2, v9, :cond_3

    aget-object v0, v4, v2

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/loc/o;->b([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v3, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v8, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "DB"

    const-string v4, "updateHist"

    invoke-static {v0, v2, v4}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v8, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v3, v8, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->clear()V

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([D[D)[D
    .locals 14

    const/4 v0, 0x3

    new-array v3, v0, [D

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v10, p0

    if-ge v0, v10, :cond_1

    aget-wide v10, p0, v0

    aget-wide v12, p0, v0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    aget-wide v10, p1, v0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    aget-wide v10, p0, v0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aget-wide v10, p1, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-wide v10, p0, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    div-double v4, v8, v4

    aput-wide v4, v3, v0

    const/4 v0, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v6, v1

    mul-double/2addr v4, v6

    int-to-double v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v3, v0

    const/4 v0, 0x2

    int-to-double v4, v1

    aput-wide v4, v3, v0

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    aget-wide v4, v3, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method private b()Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/dz;->i:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/loc/dz;->i:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/16 v4, 0x168

    if-gt v1, v4, :cond_2

    const-wide/32 v4, 0x2255100

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dz;->i:J

    iget-object v0, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/dz;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/loc/ds;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/loc/ei;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/dz;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/dz;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/dz;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/loc/ei;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/loc/dz;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/loc/dz;->c()V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    iget-boolean v2, p0, Lcom/loc/dz;->j:Z

    if-nez v2, :cond_3

    :try_start_0
    invoke-direct {p0, v1, p3, p1}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/loc/dz;->c()V

    invoke-direct {p0, p1, v2}, Lcom/loc/dz;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p3}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/loc/ds;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final a(Lcom/loc/dw;ZLcom/loc/ds;Lcom/loc/dx;Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;Z)Lcom/loc/ds;
    .locals 8

    invoke-static {}, Lcom/loc/ei;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p8, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/loc/dz;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/loc/ei;->f()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p8, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    const/4 p3, 0x0

    :goto_2
    return-object p3

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/loc/ds;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/ei;->a(J)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p8, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lcom/loc/dw;->d()Lcom/loc/dv;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez v2, :cond_6

    iget-object v3, p0, Lcom/loc/dz;->e:Lcom/loc/dv;

    if-eqz v3, :cond_9

    :cond_6
    iget-object v3, p0, Lcom/loc/dz;->e:Lcom/loc/dv;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/loc/dz;->e:Lcom/loc/dv;

    invoke-virtual {v3, v2}, Lcom/loc/dv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    const/4 v2, 0x1

    move v3, v2

    :goto_3
    if-eqz p3, :cond_17

    invoke-virtual {p4}, Lcom/loc/dx;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3}, Lcom/loc/ds;->getAccuracy()F

    move-result v2

    const v4, 0x43958000    # 299.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_a

    const/4 v2, 0x5

    if-le v0, v2, :cond_a

    const/4 v0, 0x1

    :goto_4
    move v2, v0

    :goto_5
    if-eqz p3, :cond_c

    iget-object v0, p0, Lcom/loc/dz;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    iget-object v0, p0, Lcom/loc/dz;->d:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget-wide v4, p0, Lcom/loc/dz;->c:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/dz;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v1, v4, v6

    if-gez v1, :cond_b

    const/4 v1, 0x1

    :goto_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_d

    :cond_8
    invoke-static {p3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "mem"

    invoke-virtual {p3, v0}, Lcom/loc/ds;->e(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/loc/ds;->setLocationType(I)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const/4 p3, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    move v0, v1

    :cond_d
    if-nez v0, :cond_10

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dz;->c:J

    :goto_7
    iget-object v0, p0, Lcom/loc/dz;->m:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/loc/dz;->m:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/loc/dz;->n:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v0, v4

    if-gez v0, :cond_11

    iget-object p6, p0, Lcom/loc/dz;->m:Ljava/lang/String;

    :goto_8
    const/4 p3, 0x0

    if-nez v2, :cond_e

    if-nez p2, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, p7, p6, p5, v0}, Lcom/loc/dz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/loc/ds;

    move-result-object p3

    :cond_e
    if-nez p2, :cond_14

    invoke-static {p3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    if-nez v0, :cond_f

    if-eqz v2, :cond_15

    :cond_f
    const/4 p3, 0x0

    goto/16 :goto_2

    :cond_10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dz;->c:J

    goto :goto_7

    :cond_11
    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dz;->n:J

    iput-object p6, p0, Lcom/loc/dz;->m:Ljava/lang/String;

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/loc/dz;->m:Ljava/lang/String;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dz;->n:J

    iput-object p6, p0, Lcom/loc/dz;->m:Ljava/lang/String;

    goto :goto_8

    :cond_13
    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dz;->n:J

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    if-eqz p2, :cond_16

    const/4 p3, 0x0

    goto/16 :goto_2

    :cond_16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dz;->c:J

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/loc/ds;->setLocationType(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_17
    move v2, v0

    goto/16 :goto_5
.end method

.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dz;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dz;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/loc/dz;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/loc/dz;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/loc/dz;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/dz;->j:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Cache"

    const-string v2, "loadDB"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/dz;->g:Z

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/dz;->f:Z

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/dz;->b:Z

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->getGeoLanguage()Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/dz;->h:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/loc/dv;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dz;->e:Lcom/loc/dv;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dz;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/loc/ds;Landroid/content/Context;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/loc/ds;->isOffset()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/loc/ds;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/loc/ds;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/loc/ds;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/loc/ds;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/loc/ds;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wifioff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {p3}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/dz;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/loc/dz;->c()V

    :cond_4
    invoke-virtual {p3}, Lcom/loc/ds;->f()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "offpct"

    invoke-static {v0, v2}, Lcom/loc/ep;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "offpct"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/loc/ds;->a(Lorg/json/JSONObject;)V

    :cond_5
    const-string v0, "wifi"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/loc/ds;->getAccuracy()F

    move-result v0

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_d

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v1, v3, :cond_9

    aget-object v4, v2, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const-string v2, "#"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    goto/16 :goto_1

    :cond_8
    const-string v2, "network"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :cond_a
    const-string v0, "cgiwifi"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p3}, Lcom/loc/ds;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "cgiwifi"

    const-string v1, "cgi"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/loc/ds;->h()Lcom/loc/ds;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/loc/ds;Landroid/content/Context;Z)V

    :cond_b
    invoke-direct {p0, v6, p2}, Lcom/loc/dz;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/loc/ds;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/loc/ds;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/loc/ds;->toStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/loc/ds;->toStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/dz;->i:J

    new-instance v1, Lcom/loc/dz$a;

    invoke-direct {v1}, Lcom/loc/dz$a;-><init>()V

    invoke-virtual {v1, p3}, Lcom/loc/dz$a;->a(Lcom/loc/ds;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/loc/dz$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    if-eqz p5, :cond_0

    :try_start_1
    invoke-direct {p0, v6, p3, p2, p4}, Lcom/loc/dz;->a(Ljava/lang/String;Lcom/amap/api/location/AMapLocation;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Cache"

    const-string v2, "add"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Cache"

    const-string v2, "add"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_3
    invoke-virtual {p3}, Lcom/loc/ds;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    goto/16 :goto_0

    :cond_e
    const-string v0, "cgi"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_f

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_f
    const-string v0, "4"

    invoke-virtual {p3}, Lcom/loc/ds;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/dz;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method

.method public final b(Landroid/content/Context;)V
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/loc/dz;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    const-string v0, "hmdb"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v0, "hist"

    invoke-static {v1, v0}, Lcom/loc/ep;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/loc/dz;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/dz;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dz;->n:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :cond_1
    :try_start_3
    const-string v0, "time<?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hist"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/dz;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Cache"

    const-string v2, "destroy part"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string v2, "DB"

    const-string v3, "clearHist"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "no such table"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_7
    const-string v2, "DB"

    const-string v3, "clearHist p2"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
