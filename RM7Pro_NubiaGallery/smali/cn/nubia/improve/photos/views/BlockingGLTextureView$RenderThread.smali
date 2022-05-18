.class Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "BlockingGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/BlockingGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderThread"
.end annotation


# static fields
.field private static final CHANGE_SURFACE:I = 0x2

.field private static final FINISH:I = 0x4

.field private static final INVALID:I = -0x1

.field private static final RENDER:I = 0x1

.field private static final RESIZE_SURFACE:I = 0x3


# instance fields
.field private mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

.field private mExecMsgId:I

.field private mFinished:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHeight:I

.field private mLock:Ljava/lang/Object;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    const-string v0, "RenderThread"

    .line 326
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;-><init>(Lcn/nubia/improve/photos/views/BlockingGLTextureView$1;)V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 317
    iput v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    const/4 v0, 0x0

    .line 322
    iput-boolean v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    .line 327
    iput-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 328
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->start()V

    return-void
.end method

.method private checkRenderer()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_0

    return-void

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Renderer is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSurface()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "surface is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private exec(I)V
    .locals 3

    .line 380
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 385
    iput p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 386
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :try_start_1
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    .line 382
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message already set - multithreaded access?"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 392
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private handleMessageLocked(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->destroySurface()V

    .line 412
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->finish()V

    .line 413
    iput-boolean v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mWidth:I

    iget v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0

    .line 398
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->createSurface(Landroid/graphics/SurfaceTexture;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 399
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 400
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    iget-object v1, v1, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, p1, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 408
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->swap()I

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x4

    .line 371
    invoke-direct {p0, v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public render()V
    .locals 1

    .line 362
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 363
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 364
    invoke-direct {p0, v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    .line 365
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 420
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mEglHelper:Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;

    invoke-virtual {v1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;->start()V

    .line 422
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mFinished:Z

    if-nez v1, :cond_1

    .line 423
    :catch_0
    :goto_1
    iget v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 425
    :try_start_1
    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 430
    :cond_0
    :try_start_2
    invoke-direct {p0, v1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->handleMessageLocked(I)V

    .line 431
    iput v2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 432
    iget-object v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 434
    iput v1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    .line 435
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSize(II)V
    .locals 0

    .line 354
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 355
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->checkSurface()V

    .line 356
    iput p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mWidth:I

    .line 357
    iput p2, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mHeight:I

    const/4 p1, 0x3

    .line 358
    invoke-direct {p0, p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 347
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->checkRenderer()V

    .line 349
    :cond_0
    iput-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x2

    .line 350
    invoke-direct {p0, p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->exec(I)V

    return-void
.end method
