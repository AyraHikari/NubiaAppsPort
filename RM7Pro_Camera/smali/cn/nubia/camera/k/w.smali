.class public Lcn/nubia/camera/k/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[Landroid/util/Size;

.field private b:[Landroid/util/Size;

.field private c:[Landroid/util/Size;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/Size;

.field private f:Landroid/util/Size;

.field private g:Landroid/util/Size;

.field private h:Landroid/util/Size;

.field private i:Landroid/util/Size;

.field private j:Landroid/util/Size;

.field private k:Landroid/util/Size;

.field private l:Landroid/util/Size;

.field private m:Z

.field private n:Landroid/hardware/camera2/CameraCharacteristics;

.field private o:Lcn/nubia/b/b;

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/k/w;->a:[Landroid/util/Size;

    .line 27
    iput-object v0, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    .line 28
    iput-object v0, p0, Lcn/nubia/camera/k/w;->c:[Landroid/util/Size;

    .line 29
    iput-object v0, p0, Lcn/nubia/camera/k/w;->d:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lcn/nubia/camera/k/w;->e:Landroid/util/Size;

    .line 32
    iput-object v0, p0, Lcn/nubia/camera/k/w;->f:Landroid/util/Size;

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/k/w;->g:Landroid/util/Size;

    .line 34
    iput-object v0, p0, Lcn/nubia/camera/k/w;->h:Landroid/util/Size;

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/k/w;->i:Landroid/util/Size;

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/k/w;->j:Landroid/util/Size;

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/k/w;->k:Landroid/util/Size;

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/k/w;->l:Landroid/util/Size;

    const/4 v1, 0x0

    .line 39
    iput-boolean v1, p0, Lcn/nubia/camera/k/w;->m:Z

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/k/w;->n:Landroid/hardware/camera2/CameraCharacteristics;

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/k/w;->o:Lcn/nubia/b/b;

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/k/w;->n:Landroid/hardware/camera2/CameraCharacteristics;

    .line 47
    iput-object p2, p0, Lcn/nubia/camera/k/w;->p:Ljava/lang/String;

    const p1, 0x2dc6c00

    .line 48
    iput p1, p0, Lcn/nubia/camera/k/w;->q:I

    return-void
.end method

.method private a(Z[Landroid/util/Size;I)Landroid/util/Size;
    .locals 15

    move-object/from16 v1, p2

    move/from16 v6, p3

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    .line 271
    sget-object v0, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    .line 272
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v7, v0

    div-double/2addr v4, v7

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const/4 v0, 0x0

    .line 276
    array-length v7, v1

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_6

    aget-object v10, v1, v8

    cmpl-double v11, v4, v2

    if-eqz v11, :cond_1

    .line 278
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-double v11, v11

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v11, v13

    sub-double/2addr v11, v4

    .line 279
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    const-wide v13, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v11, v11, v13

    if-lez v11, :cond_1

    goto :goto_2

    .line 281
    :cond_1
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v12

    mul-int/2addr v11, v12

    const/4 v12, -0x1

    if-eq v6, v12, :cond_3

    if-ge v11, v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v12, p0

    goto :goto_4

    :cond_3
    :goto_3
    move-object v12, p0

    .line 282
    iget-object v13, v12, Lcn/nubia/camera/k/w;->p:Ljava/lang/String;

    .line 283
    invoke-static {v10, v13}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_4

    :cond_4
    if-le v11, v9, :cond_5

    move-object v0, v10

    move v9, v11

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    move-object v12, p0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    const-string v0, "ParameterResolver"

    const-string v2, "No picture with a size fitting screen ratio found, fall back to choose a maximum picture size with a ratio of 16/9..."

    .line 292
    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v7, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide v2, v4

    move-wide v4, v7

    move/from16 v6, p3

    .line 294
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DDI)Landroid/util/Size;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private i()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/k/w;->o:Lcn/nubia/b/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/w;->n:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcn/nubia/b/b;

    iget-object v1, p0, Lcn/nubia/camera/k/w;->n:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, v1}, Lcn/nubia/b/b;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcn/nubia/camera/k/w;->o:Lcn/nubia/b/b;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->i()V

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/w;->o:Lcn/nubia/b/b;

    if-eqz v0, :cond_0

    const/16 v1, 0x100

    .line 86
    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->i()V

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/k/w;->a:[Landroid/util/Size;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/w;->o:Lcn/nubia/b/b;

    if-eqz v0, :cond_0

    .line 98
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->a(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/w;->a:[Landroid/util/Size;

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->i()V

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/k/w;->c:[Landroid/util/Size;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/w;->o:Lcn/nubia/b/b;

    if-eqz v0, :cond_0

    const/16 v1, 0x23

    .line 110
    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/w;->c:[Landroid/util/Size;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/k/w;->g:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->j()V

    const/4 v0, 0x1

    .line 122
    iget-object v1, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    iget v2, p0, Lcn/nubia/camera/k/w;->q:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/k/w;->a(Z[Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/w;->g:Landroid/util/Size;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 8

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/k/w;->k:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->j()V

    .line 134
    iget-object v2, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    const-wide v5, 0x3fb99999a0000000L    # 0.10000000149011612

    iget v7, p0, Lcn/nubia/camera/k/w;->q:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DDI)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/w;->k:Landroid/util/Size;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/k/w;->e:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->j()V

    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    iget v2, p0, Lcn/nubia/camera/k/w;->q:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/k/w;->a(Z[Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/w;->e:Landroid/util/Size;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/util/Size;
    .locals 3

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/k/w;->f:Landroid/util/Size;

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->i()V

    .line 54
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->j()V

    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/camera/k/w;->a(Z[Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/w;->f:Landroid/util/Size;

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/w;->f:Landroid/util/Size;

    return-object v0
.end method

.method public a(D)Landroid/util/Size;
    .locals 7

    .line 223
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->i()V

    .line 224
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->j()V

    .line 225
    iget-object v1, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    iget v6, p0, Lcn/nubia/camera/k/w;->q:I

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DDI)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public a([I[Landroid/util/Size;)Landroid/util/Size;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 335
    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 340
    aget v5, p1, v2

    const/4 v6, 0x1

    aget v6, p1, v6

    invoke-static {v4, v5, v6}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;II)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public a([Landroid/util/Size;DD)Landroid/util/Size;
    .locals 12

    move-object v0, p1

    .line 249
    array-length v1, v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_5

    aget-object v6, v0, v5

    .line 250
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v7, v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    if-nez v2, :cond_1

    move-object v2, v6

    move-wide v3, v7

    :cond_1
    sub-double v9, v7, p2

    .line 258
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, p4

    if-lez v9, :cond_2

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-lt v9, v10, :cond_3

    sub-double v9, v3, p2

    .line 260
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, p4

    if-lez v9, :cond_4

    :cond_3
    move-object v2, v6

    move-wide v3, v7

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public a([Landroid/util/Size;DDI)Landroid/util/Size;
    .locals 9

    .line 231
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, p1, v1

    .line 232
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    sub-double/2addr v5, p2

    .line 233
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v5, v5, p4

    if-lez v5, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    const/4 v6, -0x1

    if-eq p6, v6, :cond_1

    if-lt v5, p6, :cond_1

    goto :goto_1

    :cond_1
    if-le v5, v2, :cond_2

    move-object v3, v4

    move v2, v5

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public b()[Landroid/util/Size;
    .locals 1

    .line 79
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->j()V

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/k/w;->b:[Landroid/util/Size;

    return-object v0
.end method

.method public c()[Landroid/util/Size;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->k()V

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/k/w;->a:[Landroid/util/Size;

    return-object v0
.end method

.method public d()[Landroid/util/Size;
    .locals 1

    .line 103
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->l()V

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/k/w;->c:[Landroid/util/Size;

    return-object v0
.end method

.method public e()Landroid/util/Size;
    .locals 1

    .line 115
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->m()V

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/k/w;->g:Landroid/util/Size;

    return-object v0
.end method

.method public f()Landroid/util/Size;
    .locals 1

    .line 127
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->n()V

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/k/w;->k:Landroid/util/Size;

    return-object v0
.end method

.method public g()Landroid/util/Size;
    .locals 1

    .line 180
    invoke-direct {p0}, Lcn/nubia/camera/k/w;->o()V

    .line 181
    iget-object v0, p0, Lcn/nubia/camera/k/w;->e:Landroid/util/Size;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/k/w;->o:Lcn/nubia/b/b;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcn/nubia/b/b;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/k/w;->m:Z

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/k/w;->m:Z

    return v0
.end method
