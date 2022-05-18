.class public final Lcom/loc/bw;
.super Lcom/loc/bt;
.source "UploadBufferBuilder.java"


# static fields
.field private static b:Lcom/loc/bw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loc/bw;

    invoke-direct {v0}, Lcom/loc/bw;-><init>()V

    sput-object v0, Lcom/loc/bw;->b:Lcom/loc/bw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x1400

    invoke-direct {p0, v0}, Lcom/loc/bt;-><init>(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static b()Lcom/loc/bw;
    .locals 1

    sget-object v0, Lcom/loc/bw;->b:Lcom/loc/bw;

    return-object v0
.end method


# virtual methods
.method public final a([B[BLjava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/List",
            "<+",
            "Lcom/loc/ca;",
            ">;)[B"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/loc/bw;->a()Lcom/loc/bt;

    iget-object v0, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {v0, p1}, Lcom/loc/cd;->a(Lcom/loc/er;[B)I

    move-result v5

    new-array v6, v4, [I

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ca;

    iget-object v7, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-virtual {v0}, Lcom/loc/ca;->b()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/loc/ci;->a(Lcom/loc/er;[B)I

    move-result v7

    iget-object v8, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-virtual {v0}, Lcom/loc/ca;->a()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v8, v0, v7}, Lcom/loc/ci;->a(Lcom/loc/er;BI)I

    move-result v0

    aput v0, v6, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {v0, v6}, Lcom/loc/cd;->a(Lcom/loc/er;[I)I

    move-result v3

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {v0, p2}, Lcom/loc/cd;->b(Lcom/loc/er;[B)I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {v2, v5, v0, v3}, Lcom/loc/cd;->a(Lcom/loc/er;III)I

    move-result v0

    iget-object v2, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-virtual {v2, v0}, Lcom/loc/bv;->c(I)V

    iget-object v0, p0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-virtual {v0}, Lcom/loc/bv;->c()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/loc/dg;->a(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final c()[B
    .locals 18

    const/4 v2, 0x0

    invoke-super/range {p0 .. p0}, Lcom/loc/bt;->a()Lcom/loc/bt;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/bw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v11

    invoke-static {}, Lcom/loc/de;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/dd;->a(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/loc/bv;->a(Ljava/lang/CharSequence;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-static {}, Lcom/loc/de;->a()B

    move-result v4

    invoke-static {}, Lcom/loc/de;->m()I

    move-result v7

    int-to-byte v7, v7

    invoke-static/range {v3 .. v17}, Lcom/loc/df;->a(Lcom/loc/er;BIIBIIIIJIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-virtual {v4, v3}, Lcom/loc/bv;->c(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/bw;->a:Lcom/loc/bv;

    invoke-virtual {v3}, Lcom/loc/bv;->c()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/loc/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
