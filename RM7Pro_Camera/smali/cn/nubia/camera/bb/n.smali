.class public Lcn/nubia/camera/bb/n;
.super Lcn/nubia/camera/bb/h;
.source "SourceFile"


# instance fields
.field private b:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/bb/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 28
    new-instance p1, Landroid/util/Range;

    const/16 p2, 0x78

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/n;->b:Landroid/util/Range;

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/bb/n;->ai()V

    return-void
.end method

.method private ai()V
    .locals 7

    .line 37
    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->I()Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcn/nubia/b/b;->a(III)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "SlomoVideoParametersItem"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 40
    new-instance v3, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, p0, Lcn/nubia/camera/bb/n;->b:Landroid/util/Range;

    .line 41
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bb/n;->c:I

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->I()Lcn/nubia/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->J()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x78

    invoke-virtual {v1, v5, v6, v3}, Lcn/nubia/b/b;->a(III)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 45
    new-instance v3, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, p0, Lcn/nubia/camera/bb/n;->b:Landroid/util/Range;

    .line 46
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/bb/n;->c:I

    goto :goto_0

    .line 48
    :cond_1
    iput v4, p0, Lcn/nubia/camera/bb/n;->c:I

    const-string v1, "no high speed video quality!"

    .line 49
    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mAEFps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/n;->b:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; slomoQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/bb/n;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected Q()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method public a()Lcn/nubia/camera/k/x$b;
    .locals 10

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->s()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/camera/bb/n;->a([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v1

    .line 85
    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 86
    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/util/Size;

    .line 87
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-double v6, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v6, v8

    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 86
    invoke-virtual/range {v4 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v0

    .line 89
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v1, v2, v0}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method public aa()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "off"

    return-object v0
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

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/bb/n;->ai()V

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/bb/n;->b:Landroid/util/Range;

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

    .line 57
    iget v0, p0, Lcn/nubia/camera/bb/n;->c:I

    return v0
.end method

.method protected w()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/bb/n;->f()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
