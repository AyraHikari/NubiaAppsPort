.class public Lcn/nubia/camera/hitchcock/f;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Z

.field private c:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcn/nubia/camera/hitchcock/f;->b:Z

    .line 21
    new-instance p1, Landroid/util/Range;

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/f;->c:Landroid/util/Range;

    .line 25
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->O()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/hitchcock/f;->b:Z

    return-void
.end method


# virtual methods
.method public M()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a([Landroid/util/Size;II)Landroid/util/Size;
    .locals 4

    .line 49
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 50
    invoke-static {v2, p2, p3}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/hitchcock/f;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 10

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/f;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/f;->s()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/f;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/camera/hitchcock/f;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v1

    .line 38
    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/f;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/f;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/util/Size;

    .line 40
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v6, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 39
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v0

    .line 42
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v2, v0}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method public aa()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcn/nubia/camera/hitchcock/f;->b:Z

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

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/f;->c:Landroid/util/Range;

    return-object v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected s()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected w()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method
