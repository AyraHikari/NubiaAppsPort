.class public Lcn/nubia/camera/bb/i;
.super Lcn/nubia/camera/bb/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/bb/i$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/bb/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    return-void
.end method

.method private D()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 268
    invoke-direct {p0, v0}, Lcn/nubia/camera/bb/i;->a(Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/bb/i;)Landroid/util/SparseArray;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/bb/i;->D()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    const-string v1, "pref_picture_artist_info"

    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    .line 277
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 279
    :cond_0
    sget v1, Lcn/nubia/d/a;->u:I

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected A()V
    .locals 4

    .line 170
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->af()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/i$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/camera/bb/i$a;-><init>(Lcn/nubia/camera/bb/i;Landroid/location/Location;)V

    invoke-virtual {v0, v2, v1, v2}, Lcn/nubia/camera/bb/ac;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/bb/b$a;

    iget v2, p0, Lcn/nubia/camera/bb/i;->a:I

    iget v3, p0, Lcn/nubia/camera/bb/i;->b:I

    invoke-direct {v1, p0, v2, v3}, Lcn/nubia/camera/bb/b$a;-><init>(Lcn/nubia/camera/bb/b;II)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$b;)V

    :goto_1
    return-void
.end method

.method protected B()V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->I()V

    return-void
.end method

.method protected a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;
    .locals 10

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->c(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcn/nubia/camera/aq/f;->g:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 61
    sget-object v2, Lcn/nubia/camera/aq/f;->g:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_0

    .line 63
    :cond_0
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 64
    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    :goto_0
    move v5, v1

    move v6, v2

    .line 66
    iput v5, p0, Lcn/nubia/camera/bb/i;->b:I

    .line 67
    iput v6, p0, Lcn/nubia/camera/bb/i;->a:I

    .line 68
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)I

    move-result v1

    iput v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v1, 0x3

    .line 69
    iput v1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    const/4 v1, 0x0

    .line 70
    iput v1, p1, Landroid/media/CamcorderProfile;->duration:I

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {}, Lcn/nubia/camera/bb/ad;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    :cond_1
    const/4 v1, 0x2

    .line 76
    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 77
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aL()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    .line 78
    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_2
    if-eqz v0, :cond_3

    .line 81
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->f()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 83
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->f()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 84
    invoke-virtual {p2, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 85
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-float v0, v0

    int-to-float v1, v6

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    int-to-float v1, v5

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 88
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->f()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 85
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 89
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 91
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 93
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 94
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 95
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_1

    .line 99
    :cond_3
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 100
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 101
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 102
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 103
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 105
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 107
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 108
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 109
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 113
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->f()I

    move-result v9

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoFrameRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NormalVideoRecordManagerImpl"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    if-le v9, v0, :cond_5

    .line 116
    invoke-virtual {p2, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 117
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-float v0, v0

    int-to-float v2, v9

    iget v3, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scaled Video bitrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    int-to-double v0, v9

    .line 120
    invoke-virtual {p2, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 123
    :cond_5
    iget v4, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v7, p1, Landroid/media/CamcorderProfile;->duration:I

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/camera/bb/i;->a(IIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 127
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 129
    :cond_6
    iget-object v0, p1, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->H()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 133
    :try_start_0
    invoke-virtual {p2, p3, p4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :catch_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p3

    .line 143
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->s()Lcn/nubia/camera/ad/a;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object p4

    invoke-virtual {p4}, Lcn/nubia/camera/al/c;->c()I

    move-result p4

    .line 141
    invoke-static {p3, p4}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result p3

    .line 144
    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 146
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/bb/ac;->e()Z

    return-object p1
.end method

.method protected a(II)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcn/nubia/camera/bb/i;->v()Lcn/nubia/camera/bb/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/bb/ac;->e()Z

    return-void
.end method

.method protected b(Lcn/nubia/camera/bb/u;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/bb/i;->a(Lcn/nubia/camera/bb/u;Z)Landroid/net/Uri;

    :cond_0
    return-void
.end method
