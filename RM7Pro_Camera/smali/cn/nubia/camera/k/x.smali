.class public Lcn/nubia/camera/k/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/x$a;,
        Lcn/nubia/camera/k/x$c;,
        Lcn/nubia/camera/k/x$b;
    }
.end annotation


# instance fields
.field protected a:Lcn/nubia/camera/k/ae;

.field private b:Lcn/nubia/camera/af/a;

.field private c:Lcom/android/preference/c;

.field private d:Lcn/nubia/camera/k/w;

.field private e:Landroid/hardware/camera2/CameraCharacteristics;

.field private f:Lcn/nubia/b/b;

.field private g:Landroid/content/Context;

.field private h:Lcn/nubia/camera/selfieflash/a;

.field private i:Lcn/nubia/camera/zoom/c;

.field private j:Lcn/nubia/camera/three_a/b/a;

.field private k:Ljava/lang/String;

.field private l:Lcn/nubia/camera/k/x$a;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcn/nubia/camera/k/ae;

    invoke-direct {v0}, Lcn/nubia/camera/k/ae;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/x;->a:Lcn/nubia/camera/k/ae;

    .line 490
    sget-object v0, Lcn/nubia/camera/k/x$a;->a:Lcn/nubia/camera/k/x$a;

    sget-object v0, Lcn/nubia/camera/k/x$a;->a:Lcn/nubia/camera/k/x$a;

    iput-object v0, p0, Lcn/nubia/camera/k/x;->l:Lcn/nubia/camera/k/x$a;

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcn/nubia/camera/k/x;->m:Z

    .line 71
    iput-object p1, p0, Lcn/nubia/camera/k/x;->g:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcn/nubia/camera/k/x;->c:Lcom/android/preference/c;

    .line 73
    iput-object p3, p0, Lcn/nubia/camera/k/x;->k:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcn/nubia/camera/k/x;->b:Lcn/nubia/camera/af/a;

    .line 75
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/k/x;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/x;->e:Landroid/hardware/camera2/CameraCharacteristics;

    .line 76
    new-instance p1, Lcn/nubia/camera/k/w;

    iget-object p2, p0, Lcn/nubia/camera/k/x;->e:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {p1, p2, p3}, Lcn/nubia/camera/k/w;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/camera/k/x;->d:Lcn/nubia/camera/k/w;

    .line 77
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/k/x;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/k/x;->f:Lcn/nubia/b/b;

    return-void
.end method

.method private af()Z
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/x;->b:Lcn/nubia/camera/af/a;

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 135
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/k/x;->i:Lcn/nubia/camera/zoom/c;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method protected A()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f03bd

    .line 226
    invoke-virtual {p0, v0}, Lcn/nubia/camera/k/x;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "off"

    return-object v0
.end method

.method public D()F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F()Lcom/android/preference/c;
    .locals 1

    .line 319
    iget-object v0, p0, Lcn/nubia/camera/k/x;->c:Lcom/android/preference/c;

    return-object v0
.end method

.method public G()Lcn/nubia/camera/k/w;
    .locals 1

    .line 323
    iget-object v0, p0, Lcn/nubia/camera/k/x;->d:Lcn/nubia/camera/k/w;

    return-object v0
.end method

.method public H()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 327
    iget-object v0, p0, Lcn/nubia/camera/k/x;->e:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public I()Lcn/nubia/b/b;
    .locals 1

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/k/x;->f:Lcn/nubia/b/b;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcn/nubia/camera/k/x;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected K()Lcn/nubia/camera/af/a;
    .locals 1

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/k/x;->b:Lcn/nubia/camera/af/a;

    return-object v0
.end method

.method protected L()Landroid/content/Context;
    .locals 1

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/k/x;->g:Landroid/content/Context;

    return-object v0
.end method

.method public M()Z
    .locals 2

    .line 430
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->aa()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected N()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public O()Z
    .locals 3

    .line 445
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcn/nubia/camera/k/x;->c:Lcom/android/preference/c;

    const-string v1, "pref_selfie_flashmode_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selfie-torch"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Lcn/nubia/camera/selfieflash/a;
    .locals 1

    .line 452
    iget-object v0, p0, Lcn/nubia/camera/k/x;->h:Lcn/nubia/camera/selfieflash/a;

    return-object v0
.end method

