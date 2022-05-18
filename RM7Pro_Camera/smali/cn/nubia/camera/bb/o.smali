.class public Lcn/nubia/camera/bb/o;
.super Lcn/nubia/camera/bb/b;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/bb/l;

.field private b:Lcn/nubia/videogenerator/d/b;

.field private c:Landroid/net/Uri;

.field private d:Lcn/nubia/camera/bb/u;

.field private e:Z

.field private f:Ljava/lang/Object;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/bb/b;-><init>(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/k/a/a;Lcn/nubia/camera/bb/ac;)V

    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lcn/nubia/camera/bb/o;->a:Lcn/nubia/camera/bb/l;

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcn/nubia/camera/bb/o;->e:Z

    .line 186
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/bb/o;->f:Ljava/lang/Object;

    .line 329
    new-instance p1, Lcn/nubia/camera/bb/o$4;

    invoke-direct {p1, p0}, Lcn/nubia/camera/bb/o$4;-><init>(Lcn/nubia/camera/bb/o;)V

    iput-object p1, p0, Lcn/nubia/camera/bb/o;->g:Landroid/os/Handler;

    return-void
.end method

.method private E()Lcn/nubia/camera/bb/u;
    .locals 4

    .line 284
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->w()Lcn/nubia/camera/bb/u;

    move-result-object v0

    .line 285
    new-instance v1, Lcn/nubia/camera/bb/u;

    invoke-direct {v1}, Lcn/nubia/camera/bb/u;-><init>()V

    .line 286
    iget-object v2, v0, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    iput-object v2, v1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/nubia/camera/bb/u;->e:J

    .line 288
    iget v2, v0, Lcn/nubia/camera/bb/u;->h:I

    iput v2, v1, Lcn/nubia/camera/bb/u;->h:I

    .line 289
    iget v2, v0, Lcn/nubia/camera/bb/u;->i:I

    iput v2, v1, Lcn/nubia/camera/bb/u;->i:I

    .line 290
    iget v2, v0, Lcn/nubia/camera/bb/u;->g:I

    iput v2, v1, Lcn/nubia/camera/bb/u;->g:I

    .line 291
    iget v0, v0, Lcn/nubia/camera/bb/u;->j:I

    iput v0, v1, Lcn/nubia/camera/bb/u;->j:I

    .line 292
    iget-wide v2, v1, Lcn/nubia/camera/bb/u;->e:J

    invoke-virtual {p0, v2, v3}, Lcn/nubia/camera/bb/o;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->u()Lcn/nubia/k/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/bb/o;->a(Landroid/location/Location;Lcn/nubia/camera/bb/u;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    return-object v1
.end method

.method private F()V
    .locals 3

    .line 301
    iget-object v0, p0, Lcn/nubia/camera/bb/o;->b:Lcn/nubia/videogenerator/d/b;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/b;->f()V

    .line 303
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/o;->d:Lcn/nubia/camera/bb/u;

    iget-object v1, v1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcn/nubia/camera/bb/o;->a:Lcn/nubia/camera/bb/l;

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0}, Lcn/nubia/camera/bb/l;->e()V

    :cond_0
    return-void
.end method

.method private declared-synchronized G()V
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/bb/o;->b:Lcn/nubia/videogenerator/d/b;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/b;->e()V

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcn/nubia/camera/bb/o;->b:Lcn/nubia/videogenerator/d/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 319
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcn/nubia/camera/bb/o;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/bb/o;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SlomoVideoRecordManagerImpl"

    const-string v0, "State in pause..."

    .line 189
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object p2, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;

    return-void

    .line 193
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/o;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 194
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/camera/bb/o;->e:Z

    .line 195
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-direct {p0}, Lcn/nubia/camera/bb/o;->E()Lcn/nubia/camera/bb/u;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/bb/o;->d:Lcn/nubia/camera/bb/u;

    .line 198
    iput-object p2, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;

    .line 199
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object p1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result p1

    const-string p2, "SlomoVideoRecordManagerImpl"

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVideoEditor cameraFps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance p2, Lcn/nubia/videogenerator/d/b;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/camera/bb/o;->d:Lcn/nubia/camera/bb/u;

    iget-object v2, v2, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-direct {p2, v0, v1, v2, p1}, Lcn/nubia/videogenerator/d/b;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;I)V

    iput-object p2, p0, Lcn/nubia/camera/bb/o;->b:Lcn/nubia/videogenerator/d/b;

    .line 202
    new-instance p1, Lcn/nubia/camera/bb/o$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/bb/o$1;-><init>(Lcn/nubia/camera/bb/o;)V

    invoke-virtual {p2, p1}, Lcn/nubia/videogenerator/d/b;->a(Lcn/nubia/videogenerator/a/d$b;)V

    .line 218
    iget-object p1, p0, Lcn/nubia/camera/bb/o;->b:Lcn/nubia/videogenerator/d/b;

    new-instance p2, Lcn/nubia/camera/bb/o$2;

    invoke-direct {p2, p0}, Lcn/nubia/camera/bb/o$2;-><init>(Lcn/nubia/camera/bb/o;)V

    invoke-virtual {p1, p2}, Lcn/nubia/videogenerator/d/b;->a(Lcn/nubia/videogenerator/a/d$a;)V

    .line 261
    iget-object p1, p0, Lcn/nubia/camera/bb/o;->b:Lcn/nubia/videogenerator/d/b;

    new-instance p2, Lcn/nubia/camera/bb/o$3;

    invoke-direct {p2, p0}, Lcn/nubia/camera/bb/o$3;-><init>(Lcn/nubia/camera/bb/o;)V

    invoke-virtual {p1, p2}, Lcn/nubia/videogenerator/d/b;->a(Lcn/nubia/videogenerator/a/d$c;)V

    .line 273
    iget-object p1, p0, Lcn/nubia/camera/bb/o;->g:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcn/nubia/camera/bb/o;->g:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    :try_start_1
    iget-object p1, p0, Lcn/nubia/camera/bb/o;->b:Lcn/nubia/videogenerator/d/b;

    invoke-virtual {p1}, Lcn/nubia/videogenerator/d/b;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception p2

    .line 195
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method static synthetic a(Lcn/nubia/camera/bb/o;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/bb/o;->e:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/bb/o;)Landroid/net/Uri;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/bb/o;)Ljava/lang/Object;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/bb/o;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/bb/o;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/camera/bb/o;->e:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/bb/o;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/bb/o;->G()V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/u;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/bb/o;->d:Lcn/nubia/camera/bb/u;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/bb/o;)Lcn/nubia/camera/bb/l;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/bb/o;->a:Lcn/nubia/camera/bb/l;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/bb/o;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/bb/o;->F()V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 0

    return-void
