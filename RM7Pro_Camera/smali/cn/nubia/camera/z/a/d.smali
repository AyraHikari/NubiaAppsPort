.class public Lcn/nubia/camera/z/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/z/a/d$a;,
        Lcn/nubia/camera/z/a/d$b;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/z/a/b;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:Lcn/nubia/camera/z/a/a;

.field private e:Lcn/nubia/camera/ad/a;

.field private f:Lcn/nubia/camera/z/a/d$a;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/android/common/c/f$b;

.field private n:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->a:Lcn/nubia/camera/z/a/b;

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->c:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->d:Lcn/nubia/camera/z/a/a;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcn/nubia/camera/z/a/d;->h:Z

    .line 53
    iput-boolean v1, p0, Lcn/nubia/camera/z/a/d;->i:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/camera/z/a/d;->j:Z

    .line 57
    new-instance v2, Lcn/nubia/camera/z/a/d$b;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/z/a/d$b;-><init>(Lcn/nubia/camera/z/a/d;Lcn/nubia/camera/z/a/d$1;)V

    iput-object v2, p0, Lcn/nubia/camera/z/a/d;->m:Lcom/android/common/c/f$b;

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    .line 68
    new-instance v0, Lcn/nubia/camera/z/a/b;

    invoke-direct {v0, p1}, Lcn/nubia/camera/z/a/b;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->a:Lcn/nubia/camera/z/a/b;

    .line 69
    iput-object p1, p0, Lcn/nubia/camera/z/a/d;->e:Lcn/nubia/camera/ad/a;

    .line 70
    new-instance p1, Lcn/nubia/camera/z/a/d$a;

    invoke-direct {p1, p0}, Lcn/nubia/camera/z/a/d$a;-><init>(Lcn/nubia/camera/z/a/d;)V

    iput-object p1, p0, Lcn/nubia/camera/z/a/d;->f:Lcn/nubia/camera/z/a/d$a;

    .line 71
    invoke-virtual {p1}, Lcn/nubia/camera/z/a/d$a;->start()V

    .line 72
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->f:Lcn/nubia/camera/z/a/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/z/a/d$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/z/a/d$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/z/a/d$1;-><init>(Lcn/nubia/camera/z/a/d;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/d;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/camera/z/a/d;->k:I

    return p1
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 296
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    .line 297
    invoke-virtual {v5, p2, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 302
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    .line 301
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eq p2, p1, :cond_1

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    const-string v0, "VideoMakerRender"

    const-string v1, "Failed to rotate thumbnail"

    .line 308
    invoke-static {v0, v1, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 7

    .line 269
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 270
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    .line 271
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x438

    if-eq v1, v2, :cond_1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x2d0

    if-eq v1, v2, :cond_1

    and-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_0

    shr-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    :cond_0
    and-int/lit8 v1, p2, 0xf

    if-eqz v1, :cond_1

    shr-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x1

    shl-int/lit8 p2, p2, 0x4

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    return-object p1

    .line 280
    :cond_3
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 281
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 282
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x0

    invoke-virtual {v2, p1, v3, v4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/d;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/z/a/d;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/d;Landroid/graphics/Bitmap;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/z/a/d;->a(Landroid/graphics/Bitmap;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/d;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/z/a/d;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/z/a/d;->h:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/z/a/d;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/camera/z/a/d;->l:I

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/z/a/d;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/z/a/d;->e()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/z/a/d;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcn/nubia/camera/z/a/d;->i:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/z/a/d;)Ljava/lang/Integer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->a:Lcn/nubia/camera/z/a/b;

    invoke-virtual {v0}, Lcn/nubia/camera/z/a/b;->d()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41ed99999999999aL    # 3.9728447488E9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "VideoMakerRender"

    const-string v1, "video file size arrive limit. create a new file!"

    .line 198
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/z/a/d;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/camera/z/a/d;->k:I

    return p0
.end method

.method private d()V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcn/nubia/camera/z/a/d;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/z/a/d;->h:Z

    if-eqz v0, :cond_2

    .line 232
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->a:Lcn/nubia/camera/z/a/b;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcn/nubia/camera/z/a/b;->b()V

    :cond_1
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcn/nubia/camera/z/a/d;->i:Z

    .line 236
    iput-boolean v0, p0, Lcn/nubia/camera/z/a/d;->j:Z

    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lcn/nubia/camera/z/a/d;->d:Lcn/nubia/camera/z/a/a;

    .line 238
    iput-boolean v0, p0, Lcn/nubia/camera/z/a/d;->h:Z

    :cond_2
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/z/a/d;)I
    .locals 0

    .line 33
    iget p0, p0, Lcn/nubia/camera/z/a/d;->l:I

    return p0
.end method

.method private e()V
    .locals 2

    const-string v0, "llw"

    const-string v1, "drawBitmap"

    .line 246
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcn/nubia/camera/z/a/d;->f()Lcn/nubia/camera/z/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcn/nubia/camera/z/a/d;->f()Lcn/nubia/camera/z/a/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/z/a/a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method private f()Lcn/nubia/camera/z/a/a;
    .locals 7

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->d:Lcn/nubia/camera/z/a/a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 256
    iget-boolean v1, p0, Lcn/nubia/camera/z/a/d;->i:Z

    if-eqz v1, :cond_0

    .line 257
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/al/c;->d()I

    move-result v0

    goto :goto_0

    .line 258
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/camera/z/a/d;->j:Z

    if-eqz v1, :cond_1

    .line 259
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/z/a/d;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/z/a/d;->e:Lcn/nubia/camera/ad/a;

    .line 260
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->c()I

    move-result v1

    .line 259
    invoke-static {v0, v1}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v0

    :cond_1
    :goto_0
    move v6, v0

    .line 262
    new-instance v0, Lcn/nubia/camera/z/a/a;

    iget-object v1, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v1, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    .line 263
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/camera/z/a/d;->a:Lcn/nubia/camera/z/a/b;

    iget-object v5, p0, Lcn/nubia/camera/z/a/d;->c:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/z/a/a;-><init>(IILcn/nubia/camera/z/a/b;Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->d:Lcn/nubia/camera/z/a/a;

    .line 265
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->d:Lcn/nubia/camera/z/a/a;

    return-object v0
.end method

.method static synthetic f(Lcn/nubia/camera/z/a/d;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/z/a/d;->d()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/z/a/d;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/z/a/d;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/camera/z/a/d;->i:Z

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/z/a/d;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcn/nubia/camera/z/a/d;->h:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "VideoMakerRender"

    const-string v1, "release"

    .line 149
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->f:Lcn/nubia/camera/z/a/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/z/a/d$a;->quit()Z

    .line 152
    iput-object v1, p0, Lcn/nubia/camera/z/a/d;->f:Lcn/nubia/camera/z/a/d$a;

    .line 153
    iput-object v1, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    monitor-enter v0

    const/4 v1, 0x0

    .line 155
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    .line 156
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->a:Lcn/nubia/camera/z/a/b;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lcn/nubia/camera/z/a/b;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    const-string v0, "VideoMakerRender"

    const-string v1, "tackPicture with bitmap"

    .line 183
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iput-object p1, p0, Lcn/nubia/camera/z/a/d;->b:Landroid/graphics/Bitmap;

    .line 185
    iput-object p2, p0, Lcn/nubia/camera/z/a/d;->c:Ljava/lang/String;

    .line 186
    iget-object p1, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    invoke-direct {p0}, Lcn/nubia/camera/z/a/d;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VideoMakerRender"

    const-string v1, "tackPicture"

    .line 160
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iput-object p1, p0, Lcn/nubia/camera/z/a/d;->c:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lcn/nubia/camera/z/a/d;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->m:Lcom/android/common/c/f$b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/a/a;->a(Lcom/android/common/c/f$b;)V

    .line 163
    invoke-direct {p0}, Lcn/nubia/camera/z/a/d;->c()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->a:Lcn/nubia/camera/z/a/b;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Lcn/nubia/camera/z/a/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public a([BIILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcn/nubia/camera/z/a/d;->j:Z

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcn/nubia/camera/z/a/c;->a(Landroid/content/Context;[BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1, p4}, Lcn/nubia/camera/z/a/d;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public a([BLjava/lang/String;)V
    .locals 2

    const-string v0, "VideoMakerRender"

    const-string v1, "takePicture with jpeg"

    .line 167
    invoke-static {v0, v1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput-object p2, p0, Lcn/nubia/camera/z/a/d;->c:Ljava/lang/String;

    .line 169
    iget-object p2, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    monitor-enter p2

    .line 170
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const-string p1, "VideoMakerRender"

    const-string v0, "drop jpeg"

    .line 171
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    monitor-exit p2

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/z/a/d;->n:Ljava/lang/Integer;

    .line 175
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object p2, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 177
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 179
    invoke-direct {p0}, Lcn/nubia/camera/z/a/d;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    const-string v0, "llw"

    const-string v1, "stop"

    .line 204
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->e:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    iget-object v1, p0, Lcn/nubia/camera/z/a/d;->m:Lcom/android/common/c/f$b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->b(Lcom/android/common/c/f$b;)Z

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/z/a/d;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
