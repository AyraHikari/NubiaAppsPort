.class public Lcn/nubia/camera/bb/j;
.super Lcn/nubia/camera/bb/ac;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/b/l;

.field private f:Z

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/bb/ac;-><init>()V

    .line 48
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bb/j;->d:Lcn/nubia/camera/k/t;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcn/nubia/camera/bb/j;->f:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/bb/j;->g:Ljava/lang/Object;

    return-void
.end method

.method private J()Z
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->a(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/bb/ad;->g(Lcn/nubia/camera/ad/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected D()[Lcn/nubia/b/m;
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcn/nubia/camera/bb/j;->f:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/bb/j;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Lcn/nubia/b/m;

    .line 185
    iget-object v1, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    aput-object v1, v0, v2

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/b/m;

    .line 183
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcn/nubia/camera/bb/j;->e:Lcn/nubia/b/l;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public H()Landroid/view/Surface;
    .locals 1

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/bb/j;->e:Lcn/nubia/b/l;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcn/nubia/b/l;->a()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public I()V
    .locals 7

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/bb/j;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 229
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/bb/j;->f:Z

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/camera/k/ad;-><init>(Lcn/nubia/camera/k/ad;)V

    .line 233
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->L:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->p()Lcn/nubia/b/a;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->o()Lcn/nubia/b/d;

    move-result-object v4

    const/4 v5, 0x3

    new-array v3, v3, [Lcn/nubia/b/m;

    iget-object v6, p0, Lcn/nubia/camera/bb/j;->e:Lcn/nubia/b/l;

    aput-object v6, v3, v1

    invoke-virtual {v0, v4, v5, v3}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;I[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->v()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 234
    invoke-virtual {v2, v0, v1, v3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    const-string v0, "NormalVideoStreamController"

    const-string v1, "set end of stream"

    .line 236
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->a()V

    return-void

    :catchall_0
    move-exception v1

    .line 230
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected a()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcn/nubia/camera/bb/j;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/bb/j;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/bb/j;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v3, [Lcn/nubia/b/m;

    .line 175
    iget-object v4, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcn/nubia/camera/bb/j;->a(I[Lcn/nubia/b/m;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [Lcn/nubia/b/m;

    .line 173
    iget-object v5, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcn/nubia/camera/bb/j;->e:Lcn/nubia/b/l;

    aput-object v2, v4, v3

    invoke-virtual {p0, v1, v4}, Lcn/nubia/camera/bb/j;->a(I[Lcn/nubia/b/m;)V

    .line 177
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;Lcn/nubia/camera/bb/d;Z)V
    .locals 0

    .line 56
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/bb/ac;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 4

    .line 191
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->af()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "NormalVideoStreamController"

    const-string p2, "use screenshot for video snapshot,just return"

    .line 192
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 195
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/j;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 p2, 0x4

    const/4 v0, 0x1

    new-array v2, v0, [Lcn/nubia/b/m;

    .line 196
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->c:Lcn/nubia/b/k;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, p1, p3, v2}, Lcn/nubia/camera/bb/j;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return v0
.end method

.method protected b()V
    .locals 12

    .line 61
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 62
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 68
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 70
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 71
    new-instance v1, Lcn/nubia/b/l$a;

    invoke-direct {v1}, Lcn/nubia/b/l$a;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/bb/ad;->c(Lcn/nubia/camera/ad/a;)Z

    move-result v2

    const-string v3, "NormalVideoStreamController"

    if-nez v2, :cond_1

    .line 74
    invoke-virtual {v1, v0}, Lcn/nubia/b/l$a;->a(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_0

    .line 76
    :cond_1
    sget-object v2, Lcn/nubia/camera/aq/f;->g:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 77
    sget-object v4, Lcn/nubia/camera/aq/f;->g:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    .line 79
    iget v5, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-float v5, v5

    int-to-float v8, v2

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v5, v8

    int-to-float v8, v4

    iget v9, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v9, v9

    div-float v9, v8, v9

    mul-float/2addr v5, v9

    .line 82
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/camera/k/y;->f()I

    move-result v9

    int-to-float v9, v9

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v5, v9

    float-to-int v5, v5

    .line 79
    invoke-virtual {v1, v5}, Lcn/nubia/b/l$a;->c(I)V

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "videoencodingbitrate:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-float v9, v9

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    div-int v10, v2, v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float/2addr v9, v8

    .line 85
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/camera/k/y;->f()I

    move-result v8

    int-to-float v8, v8

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float/2addr v9, v8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {v3, v5}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v5, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v5}, Lcn/nubia/b/l$a;->b(I)V

    .line 87
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/k/y;->f()I

    move-result v5

    invoke-virtual {v1, v5}, Lcn/nubia/b/l$a;->d(I)V

    .line 88
    invoke-virtual {v1, v2, v4}, Lcn/nubia/b/l$a;->a(II)V

    .line 89
    iget v2, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->e(I)V

    .line 90
    iget v2, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->f(I)V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->g(I)V

    .line 94
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ak/a;->aL()Z

    move-result v2

    const/4 v4, 0x5

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v1, v4}, Lcn/nubia/b/l$a;->a(I)V

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 97
    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->a(I)V

    .line 98
    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->f(I)V

    .line 100
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v8

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v9

    invoke-static {v2, v5, v8, v9}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->e(I)V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v8

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v9

    invoke-static {v2, v5, v8, v9}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 102
    invoke-static {}, Lcn/nubia/camera/bb/ad;->a()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcn/nubia/b/l$a;->b(II)V

    .line 105
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->f()I

    move-result v2

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "videoFrameRate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x1e

    if-le v2, v8, :cond_4

    .line 108
    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->d(I)V

    .line 109
    iget v8, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-float v8, v8

    int-to-float v9, v2

    iget v10, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scaled Video bitrate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v1, v8}, Lcn/nubia/b/l$a;->c(I)V

    .line 112
    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->g(I)V

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 117
    invoke-static {v8}, Lcn/nubia/camera/bb/ad;->a(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_5

    const v8, 0x7d000

    .line 118
    invoke-virtual {v1, v8}, Lcn/nubia/b/l$a;->c(I)V

    const-string v8, "set VideoEncodingBitrate to 512000, when it is mms"

    .line 119
    invoke-static {v3, v8}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v3, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-direct {v3, v9, v10, v11}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    .line 126
    new-instance v3, Lcn/nubia/b/l;

    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v1, v9}, Lcn/nubia/b/l;-><init>(Lcn/nubia/b/l$a;Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/camera/bb/j;->e:Lcn/nubia/b/l;

    .line 128
    iget-object v1, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcn/nubia/camera/bb/j;->e:Lcn/nubia/b/l;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ag()I

    move-result v1

    const/4 v3, 0x3

    const/16 v9, 0x3c

    if-ne v1, v3, :cond_6

    if-ge v2, v9, :cond_6

    .line 135
    new-instance v1, Lcn/nubia/b/k;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v10

    const/16 v11, 0x100

    invoke-direct {v1, v3, v10, v11, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v1, p0, Lcn/nubia/camera/bb/j;->c:Lcn/nubia/b/k;

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/bb/j;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->o()Lcn/nubia/b/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/bb/j;->c:Lcn/nubia/b/k;

    iget-object v3, p0, Lcn/nubia/camera/bb/j;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->w()Lcom/a/a/a/d;

    move-result-object v5

    invoke-interface {v5}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    invoke-virtual {v1, v3, v5}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 138
    iget-object v1, p0, Lcn/nubia/camera/bb/j;->c:Lcn/nubia/b/k;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v10

    invoke-static {v1, v3, v5, v10}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v2, 0x0

    .line 142
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    const v5, 0x8019

    const/4 v0, 0x0

    move-object v1, p0

    move-object v4, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/bb/j;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto/16 :goto_3

    .line 145
    :cond_7
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->aK()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 146
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v10

    invoke-static {v1, v3, v5, v10}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    const v5, 0x801a

    const/4 v0, 0x0

    move-object v1, p0

    move-object v4, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/bb/j;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto/16 :goto_3

    :cond_8
    if-lt v2, v9, :cond_9

    const/4 v2, 0x0

    .line 150
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    const v5, 0x8004

    const/4 v0, 0x0

    move-object v1, p0

    move-object v4, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/bb/j;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto/16 :goto_3

    .line 152
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v5

    invoke-static {v1, v2, v3, v5}, Lcn/nubia/camera/bb/ad;->b(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v2, 0x0

    .line 153
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    const v5, 0x8006

    const/4 v0, 0x0

    move-object v1, p0

    move-object v4, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/bb/j;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_3

    .line 155
    :cond_a
    iget v1, v0, Landroid/media/CamcorderProfile;->quality:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_d

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    if-ne v0, v4, :cond_b

    goto :goto_2

    .line 159
    :cond_b
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 160
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    const v5, 0x800c

    const/4 v0, 0x0

    move-object v1, p0

    move-object v4, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/bb/j;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    const/4 v0, 0x0

    move-object v1, p0

    move-object v4, v8

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/bb/j;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    goto :goto_3

    :cond_d
    :goto_2
    const/4 v2, 0x0

    .line 157
    iget-object v3, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    const v5, 0x800c

    const/4 v0, 0x0

    move-object v1, p0

    move-object v4, v8

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/bb/j;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public c()V
    .locals 1

    .line 244
    invoke-super {p0}, Lcn/nubia/camera/bb/ac;->c()V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcn/nubia/camera/bb/j;->f:Z

    return-void
.end method

.method public e()Z
    .locals 5

    .line 202
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->p()Lcn/nubia/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcn/nubia/camera/bb/j;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->a()Z

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/bb/j;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 209
    :try_start_0
    iput-boolean v2, p0, Lcn/nubia/camera/bb/j;->f:Z

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/b/m;

    .line 211
    iget-object v4, p0, Lcn/nubia/camera/bb/j;->b:Lcn/nubia/b/n;

    aput-object v4, v3, v1

    iget-object v1, p0, Lcn/nubia/camera/bb/j;->e:Lcn/nubia/b/l;

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Lcn/nubia/camera/bb/j;->a(I[Lcn/nubia/b/m;)V

    return v2

    :catchall_0
    move-exception v1

    .line 210
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    return v1
.end method