.end method

.method protected B()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->I()V

    return-void
.end method

.method public D()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcn/nubia/camera/bb/o;->e:Z

    return v0
.end method

.method protected a(Landroid/media/CamcorderProfile;Landroid/media/MediaRecorder;J)Lcn/nubia/camera/bb/u;
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    .line 42
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)I

    move-result v2

    iput v2, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v2, 0x3

    .line 43
    iput v2, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    const/4 v2, 0x0

    .line 44
    iput v2, v0, Landroid/media/CamcorderProfile;->duration:I

    .line 46
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/bb/ac;->m()Lcn/nubia/camera/k/y;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/y;->f()I

    move-result v3

    .line 47
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v4

    const/4 v5, 0x2

    .line 48
    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v11, 0x1

    const/16 v12, 0x1e

    const/16 v5, 0xf0

    if-lt v3, v5, :cond_2

    .line 53
    iget v5, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 54
    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 55
    iget v5, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz v4, :cond_0

    mul-int/lit16 v5, v3, 0x7d0

    .line 56
    div-int/2addr v5, v12

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    if-eqz v4, :cond_1

    const/16 v4, 0x7d0

    goto :goto_1

    :cond_1
    move v4, v2

    .line 57
    :goto_1
    iput v4, v0, Landroid/media/CamcorderProfile;->duration:I

    goto :goto_2

    :cond_2
    const/16 v4, 0x78

    if-ne v3, v4, :cond_3

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "480"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    iget v4, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 61
    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 62
    iget v4, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    mul-int/lit16 v4, v3, 0xfa0

    .line 63
    div-int/2addr v4, v12

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    const/16 v4, 0xfa0

    .line 64
    iput v4, v0, Landroid/media/CamcorderProfile;->duration:I

    :goto_2
    move v13, v11

    goto :goto_3

    :cond_3
    const/4 v4, 0x5

    .line 67
    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 68
    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    move v13, v2

    .line 71
    :goto_3
    iget v5, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v8, v0, Landroid/media/CamcorderProfile;->duration:I

    const/4 v9, 0x1

    move-object v4, p0

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcn/nubia/camera/bb/o;->a(IIIIZI)Lcn/nubia/camera/bb/u;

    move-result-object v4

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hsr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; useHFR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SlomoVideoRecordManagerImpl"

    invoke-static {v6, v5}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-ne v5, v3, :cond_4

    move v2, v11

    :cond_4
    if-nez v2, :cond_8

    if-eqz v13, :cond_5

    goto :goto_4

    :cond_5
    move v12, v3

    .line 82
    :goto_4
    invoke-virtual {v1, v12}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    sget-object v7, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 87
    sget-object v0, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 88
    :cond_6
    sget-object v5, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 89
    sget-object v0, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    .line 91
    :cond_7
    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v0, v3, v0

    mul-int/2addr v0, v2

    :goto_5
    int-to-float v0, v0

    int-to-float v2, v12

    int-to-float v5, v3

    div-float/2addr v2, v5

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scaled Video bitrate : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    int-to-double v2, v3

    .line 96
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 99
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 101
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v0, v5

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 103
    :cond_9
    iget-object v0, v4, Lcn/nubia/camera/bb/u;->l:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 104
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->v()Lcn/nubia/camera/bb/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/bb/ac;->H()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 107
    :try_start_0
    invoke-virtual/range {p2 .. p4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :catch_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/al/c;->c()I

    move-result v2

    .line 115
    invoke-static {v0, v2}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v0

    .line 118
    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    return-object v4
.end method

.method protected a(II)V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->v()Lcn/nubia/camera/bb/ac;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/bb/ac;->e()Z

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/l;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcn/nubia/camera/bb/o;->a:Lcn/nubia/camera/bb/l;

    return-void
.end method

.method protected b(Lcn/nubia/camera/bb/u;)V
    .locals 4

    .line 141
    iget-object v0, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->s()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/u;Z)Landroid/net/Uri;

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/bb/o;->a(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 156
    invoke-super {p0}, Lcn/nubia/camera/bb/b;->f()V

    .line 157
    invoke-direct {p0}, Lcn/nubia/camera/bb/o;->F()V

    .line 158
    invoke-direct {p0}, Lcn/nubia/camera/bb/o;->G()V

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 162
    iput-object v1, p0, Lcn/nubia/camera/bb/o;->c:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/o;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/bb/o;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 169
    :try_start_1
    iput-boolean v1, p0, Lcn/nubia/camera/bb/o;->e:Z

    .line 170
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