.method protected Q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected R()Z
    .locals 3

    .line 469
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcn/nubia/camera/k/x;->c:Lcom/android/preference/c;

    const v1, 0x7f0f021b

    invoke-virtual {p0, v1}, Lcn/nubia/camera/k/x;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_wideangle_correction_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method protected S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected T()I
    .locals 3

    .line 483
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_disable_auto_supernight_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected U()Lcn/nubia/camera/k/x$a;
    .locals 1

    .line 503
    iget-object v0, p0, Lcn/nubia/camera/k/x;->l:Lcn/nubia/camera/k/x$a;

    return-object v0
.end method

.method public V()Z
    .locals 2

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/k/x;->l:Lcn/nubia/camera/k/x$a;

    sget-object v1, Lcn/nubia/camera/k/x$a;->a:Lcn/nubia/camera/k/x$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcn/nubia/camera/k/x;->m:Z

    return v0
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcn/nubia/camera/k/x;->m:Z

    .line 521
    sget-object v0, Lcn/nubia/camera/k/x$a;->a:Lcn/nubia/camera/k/x$a;

    iput-object v0, p0, Lcn/nubia/camera/k/x;->l:Lcn/nubia/camera/k/x$a;

    return-void
.end method

.method public Y()Ljava/lang/String;
    .locals 1

    const-string v0, "off"

    return-object v0
.end method

