.class public Lcn/nubia/camera/bb/q;
.super Lcn/nubia/camera/bb/h;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/bb/h;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcn/nubia/camera/bb/q;->b:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcn/nubia/camera/bb/q;->b:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->ai()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/bb/q;->c:I

    return-void
.end method

.method private b([Landroid/util/Size;II)Landroid/util/Size;
    .locals 4

    .line 94
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 95
    invoke-static {v2, p2, p3}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;II)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lcn/nubia/camera/bb/q;->a(Landroid/util/Size;[Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method private c([Landroid/util/Size;II)Z
    .locals 5

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 104
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-ne v4, p2, :cond_0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 105
    :cond_0
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-ne v4, p2, :cond_2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v3, p3, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
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
    .locals 8

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->s()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->G()Lcn/nubia/camera/k/w;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/w;->b()[Landroid/util/Size;

    move-result-object v1

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/bb/q;->b([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v2

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v2, v3, v0}, Lcn/nubia/camera/bb/q;->b([Landroid/util/Size;II)Landroid/util/Size;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Size;

    .line 47
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DD)Landroid/util/Size;

    move-result-object v2

    .line 48
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v0, v1, v2}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method public aa()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected ai()I
    .locals 8

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/bb/q;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.videoQuality"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 60
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    return v3

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->I()Lcn/nubia/b/b;

    move-result-object v0

    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->a(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 71
    fill-array-data v2, :array_0

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_3

    .line 78
    aget v5, v2, v3

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->J()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 80
    iget v7, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v0, v7, v6}, Lcn/nubia/camera/bb/q;->c([Landroid/util/Size;II)Z

    move-result v6

    if-eqz v6, :cond_2

    return v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/bb/q;->af()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 89
    aget-object v1, v0, v4

    if-eqz v1, :cond_5

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_5
    return v3

    nop

    :array_0
    .array-data 4
        0x3
        0x7
        0x2
        0x0
    .end array-data
.end method

.method public c()Lcn/nubia/camera/k/x$c;
    .locals 1

    const/4 v0, 0x0

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

    .line 53
    iget v0, p0, Lcn/nubia/camera/bb/q;->c:I

    return v0
.end method
