.class public Lcn/nubia/camera/az/d;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 7

    .line 31
    invoke-virtual {p0}, Lcn/nubia/camera/az/d;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0}, Lcn/nubia/camera/az/d;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/az/d;->b:Landroid/util/Size;

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/az/d;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0}, Lcn/nubia/camera/az/d;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/w;->d()[Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/az/d;->c:Landroid/util/Size;

    .line 33
    invoke-virtual {p0}, Lcn/nubia/camera/az/d;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/az/d;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Landroid/util/Size;

    iget-object v0, p0, Lcn/nubia/camera/az/d;->b:Landroid/util/Size;

    .line 34
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v3, v0

    iget-object v0, p0, Lcn/nubia/camera/az/d;->b:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    const-wide v5, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v0

    .line 35
    new-instance v1, Lcn/nubia/camera/k/x$b;

    iget-object v2, p0, Lcn/nubia/camera/az/d;->b:Landroid/util/Size;

    iget-object v3, p0, Lcn/nubia/camera/az/d;->c:Landroid/util/Size;

    invoke-direct {v1, p0, v2, v3, v0}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v1

    :array_0
    .array-data 4
        0x500
        0x2d0
    .end array-data

    :array_1
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method
