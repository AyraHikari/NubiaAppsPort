.class public Lcn/nubia/camera/bb/p;
.super Lcn/nubia/camera/bb/ac;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/m;

.field private d:Lcn/nubia/camera/bb/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcn/nubia/camera/bb/ac;-><init>()V

    return-void
.end method

.method private J()Lcn/nubia/b/m;
    .locals 8

    .line 113
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 114
    new-instance v1, Lcn/nubia/b/l$a;

    invoke-direct {v1}, Lcn/nubia/b/l$a;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->m()Lcn/nubia/camera/k/y;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/y;->f()I

    move-result v2

    .line 117
    iget v3, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v3}, Lcn/nubia/b/l$a;->b(I)V

    .line 118
    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v3, v4}, Lcn/nubia/b/l$a;->a(II)V

    const/4 v3, 0x2

    .line 119
    invoke-virtual {v1, v3}, Lcn/nubia/b/l$a;->e(I)V

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lcn/nubia/b/l$a;->e(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xf0

    if-ge v2, v5, :cond_1

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcn/nubia/camera/bb/ad;->a(Lcom/android/preference/c;Landroid/content/Context;Lcn/nubia/camera/af/a;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    if-nez v5, :cond_2

    const/4 v6, 0x5

    .line 126
    invoke-virtual {v1, v6}, Lcn/nubia/b/l$a;->a(I)V

    const/4 v6, 0x3

    .line 127
    invoke-virtual {v1, v6}, Lcn/nubia/b/l$a;->f(I)V

    goto :goto_2

    :cond_2
    const/4 v6, -0x1

    .line 129
    invoke-virtual {v1, v6}, Lcn/nubia/b/l$a;->a(I)V

    .line 130
    invoke-virtual {v1, v6}, Lcn/nubia/b/l$a;->f(I)V

    .line 133
    :goto_2
    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    if-ne v6, v2, :cond_3

    move v3, v4

    :cond_3
    const-string v4, "SlomoVideoStreamController"

    if-nez v3, :cond_7

    if-eqz v5, :cond_4

    const/16 v3, 0x1e

    goto :goto_3

    :cond_4
    move v3, v2

    .line 136
    :goto_3
    invoke-virtual {v1, v3}, Lcn/nubia/b/l$a;->d(I)V

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    sget-object v7, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 143
    sget-object v0, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 144
    :cond_5
    sget-object v6, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 145
    sget-object v0, Lcn/nubia/b/o;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 147
    :cond_6
    iget v5, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int v0, v2, v0

    mul-int/2addr v0, v5

    :goto_4
    int-to-float v0, v0

    int-to-float v3, v3

    int-to-float v5, v2

    div-float/2addr v3, v5

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scaled Video bitrate : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v1, v0}, Lcn/nubia/b/l$a;->c(I)V

    .line 152
    invoke-virtual {v1, v2}, Lcn/nubia/b/l$a;->g(I)V

    goto :goto_5

    .line 154
    :cond_7
    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v3}, Lcn/nubia/b/l$a;->d(I)V

    .line 155
    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v0}, Lcn/nubia/b/l$a;->c(I)V

    .line 158
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hsr = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Lcn/nubia/b/l;

    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/b/l;-><init>(Lcn/nubia/b/l$a;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected D()[Lcn/nubia/b/m;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/b/m;

    .line 109
    iget-object v1, p0, Lcn/nubia/camera/bb/p;->b:Lcn/nubia/b/n;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bb/p;->c:Lcn/nubia/b/m;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public H()Landroid/view/Surface;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/bb/p;->c:Lcn/nubia/b/m;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcn/nubia/b/m;->a()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public I()V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->a()V

    return-void
.end method

.method protected a()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/b/m;

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/bb/p;->c:Lcn/nubia/b/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/bb/p;->b:Lcn/nubia/b/n;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcn/nubia/camera/bb/p;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;Lcn/nubia/camera/bb/d;Z)V
    .locals 0

    .line 46
    iput-object p6, p0, Lcn/nubia/camera/bb/p;->d:Lcn/nubia/camera/bb/d;

    .line 47
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/bb/ac;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 6

    .line 52
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v2, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v2, p0, Lcn/nubia/camera/bb/p;->b:Lcn/nubia/b/n;

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/bb/p;->J()Lcn/nubia/b/m;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/camera/bb/p;->c:Lcn/nubia/b/m;

    .line 60
    iget-object v2, p0, Lcn/nubia/camera/bb/p;->b:Lcn/nubia/b/n;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcn/nubia/camera/bb/p;->c:Lcn/nubia/b/m;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Lcn/nubia/camera/bb/p;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcn/nubia/camera/bb/p;->a(Lcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 104
    invoke-super {p0}, Lcn/nubia/camera/bb/ac;->c()V

    return-void
.end method

.method public e()Z
    .locals 4

    .line 78
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/bb/p;->p()Lcn/nubia/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    const/4 v2, 0x2

    new-array v2, v2, [Lcn/nubia/b/m;

    .line 83
    iget-object v3, p0, Lcn/nubia/camera/bb/p;->b:Lcn/nubia/b/n;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcn/nubia/camera/bb/p;->c:Lcn/nubia/b/m;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcn/nubia/camera/bb/p;->a(I[Lcn/nubia/b/m;)V

    return v3

    :cond_1
    return v1
.end method
