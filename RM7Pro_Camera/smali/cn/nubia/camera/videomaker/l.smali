.class public Lcn/nubia/camera/videomaker/l;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;

.field private d:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 6

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 27
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/l;->G()Lcn/nubia/camera/k/w;

    move-result-object p1

    const/4 p2, 0x2

    new-array p3, p2, [I

    fill-array-data p3, :array_0

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/l;->G()Lcn/nubia/camera/k/w;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/l;->b:Landroid/util/Size;

    .line 28
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/l;->G()Lcn/nubia/camera/k/w;

    move-result-object p1

    new-array p2, p2, [I

    fill-array-data p2, :array_1

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/l;->G()Lcn/nubia/camera/k/w;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/k/w;->d()[Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/k/w;->a([I[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/l;->c:Landroid/util/Size;

    .line 29
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/l;->G()Lcn/nubia/camera/k/w;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/l;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Landroid/util/Size;

    iget-object p1, p0, Lcn/nubia/camera/videomaker/l;->b:Landroid/util/Size;

    .line 30
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double p1, p1

    iget-object p3, p0, Lcn/nubia/camera/videomaker/l;->b:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-double p3, p3

    div-double v2, p1, p3

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/l;->d:Landroid/util/Size;

    return-void

    nop

    :array_0
    .array-data 4
        0x280
        0x1e0
    .end array-data

    :array_1
    .array-data 4
        0x280
        0x1e0
    .end array-data
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 4

    .line 35
    new-instance v0, Lcn/nubia/camera/k/x$b;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/l;->b:Landroid/util/Size;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/l;->c:Landroid/util/Size;

    iget-object v3, p0, Lcn/nubia/camera/videomaker/l;->d:Landroid/util/Size;

    invoke-direct {v0, p0, v1, v2, v3}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method
