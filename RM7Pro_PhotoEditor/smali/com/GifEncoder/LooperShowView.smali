.class public Lcom/GifEncoder/LooperShowView;
.super Landroid/view/SurfaceView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/GifEncoder/LooperShowView$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/GifEncoder/e$a;

.field public d:Landroid/os/Handler;

.field private e:Landroid/graphics/Bitmap;

.field f:Landroid/os/HandlerThread;

.field private g:Landroid/view/SurfaceHolder;

.field private h:Ljava/lang/Object;

.field i:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/GifEncoder/LooperShowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/GifEncoder/LooperShowView;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/GifEncoder/LooperShowView;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/GifEncoder/LooperShowView;->h:Ljava/lang/Object;

    new-instance p1, Lcom/GifEncoder/LooperShowView$a;

    invoke-direct {p1, p0}, Lcom/GifEncoder/LooperShowView$a;-><init>(Lcom/GifEncoder/LooperShowView;)V

    iput-object p1, p0, Lcom/GifEncoder/LooperShowView;->i:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lcom/GifEncoder/LooperShowView;->h()V

    return-void
.end method

.method static synthetic a(Lcom/GifEncoder/LooperShowView;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic b(Lcom/GifEncoder/LooperShowView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic c(Lcom/GifEncoder/LooperShowView;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/GifEncoder/LooperShowView;->g(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic d(Lcom/GifEncoder/LooperShowView;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/GifEncoder/LooperShowView;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lcom/GifEncoder/LooperShowView;)I
    .locals 0

    iget p0, p0, Lcom/GifEncoder/LooperShowView;->a:I

    return p0
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    invoke-interface {v0}, Lcom/GifEncoder/e;->next()Lcom/GifEncoder/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/GifEncoder/c;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/GifEncoder/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v2, v5

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    iget-object v2, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-float v2, v3

    int-to-float v3, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/GifEncoder/LooperShowView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/GifEncoder/LooperShowView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/GifEncoder/LooperShowView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/GifEncoder/LooperShowView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->e:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v3, v3

    :goto_0
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private g(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/GifEncoder/LooperShowView;->i:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method protected i()V
    .locals 4

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/GifEncoder/LooperShowView;->b:Z

    if-nez v2, :cond_2

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/GifEncoder/LooperShowView;->g(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v1}, Lcom/GifEncoder/LooperShowView;->f(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    throw v2

    :catch_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/GifEncoder/LooperShowView;->g:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/GifEncoder/LooperShowView;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Lcom/GifEncoder/LooperShowView;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    invoke-interface {v0}, Lcom/GifEncoder/e;->stop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public k(II)V
    .locals 2

    const/16 v0, 0x3e8

    div-int/2addr v0, p2

    iget-object p2, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/GifEncoder/LooperShowView;->h:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/GifEncoder/LooperShowView;->b:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    invoke-interface {p2}, Lcom/GifEncoder/e;->start()V

    iget-object p2, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    invoke-interface {p2, p1}, Lcom/GifEncoder/e$a;->b(I)V

    iput v0, p0, Lcom/GifEncoder/LooperShowView;->a:I

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/GifEncoder/LooperShowView;->d:Landroid/os/Handler;

    iget v0, p0, Lcom/GifEncoder/LooperShowView;->a:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFps(I)V
    .locals 1

    const/16 v0, 0x3e8

    div-int/2addr v0, p1

    iput v0, p0, Lcom/GifEncoder/LooperShowView;->a:I

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    iget-object v0, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    invoke-interface {v0, p1}, Lcom/GifEncoder/e$a;->b(I)V

    return-void
.end method

.method public setSourceData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/GifEncoder/d;

    invoke-direct {v0, p1}, Lcom/GifEncoder/d;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/GifEncoder/LooperShowView;->c:Lcom/GifEncoder/e$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/GifEncoder/e$b;

    const/16 v1, 0x348

    const/16 v2, 0x384

    invoke-direct {p1, v1, v2}, Lcom/GifEncoder/e$b;-><init>(II)V

    invoke-interface {v0, p1}, Lcom/GifEncoder/e;->a(Lcom/GifEncoder/e$b;)V

    return-void
.end method
