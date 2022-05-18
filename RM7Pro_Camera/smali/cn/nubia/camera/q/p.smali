.class public Lcn/nubia/camera/q/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/q/p$a;,
        Lcn/nubia/camera/q/p$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/b/d;

.field private b:Lcn/nubia/b/a;

.field private c:Landroid/media/ImageWriter;

.field private d:Lcn/nubia/b/k;

.field private e:Landroid/util/Size;

.field private f:Landroid/util/Size;

.field private g:I

.field private h:Lcn/nubia/camera/ad/a;

.field private i:[B

.field private j:[B

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Landroid/hardware/camera2/TotalCaptureResult;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Lcn/nubia/camera/q/p$b;

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 7

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x23

    .line 49
    iput v0, p0, Lcn/nubia/camera/q/p;->g:I

    .line 53
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/q/p;->l:Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcn/nubia/camera/q/p;->m:Z

    .line 56
    iput-boolean v1, p0, Lcn/nubia/camera/q/p;->n:Z

    const/4 v2, 0x0

    .line 185
    iput-object v2, p0, Lcn/nubia/camera/q/p;->o:Landroid/hardware/camera2/TotalCaptureResult;

    .line 205
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/q/p;->p:Ljava/lang/Object;

    .line 232
    iput-boolean v1, p0, Lcn/nubia/camera/q/p;->q:Z

    .line 276
    new-instance v2, Lcn/nubia/camera/q/p$5;

    invoke-direct {v2, p0}, Lcn/nubia/camera/q/p$5;-><init>(Lcn/nubia/camera/q/p;)V

    iput-object v2, p0, Lcn/nubia/camera/q/p;->s:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcn/nubia/camera/q/p;->h:Lcn/nubia/camera/ad/a;

    .line 60
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/camera/q/p;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/b/b;->a(I)[Landroid/util/Size;

    move-result-object p1

    .line 61
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 62
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    const/16 v6, 0x5a0

    if-gt v5, v6, :cond_0

    .line 63
    iput-object v4, p0, Lcn/nubia/camera/q/p;->e:Landroid/util/Size;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/camera/q/p;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/b/b;->b(I)[Landroid/util/Size;

    move-result-object p1

    .line 69
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 70
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    const v4, 0x802c80

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcn/nubia/camera/q/p;->f:Landroid/util/Size;

    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/q/p;->f:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_3

    .line 72
    :cond_2
    iput-object v2, p0, Lcn/nubia/camera/q/p;->f:Landroid/util/Size;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/q/p;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/q/p;->o:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/q/p;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/q/p;->c:Landroid/media/ImageWriter;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/q/p;Lcn/nubia/b/a;)Lcn/nubia/b/a;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/q/p;->b:Lcn/nubia/b/a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/q/p;Lcn/nubia/b/d;)Lcn/nubia/b/d;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/camera/q/p;->a:Lcn/nubia/b/d;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/q/p;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->p:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/q/p;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/camera/q/p;->m:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/q/p;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->l:Ljava/lang/String;

    return-object p0
.end method

.method private b([B[BLjava/lang/String;)V
    .locals 6

    const-string v0, "WaterMarkSetting"

    const-string v1, "writeWaterMark"

    .line 234
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcn/nubia/camera/q/p;->c:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v1

    .line 236
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 237
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v5, "WaterMark"

    .line 238
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 239
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 240
    array-length v5, p2

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 241
    array-length v5, p1

    invoke-virtual {v3, p1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 242
    array-length p1, p2

    invoke-virtual {v3, p2, v4, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 243
    iget-object p1, p0, Lcn/nubia/camera/q/p;->c:Landroid/media/ImageWriter;

    invoke-virtual {p1, v1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lognName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; logoBytes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/q/p;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/camera/q/p;->n:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/q/p;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/q/p;->d()V

    return-void
.end method

.method private d()V
    .locals 7

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v0, Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/q/p;->e:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcn/nubia/camera/q/p;->e:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v4, 0x23

    const/4 v5, 0x1

    invoke-direct {v0, v1, v3, v4, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/q/p;->d:Lcn/nubia/b/k;

    .line 152
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/q/p;->d:Lcn/nubia/b/k;

    new-instance v1, Lcn/nubia/camera/q/p$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/q/p$2;-><init>(Lcn/nubia/camera/q/p;)V

    iget-object v3, p0, Lcn/nubia/camera/q/p;->h:Lcn/nubia/camera/ad/a;

    .line 162
    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/h;->t()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 153
    invoke-virtual {v0, v1, v3}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 164
    new-instance v1, Landroid/hardware/camera2/params/InputConfiguration;

    iget-object v0, p0, Lcn/nubia/camera/q/p;->f:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcn/nubia/camera/q/p;->f:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget v4, p0, Lcn/nubia/camera/q/p;->g:I

    invoke-direct {v1, v0, v3, v4}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/q/p;->a:Lcn/nubia/b/d;

    new-instance v4, Lcn/nubia/camera/q/p$3;

    invoke-direct {v4, p0}, Lcn/nubia/camera/q/p$3;-><init>(Lcn/nubia/camera/q/p;)V

    sget-object v3, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    .line 182
    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/Handler;

    const v3, 0x8014

    const/4 v5, 0x0

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/b/d;->a(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILcn/nubia/b/a$c;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/q/p;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/camera/q/p;->n:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/q/p;)Lcn/nubia/b/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->b:Lcn/nubia/b/a;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcn/nubia/camera/q/p;->a:Lcn/nubia/b/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/b/d;->a(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WaterMarkSetting"

    const-string v1, "createCaptureRequest fail"

    .line 189
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/p;->d:Lcn/nubia/b/k;

    invoke-virtual {v1}, Lcn/nubia/b/k;->a()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 193
    iget-object v1, p0, Lcn/nubia/camera/q/p;->b:Lcn/nubia/b/a;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/q/p$4;

    invoke-direct {v2, p0}, Lcn/nubia/camera/q/p$4;-><init>(Lcn/nubia/camera/q/p;)V

    sget-object v3, Lcn/nubia/camera/k/n;->d:Lcom/a/a/a/d;

    .line 202
    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 193
    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    return-void
.end method

.method private f()V
    .locals 5

    const-string v0, "WaterMarkSetting"

    const-string v1, "senndWaterMark"

    .line 207
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcn/nubia/camera/q/p;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/q/p;->o:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/q/p;->q:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/q/p;->m:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/camera/q/p;->n:Z

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcn/nubia/camera/q/p;->i:[B

    .line 213
    iget-object v2, p0, Lcn/nubia/camera/q/p;->j:[B

    .line 214
    iget-object v3, p0, Lcn/nubia/camera/q/p;->k:Ljava/lang/String;

    const/4 v4, 0x0

    .line 215
    iput-object v4, p0, Lcn/nubia/camera/q/p;->i:[B

    .line 216
    iput-object v4, p0, Lcn/nubia/camera/q/p;->j:[B

    .line 217
    iput-object v4, p0, Lcn/nubia/camera/q/p;->k:Ljava/lang/String;

    const/4 v4, 0x0

    .line 218
    iput-boolean v4, p0, Lcn/nubia/camera/q/p;->q:Z

    const/4 v4, 0x1

    .line 219
    iput-boolean v4, p0, Lcn/nubia/camera/q/p;->m:Z

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/q/p;->b([B[BLjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/camera/q/p;->a:Lcn/nubia/b/d;

    iget-object v1, p0, Lcn/nubia/camera/q/p;->o:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Lcn/nubia/b/d;->a(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcn/nubia/camera/q/p;->d:Lcn/nubia/b/k;

    invoke-virtual {v1}, Lcn/nubia/b/k;->a()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 227
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcn/nubia/camera/q/p;->b:Lcn/nubia/b/a;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/q/p$a;

    invoke-direct {v2, p0, v3}, Lcn/nubia/camera/q/p$a;-><init>(Lcn/nubia/camera/q/p;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/nubia/camera/q/p;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/k/h;->s()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/q/p;->s:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 221
    :cond_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 223
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic f(Lcn/nubia/camera/q/p;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/q/p;->e()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/q/p;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/q/p;->f()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/q/p;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/camera/q/p;->m:Z

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->h:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/q/p;)Landroid/media/ImageWriter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->c:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/q/p$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->r:Lcn/nubia/camera/q/p$b;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/q/p;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->s:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/q/p;)[B
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->i:[B

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/q/p;)[B
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/camera/q/p;->j:[B

    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/q/p$b;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/q/p;->r:Lcn/nubia/camera/q/p$b;

    return-void
.end method

.method public a([B[BLjava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/q/p;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iput-object p1, p0, Lcn/nubia/camera/q/p;->i:[B

    .line 114
    iput-object p2, p0, Lcn/nubia/camera/q/p;->j:[B

    .line 115
    iput-object p3, p0, Lcn/nubia/camera/q/p;->k:Ljava/lang/String;

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcn/nubia/camera/q/p;->q:Z

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-direct {p0}, Lcn/nubia/camera/q/p;->f()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcn/nubia/camera/q/p;->m:Z

    return v0
.end method

.method public b()V
    .locals 4

    .line 86
    iget-boolean v0, p0, Lcn/nubia/camera/q/p;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcn/nubia/camera/q/p;->n:Z

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/q/p;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/af/b;

    iget-object v2, p0, Lcn/nubia/camera/q/p;->l:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Lcn/nubia/camera/q/p$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/q/p$1;-><init>(Lcn/nubia/camera/q/p;)V

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;Lcn/nubia/camera/k/g;)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/q/p;->q:Z

    .line 107
    iput-object v3, p0, Lcn/nubia/camera/q/p;->o:Landroid/hardware/camera2/TotalCaptureResult;

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/q/p;->r:Lcn/nubia/camera/q/p$b;

    invoke-interface {v0}, Lcn/nubia/camera/q/p$b;->a()V

    return-void
.end method

.method public c()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/q/p;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 126
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/q/p;->n:Z

    .line 127
    iget-object v1, p0, Lcn/nubia/camera/q/p;->c:Landroid/media/ImageWriter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    .line 129
    iput-object v2, p0, Lcn/nubia/camera/q/p;->c:Landroid/media/ImageWriter;

    .line 132
    :cond_0
    iput-object v2, p0, Lcn/nubia/camera/q/p;->a:Lcn/nubia/b/d;

    .line 133
    iput-object v2, p0, Lcn/nubia/camera/q/p;->b:Lcn/nubia/b/a;

    .line 134
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
