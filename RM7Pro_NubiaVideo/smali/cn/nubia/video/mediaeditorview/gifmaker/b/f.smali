.class public Lcn/nubia/video/mediaeditorview/gifmaker/b/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private A:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

.field private B:[B

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:I

.field private H:I

.field private I:[S

.field private J:[B

.field private K:[B

.field private L:[B

.field private M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

.field private N:I

.field private O:Lcn/nubia/video/mediaeditorview/gifmaker/b/b;

.field private P:[B

.field private final a:Ljava/lang/String;

.field private b:Ljava/io/InputStream;

.field private c:I

.field public d:I

.field public e:I

.field private f:Z

.field private g:I

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcn/nubia/video/mediaeditorview/gifmaker/b/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    const-class v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->A:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 4
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->B:[B

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->C:I

    .line 6
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->D:I

    .line 7
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->E:I

    .line 8
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->F:Z

    .line 9
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    .line 10
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->O:Lcn/nubia/video/mediaeditorview/gifmaker/b/b;

    .line 11
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->P:[B

    .line 12
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    .line 13
    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->O:Lcn/nubia/video/mediaeditorview/gifmaker/b/b;

    return-void
.end method

.method private a()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->s:I

    iget v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->t:I

    mul-int/2addr v1, v2

    .line 2
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->L:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, v1, :cond_1

    .line 3
    :cond_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->L:[B

    .line 4
    :cond_1
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->I:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_2

    new-array v2, v3, [S

    .line 5
    iput-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->I:[S

    .line 6
    :cond_2
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->J:[B

    if-nez v2, :cond_3

    new-array v2, v3, [B

    .line 7
    iput-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->J:[B

    .line 8
    :cond_3
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->K:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1001

    new-array v2, v2, [B

    .line 9
    iput-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->K:[B

    .line 10
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v5, :cond_5

    .line 11
    iget-object v11, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->I:[S

    aput-short v9, v11, v10

    .line 12
    iget-object v11, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->J:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    move v14, v2

    move/from16 v16, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v15, v13

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    const/4 v3, -0x1

    move v9, v7

    :goto_1
    if-ge v11, v1, :cond_11

    if-nez v12, :cond_10

    if-ge v13, v14, :cond_8

    if-nez v17, :cond_7

    .line 13
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->l()I

    move-result v17

    if-gtz v17, :cond_6

    goto/16 :goto_5

    :cond_6
    const/16 v18, 0x0

    .line 14
    :cond_7
    iget-object v10, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->B:[B

    aget-byte v10, v10, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v13

    add-int/2addr v15, v10

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v18, v18, 0x1

    const/4 v10, -0x1

    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    :cond_8
    const/4 v10, -0x1

    and-int v4, v15, v16

    shr-int/2addr v15, v14

    sub-int/2addr v13, v14

    if-gt v4, v9, :cond_11

    if-ne v4, v6, :cond_9

    goto/16 :goto_5

    :cond_9
    if-ne v4, v5, :cond_a

    move v14, v2

    move v9, v7

    move/from16 v16, v8

    move v3, v10

    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    if-ne v3, v10, :cond_b

    .line 15
    iget-object v3, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->K:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v21, v2

    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->J:[B

    aget-byte v2, v2, v4

    aput-byte v2, v3, v12

    move v3, v4

    move/from16 v19, v3

    move v12, v10

    move/from16 v2, v21

    goto :goto_2

    :cond_b
    move/from16 v21, v2

    if-ne v4, v9, :cond_c

    .line 16
    iget-object v2, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->K:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v22, v4

    move/from16 v4, v19

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    move v2, v3

    move v12, v10

    goto :goto_3

    :cond_c
    move/from16 v22, v4

    move/from16 v2, v22

    :goto_3
    if-le v2, v5, :cond_d

    .line 17
    iget-object v4, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->K:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v19, v5

    iget-object v5, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->J:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v12

    .line 18
    iget-object v4, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->I:[S

    aget-short v2, v4, v2

    move v12, v10

    move/from16 v5, v19

    goto :goto_3

    :cond_d
    move/from16 v19, v5

    .line 19
    iget-object v4, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->J:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x1000

    if-lt v9, v5, :cond_e

    goto :goto_5

    .line 20
    :cond_e
    iget-object v5, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->K:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v23, v6

    int-to-byte v6, v2

    aput-byte v6, v5, v12

    .line 21
    iget-object v5, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->I:[S

    int-to-short v3, v3

    aput-short v3, v5, v9

    .line 22
    aput-byte v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    and-int v3, v9, v16

    const/16 v5, 0x1000

    if-nez v3, :cond_f

    if-ge v9, v5, :cond_f

    add-int/lit8 v14, v14, 0x1

    add-int v16, v16, v9

    :cond_f
    move v12, v10

    move/from16 v3, v22

    goto :goto_4

    :cond_10
    move/from16 v21, v2

    move/from16 v23, v6

    move/from16 v4, v19

    move/from16 v19, v5

    const/16 v5, 0x1000

    move v2, v4

    :goto_4
    const/4 v4, -0x1

    add-int/2addr v12, v4

    .line 23
    iget-object v6, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->L:[B

    add-int/lit8 v10, v20, 0x1

    iget-object v4, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->K:[B

    aget-byte v4, v4, v12

    aput-byte v4, v6, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v10

    move/from16 v5, v19

    move/from16 v6, v23

    const/4 v4, 0x1

    move/from16 v19, v2

    move/from16 v2, v21

    goto/16 :goto_1

    :cond_11
    :goto_5
    move/from16 v2, v20

    :goto_6
    if-ge v2, v1, :cond_12

    .line 24
    iget-object v3, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->L:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    .line 4
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->h:[I

    .line 5
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->i:[I

    return-void
.end method

.method private k()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->C:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2
    :goto_0
    :try_start_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->C:I

    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->B:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_1
    :goto_1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->C:I

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    :cond_2
    return v1
.end method

.method private m()I
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->P:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->P:[B

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->v()I

    move-result v0

    return v0
.end method

.method private n(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v3, v2

    :goto_1
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 5
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    .line 6
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 7
    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    .line 8
    aput v3, v0, v2

    move v3, v6

    move v2, v7

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private o()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/16 v4, 0x21

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_1

    .line 3
    iput v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->r()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v2

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y()V

    goto :goto_0

    .line 7
    :cond_4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->l()I

    const-string v2, ""

    move v3, v0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->B:[B

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const-string v3, "NETSCAPE2.0"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->t()V

    goto :goto_0

    .line 11
    :cond_6
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y()V

    goto :goto_0

    .line 12
    :cond_7
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->p()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    .line 3
    iput v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->D:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->D:I

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    iput-boolean v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->F:Z

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->H:I

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    return-void
.end method

.method private q()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    :goto_0
    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "GIF"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->s()V

    .line 5
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->f:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->g:I

    invoke-direct {p0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->n(I)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->h:[I

    if-eqz v1, :cond_2

    .line 7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k:I

    aget v0, v1, v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->l:I

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->a:Ljava/lang/String;

    const-string v2, "readHeader: gct null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->O:Lcn/nubia/video/mediaeditorview/gifmaker/b/b;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/b/b;->a(ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method private r()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->q:I

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->r:I

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->s:I

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->t:I

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->n:Z

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 7
    :goto_1
    iput-boolean v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->o:Z

    const/4 v4, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v4, v0

    .line 8
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->p:I

    if-eqz v1, :cond_2

    .line 9
    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->n(I)[I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->i:[I

    .line 10
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->j:[I

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->h:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->j:[I

    .line 12
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->H:I

    if-ne v0, v1, :cond_3

    .line 13
    iput v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->l:I

    .line 14
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->F:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->j:[I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->H:I

    aget v4, v0, v1

    .line 16
    aput v3, v0, v1

    move v3, v4

    .line 17
    :cond_4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->j:[I

    if-nez v0, :cond_5

    .line 18
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    .line 19
    :cond_5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 20
    :cond_6
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->a()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y()V

    .line 22
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 23
    :cond_7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    .line 24
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->e:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y:Landroid/graphics/Bitmap;

    .line 25
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->x()V

    .line 26
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    if-nez v0, :cond_8

    .line 27
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y:Landroid/graphics/Bitmap;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    .line 28
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->A:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    goto :goto_4

    .line 29
    :cond_8
    :goto_3
    iget-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    if-eqz v1, :cond_9

    move-object v0, v1

    goto :goto_3

    .line 30
    :cond_9
    new-instance v1, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y:Landroid/graphics/Bitmap;

    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    invoke-direct {v1, v2, v4}, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    .line 31
    :goto_4
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->F:Z

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->j:[I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->H:I

    aput v3, v0, v1

    .line 33
    :cond_a
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->w()V

    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d:I

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->e:I

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->f:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    .line 5
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->g:I

    .line 6
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k:I

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->l()I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->B:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    aget-byte v1, v0, v2

    const/4 v1, 0x2

    .line 4
    aget-byte v0, v0, v1

    .line 5
    :cond_1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->C:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private u()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->k()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private v()I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->j()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->q()V

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->o()V

    .line 6
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    const/4 v3, 0x1

    if-gez v0, :cond_0

    .line 7
    iput v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->O:Lcn/nubia/video/mediaeditorview/gifmaker/b/b;

    invoke-interface {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/b/b;->a(ZI)V

    goto :goto_0

    .line 9
    :cond_0
    iput v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->O:Lcn/nubia/video/mediaeditorview/gifmaker/b/b;

    invoke-interface {v0, v3, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/b/b;->a(ZI)V

    .line 11
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->O:Lcn/nubia/video/mediaeditorview/gifmaker/b/b;

    invoke-interface {v0, v1, v2}, Lcn/nubia/video/mediaeditorview/gifmaker/b/b;->a(ZI)V

    .line 15
    :goto_1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->c:I

    return v0
.end method

.method private w()V
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->D:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->E:I

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->q:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u:I

    .line 3
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->r:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->v:I

    .line 4
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->s:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->w:I

    .line 5
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->t:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->x:I

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->z:Landroid/graphics/Bitmap;

    .line 7
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->l:I

    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->m:I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->D:I

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->F:Z

    .line 10
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->i:[I

    return-void
.end method

.method private x()V
    .locals 14

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d:I

    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->e:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->E:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lez v1, :cond_4

    if-ne v1, v9, :cond_1

    .line 3
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    sub-int/2addr v1, v11

    if-lez v1, :cond_0

    sub-int/2addr v1, v12

    .line 4
    invoke-virtual {p0, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->i(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->z:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->z:Landroid/graphics/Bitmap;

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->z:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 7
    iget v7, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->e:I

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 8
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->E:I

    if-ne v1, v11, :cond_4

    .line 9
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->F:Z

    if-nez v1, :cond_2

    .line 10
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->m:I

    goto :goto_1

    :cond_2
    move v1, v10

    :goto_1
    move v2, v10

    .line 11
    :goto_2
    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->x:I

    if-ge v2, v3, :cond_4

    .line 12
    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->v:I

    add-int/2addr v3, v2

    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->u:I

    add-int/2addr v3, v4

    .line 13
    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->w:I

    add-int/2addr v4, v3

    :goto_3
    if-ge v3, v4, :cond_3

    .line 14
    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    move v2, v10

    move v3, v12

    .line 15
    :goto_4
    iget v4, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->t:I

    if-ge v10, v4, :cond_d

    .line 16
    iget-boolean v5, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->o:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x4

    if-lt v2, v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v11, :cond_7

    if-eq v3, v9, :cond_6

    if-eq v3, v5, :cond_5

    goto :goto_5

    :cond_5
    move v1, v11

    move v2, v12

    goto :goto_5

    :cond_6
    move v1, v5

    move v2, v11

    goto :goto_5

    :cond_7
    move v2, v5

    :cond_8
    :goto_5
    add-int v4, v2, v1

    goto :goto_6

    :cond_9
    move v4, v2

    move v2, v10

    .line 17
    :goto_6
    iget v5, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->r:I

    add-int/2addr v2, v5

    .line 18
    iget v5, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->e:I

    if-ge v2, v5, :cond_c

    .line 19
    iget v5, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d:I

    mul-int/2addr v2, v5

    .line 20
    iget v6, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->q:I

    add-int/2addr v6, v2

    .line 21
    iget v7, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->s:I

    add-int v8, v6, v7

    add-int v13, v2, v5

    if-ge v13, v8, :cond_a

    add-int v8, v2, v5

    :cond_a
    mul-int/2addr v7, v10

    :goto_7
    if-ge v6, v8, :cond_c

    .line 22
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->L:[B

    add-int/lit8 v5, v7, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    .line 23
    iget-object v7, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->j:[I

    aget v2, v7, v2

    if-eqz v2, :cond_b

    .line 24
    aput v2, v0, v6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move v2, v4

    goto :goto_4

    .line 25
    :cond_d
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->d:I

    iget v2, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->e:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->y:Landroid/graphics/Bitmap;

    return-void
.end method

.method private y()V
    .locals 1

    .line 1
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->l()I

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->C:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->a:Landroid/graphics/Bitmap;

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    .line 7
    :cond_1
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->P:[B

    return-void
.end method

.method public d()Lcn/nubia/video/mediaeditorview/gifmaker/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->A:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    return-object v0
.end method

.method public e(I)I
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    if-ltz p1, :cond_0

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->g(I)Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->b:I

    iput p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    .line 5
    :cond_0
    iget p1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->G:I

    return p1
.end method

.method public f()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    .line 2
    iget v1, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    iget v3, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    if-ge v2, v3, :cond_0

    .line 4
    iget v3, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->b:I

    aput v3, v1, v2

    .line 5
    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public g(I)Lcn/nubia/video/mediaeditorview/gifmaker/b/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->M:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->c:Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->N:I

    return v0
.end method

.method public i(I)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->g(I)Lcn/nubia/video/mediaeditorview/gifmaker/b/c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcn/nubia/video/mediaeditorview/gifmaker/b/c;->a:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->v()I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->P:[B

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/gifmaker/b/f;->m()I

    :cond_1
    :goto_0
    return-void
.end method
