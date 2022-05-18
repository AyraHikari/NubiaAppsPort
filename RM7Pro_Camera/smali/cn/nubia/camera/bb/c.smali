.class public Lcn/nubia/camera/bb/c;
.super Lcn/nubia/camera/bb/b;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcn/nubia/camera/bb/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/bb/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    return-void
.end method

.method private D()Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private E()Lcom/android/common/c/e;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->t()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 119
    invoke-direct {p0}, Lcn/nubia/camera/bb/c;->E()Lcom/android/common/c/e;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/b$a;

    iget v2, p0, Lcn/nubia/camera/bb/c;->a:I

    iget v3, p0, Lcn/nubia/camera/bb/c;->b:I

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/camera/bb/b$a;-><init>(Lcn/nubia/camera/bb/b;II)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$b;)V

    return-void
.end method

.method protected B()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/bb/c;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->a()V

    return-void
.end method

.method protected a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;
    .locals 8

    .line 38
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcn/nubia/camera/bb/c;->a:I

    .line 45
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcn/nubia/camera/bb/c;->b:I

    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcn/nubia/camera/bb/c;->a:I

    .line 41
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcn/nubia/camera/bb/c;->b:I

    .line 48
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)I

    move-result v0

    iput v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v0, 0x3

    .line 49
    iput v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    const/4 v0, 0x0

    .line 50
    iput v0, p1, Landroid/media/CamcorderProfile;->duration:I

    .line 52
    iget v2, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v3, p0, Lcn/nubia/camera/bb/c;->a:I

    iget v4, p0, Lcn/nubia/camera/bb/c;->b:I

    iget v5, p1, Landroid/media/CamcorderProfile;->duration:I

    const/4 v6, 0x1

    const/16 v7, 0x1e

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/bb/c;->a(IIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object v1

    const/4 v2, 0x2

    .line 54
    invoke-virtual {p2, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v2, 0x5

    .line 55
    invoke-virtual {p2, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 56
    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 57
    iget p1, p0, Lcn/nubia/camera/bb/c;->a:I

    iget v2, p0, Lcn/nubia/camera/bb/c;->b:I

    invoke-virtual {p2, p1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {p2, v2, p1}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 63
    :cond_2
    iget-object p1, v1, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 66
    :try_start_0
    invoke-virtual {p2, p3, p4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-object v1
.end method

.method protected a(II)V
    .locals 7

    .line 81
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v6

    .line 82
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    .line 83
    invoke-direct {p0}, Lcn/nubia/camera/bb/c;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcn/nubia/camera/bb/t$a;->b:Lcn/nubia/camera/bb/t$a;

    :cond_1
    :goto_0
    move-object v5, v0

    .line 90
    new-instance v1, Lcn/nubia/camera/bb/t;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/nubia/camera/bb/t;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/c;->c:Lcn/nubia/camera/bb/t;

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/bb/c;->x()Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/bb/t;->a(Landroid/view/Surface;IILcn/nubia/camera/bb/t$a;I)V

    .line 92
    invoke-direct {p0}, Lcn/nubia/camera/bb/c;->E()Lcom/android/common/c/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/bb/c;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {p1, p2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method protected b(Lcn/nubia/camera/bb/u;)V
    .locals 1

    .line 102
    iget-object v0, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/bb/c;->a(Lcn/nubia/camera/bb/u;Z)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/bb/c;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->d()V

    return-void
.end method

.method protected z()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/bb/c;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->e()V

    return-void
.end method