.method public Z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcn/nubia/camera/three_a/b/a;)I
    .locals 2

    if-nez p1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/x;->b:Lcn/nubia/camera/af/a;

    invoke-static {v0}, Lcn/nubia/camera/aq/f;->a(Lcn/nubia/camera/af/a;)I

    move-result v0

    const-string v1, "pref_camera_exposure_compensation"

    invoke-virtual {p1, v1, v0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/three_a/b/a;->d()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected a(Lcn/nubia/camera/three_a/b/a;F)I
    .locals 1

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/camera/three_a/b/a;->c()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected a(D[Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    .line 284
    sget-object v0, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/camera/k/x;->a(D[Landroid/util/Size;I)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method protected a(D[Landroid/util/Size;I)Landroid/util/Size;
    .locals 14

    move-object/from16 v0, p3

    .line 295
    array-length v1, v0

    const/4 v2, 0x0

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v5, 0x0

    move v6, v2

    move-wide v7, v3

    :goto_0
    if-ge v6, v1, :cond_2

    aget-object v9, v0, v6

    .line 296
    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v10

    int-to-double v10, v10

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    sub-double/2addr v10, p1

    .line 297
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v10

    sub-int v10, v10, p4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-double v10, v10

    cmpg-double v10, v10, v7

    if-gez v10, :cond_1

    .line 300
    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v5

    sub-int v5, v5, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v7, v5

    move-object v5, v9

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_4

    .line 308
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v6, v0, v2

    .line 309
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    sub-int v7, v7, p4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v7, v3

    if-gez v7, :cond_3

    .line 311
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int v3, v3, p4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    move-object v5, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method protected a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 275
    invoke-virtual {p0, v0, v1, p2}, Lcn/nubia/camera/k/x;->a(D[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 8

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/k/x;->d:Lcn/nubia/camera/k/w;

    invoke-virtual {v0}, Lcn/nubia/camera/k/w;->g()Landroid/util/Size;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcn/nubia/camera/k/x;->d:Lcn/nubia/camera/k/w;

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/k/x;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcn/nubia/camera/k/x;->d:Lcn/nubia/camera/k/w;

    iget-object v3, p0, Lcn/nubia/camera/k/x;->e:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 62
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 63
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3f847ae140000000L    # 0.009999999776482582

    .line 61
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 67
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v0, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method public declared-synchronized a(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/x;->a:Lcn/nubia/camera/k/ae;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/camera/k/ae;->a(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcn/nubia/camera/k/x$a;)V
    .locals 2

    .line 498
    iput-object p1, p0, Lcn/nubia/camera/k/x;->l:Lcn/nubia/camera/k/x$a;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "override Flash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParametersItem"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/camera/selfieflash/a;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/k/x;->h:Lcn/nubia/camera/selfieflash/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/zoom/c;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/camera/k/x;->i:Lcn/nubia/camera/zoom/c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 512
    iput-boolean p1, p0, Lcn/nubia/camera/k/x;->m:Z

    return-void
.end method

.method public aa()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ab()I
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->aa()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x6d

    return v0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->ad()[I

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ac()I
    .locals 7

    .line 560
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v0

    .line 565
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/b;->s()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 566
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/b/b;->a(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 569
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ak/a;->at()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ak/a;->as()I

    move-result v2

    .line 570
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->ad()[I

    move-result-object v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v1

    .line 571
    :goto_2
    iget-object v5, p0, Lcn/nubia/camera/k/x;->a:Lcn/nubia/camera/k/ae;

    sget-object v6, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6}, Lcn/nubia/camera/k/ae;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    if-lez v2, :cond_4

    if-eqz v5, :cond_4

    .line 572
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method public ad()[I
    .locals 5

    .line 579
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v2, p0, Lcn/nubia/camera/k/x;->a:Lcn/nubia/camera/k/ae;

    sget-object v3, Lcn/nubia/camera/k/a/a$c;->k:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v3}, Lcn/nubia/camera/k/ae;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_1

    .line 586
    array-length v3, v2

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 587
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    :cond_1
    const-string v3, "on"

    .line 589
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    const-string v3, "auto"

    .line 592
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    aget v0, v2, v0

    if-lez v0, :cond_3

    return-object v2

    :cond_3
    return-object v1
.end method

.method protected ae()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(I)I
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/k/x;->e:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0, p1}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result p1

    return p1
.end method

.method public b(Lcn/nubia/camera/three_a/b/a;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/camera/k/x;->j:Lcn/nubia/camera/three_a/b/a;

    return-void
.end method

.method protected b(Landroid/util/Size;[Landroid/util/Size;)Z
    .locals 6

    .line 460
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 461
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected c(I)Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcn/nubia/camera/k/x;->g:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "off"

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected k()I
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01f4

    .line 207
    invoke-virtual {p0, v1}, Lcn/nubia/camera/k/x;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "pref_camera_metering_mode_key"

    .line 206
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected l()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected m()J
    .locals 5

    .line 181
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->K()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/w/d;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->I()Lcn/nubia/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/b;->e()Landroid/util/Range;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 188
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 189
    :cond_1
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 190
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public n()I
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->L()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->K()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/w/d;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected o()F
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->K()Lcn/nubia/camera/af/a;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcn/nubia/camera/zoom/c;
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/k/x;->i:Lcn/nubia/camera/zoom/c;

    return-object v0
.end method

.method protected s()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected t()Lcn/nubia/b/i;
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/k/x;->h:Lcn/nubia/camera/selfieflash/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/camera/selfieflash/a;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    sget-object v0, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {v0}, Lcn/nubia/b/i;->valueOf(Ljava/lang/String;)Lcn/nubia/b/i;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    .line 107
    :goto_0
    sget-object v1, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/k/x;->l:Lcn/nubia/camera/k/x$a;

    sget-object v2, Lcn/nubia/camera/k/x$a;->b:Lcn/nubia/camera/k/x$a;

    if-ne v1, v2, :cond_2

    .line 108
    sget-object v0, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    goto :goto_1

    .line 109
    :cond_2
    sget-object v1, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcn/nubia/camera/k/x;->l:Lcn/nubia/camera/k/x$a;

    sget-object v2, Lcn/nubia/camera/k/x$a;->c:Lcn/nubia/camera/k/x$a;

    if-ne v1, v2, :cond_3

    .line 110
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    :cond_3
    :goto_1
    return-object v0

    .line 115
    :cond_4
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    return-object v0
.end method

.method protected u()Z
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->C()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-direct {p0}, Lcn/nubia/camera/k/x;->af()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v2, "pref_manual_cct"

    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/k/x;->j:Lcn/nubia/camera/three_a/b/a;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/b/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected v()Lcn/nubia/b/i;
    .locals 2

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/k/x;->h:Lcn/nubia/camera/selfieflash/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/nubia/camera/selfieflash/a;->d()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/x;->h:Lcn/nubia/camera/selfieflash/a;

    .line 144
    invoke-interface {v0}, Lcn/nubia/camera/selfieflash/a;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 145
    :cond_0
    sget-object v0, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    return-object v0

    .line 147
    :cond_1
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    return-object v0
.end method

.method protected w()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected x()I
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    const-string v1, "pref_manual_cct"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected y()I
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcn/nubia/camera/k/x;->F()Lcom/android/preference/c;

    move-result-object v0

    const v1, 0x7f0f01bf

    .line 202
    invoke-virtual {p0, v1}, Lcn/nubia/camera/k/x;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "pref_camera_color_tint_key"

    .line 201
    invoke-virtual {v0, v2, v1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method
