.class public Lcn/nubia/camera/bb/r;
.super Lcn/nubia/camera/bb/b;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcn/nubia/camera/bb/t;

.field private d:Landroid/os/ParcelFileDescriptor;

.field private e:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/bb/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    return-void
.end method

.method private D()Landroid/content/Intent;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->t()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private E()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/bb/r;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ThirdPartyVideoRecordManagerImpl"

    const-string v2, "Fail to close fd"

    .line 153
    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcn/nubia/camera/bb/r;->d:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method private F()Z
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private G()Lcom/android/common/c/e;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->t()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected A()V
    .locals 0

    return-void
.end method

.method protected B()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/bb/r;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->a()V

    return-void
.end method

.method protected a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v1, "] fail."

    const-string v2, "open Uri["

    .line 54
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->E()V

    .line 56
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->D()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_0

    const-string v3, "output"

    .line 60
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v4, "android.intent.extra.sizeLimit"

    .line 61
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v13, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-wide v13, v11

    .line 64
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->D()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_1

    .line 65
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->D()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    :cond_1
    move v0, v15

    .line 70
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->D()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    cmp-long v4, v11, v13

    if-gez v4, :cond_2

    const-wide/32 v4, 0x4b000

    cmp-long v4, v13, v4

    if-gez v4, :cond_2

    move v7, v15

    goto :goto_2

    :cond_2
    move v7, v0

    .line 73
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxDuration: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ThirdPartyVideoRecordManagerImpl"

    invoke-static {v4, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput v7, v9, Landroid/media/CamcorderProfile;->duration:I

    if-eqz v3, :cond_3

    .line 78
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "rw"

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v8, Lcn/nubia/camera/bb/r;->d:Landroid/os/ParcelFileDescriptor;

    .line 79
    iput-object v3, v8, Lcn/nubia/camera/bb/r;->e:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v0

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    const/4 v0, 0x1

    if-nez v3, :cond_5

    :cond_4
    :goto_4
    move v6, v0

    goto :goto_5

    .line 92
    :cond_5
    iget-object v1, v8, Lcn/nubia/camera/bb/r;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move v6, v15

    .line 96
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_7

    goto :goto_6

    .line 102
    :cond_7
    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, v8, Lcn/nubia/camera/bb/r;->a:I

    .line 103
    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, v8, Lcn/nubia/camera/bb/r;->b:I

    goto :goto_7

    .line 98
    :cond_8
    :goto_6
    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, v8, Lcn/nubia/camera/bb/r;->a:I

    .line 99
    iget v0, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, v8, Lcn/nubia/camera/bb/r;->b:I

    .line 105
    :goto_7
    iget v2, v9, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v3, v8, Lcn/nubia/camera/bb/r;->a:I

    iget v4, v8, Lcn/nubia/camera/bb/r;->b:I

    iget v5, v9, Landroid/media/CamcorderProfile;->duration:I

    const/16 v0, 0x1e

    move-object/from16 v1, p0

    move v15, v7

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/bb/r;->a(IIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object v0

    const/4 v1, 0x2

    .line 108
    invoke-virtual {v10, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v1, 0x5

    .line 109
    invoke-virtual {v10, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 112
    invoke-virtual {v10, v9}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 113
    iget v1, v8, Lcn/nubia/camera/bb/r;->a:I

    iget v2, v8, Lcn/nubia/camera/bb/r;->b:I

    invoke-virtual {v10, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 115
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->D()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7d000

    .line 116
    invoke-virtual {v10, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 120
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/bb/r;->s()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 122
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {v10, v2, v1}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 124
    :cond_a
    iget-object v1, v8, Lcn/nubia/camera/bb/r;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 125
    iget-object v1, v8, Lcn/nubia/camera/bb/r;->d:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_8

    .line 127
    :cond_b
    iget-object v1, v0, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 129
    :goto_8
    invoke-virtual {v10, v15}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    cmp-long v1, v13, v11

    if-lez v1, :cond_c

    cmp-long v1, v13, p3

    if-gez v1, :cond_c

    goto :goto_9

    :cond_c
    move-wide/from16 v13, p3

    .line 136
    :goto_9
    :try_start_1
    invoke-virtual {v10, v13, v14}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v10, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-object v0
.end method

.method protected a(II)V
    .locals 7

    .line 161
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v6

    .line 162
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    .line 163
    invoke-direct {p0}, Lcn/nubia/camera/bb/r;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcn/nubia/camera/bb/t$a;->a:Lcn/nubia/camera/bb/t$a;

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lcn/nubia/camera/bb/t$a;->b:Lcn/nubia/camera/bb/t$a;

    :cond_1
    :goto_0
    move-object v5, v0

    .line 170
    new-instance v1, Lcn/nubia/camera/bb/t;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/nubia/camera/bb/t;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/camera/bb/r;->c:Lcn/nubia/camera/bb/t;

    .line 171
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->x()Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/camera/bb/t;->a(Landroid/view/Surface;IILcn/nubia/camera/bb/t$a;I)V

    .line 172
    invoke-direct {p0}, Lcn/nubia/camera/bb/r;->G()Lcom/android/common/c/e;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/bb/r;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {p1, p2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method protected b(Lcn/nubia/camera/bb/u;)V
    .locals 3

    .line 192
    new-instance v0, Lcn/nubia/camera/bb/w;

    invoke-direct {v0}, Lcn/nubia/camera/bb/w;-><init>()V

    .line 193
    iget-object v1, p0, Lcn/nubia/camera/bb/r;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/bb/r;->e:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 195
    iput-object v1, v0, Lcn/nubia/camera/bb/w;->a:Landroid/os/ParcelFileDescriptor;

    .line 196
    iget-object p1, p0, Lcn/nubia/camera/bb/r;->e:Landroid/net/Uri;

    iput-object p1, v0, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    .line 197
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->w()Lcn/nubia/camera/bb/u;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    iput-object p1, v0, Lcn/nubia/camera/bb/w;->c:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcn/nubia/camera/bb/r;->w()Lcn/nubia/camera/bb/u;

    move-result-object p1

    iget p1, p1, Lcn/nubia/camera/bb/u;->h:I

    iput p1, v0, Lcn/nubia/camera/bb/w;->d:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, p1, v1}, Lcn/nubia/camera/bb/r;->a(Lcn/nubia/camera/bb/u;Z)Landroid/net/Uri;

    move-result-object v1

    .line 206
    :cond_1
    iget-object v2, p1, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    iput-object v2, v0, Lcn/nubia/camera/bb/w;->a:Landroid/os/ParcelFileDescriptor;

    .line 207
    iput-object v1, v0, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    .line 208
    iget-object v1, p1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    iput-object v1, v0, Lcn/nubia/camera/bb/w;->c:Ljava/lang/String;

    .line 209
    iget p1, p1, Lcn/nubia/camera/bb/u;->h:I

    iput p1, v0, Lcn/nubia/camera/bb/w;->d:I

    .line 212
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/camera/bb/r;->a(Lcn/nubia/camera/bb/w;)V

    return-void
.end method

.method protected y()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/bb/r;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->d()V

    return-void
.end method

.method protected z()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/bb/r;->c:Lcn/nubia/camera/bb/t;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/t;->e()V

    return-void
.end method
