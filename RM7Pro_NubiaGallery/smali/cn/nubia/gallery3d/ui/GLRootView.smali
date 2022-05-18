.class public Lcn/nubia/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcn/nubia/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcn/nubia/gallery3d/ui/GLView;

.field private mCtx:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private mOrientationSource:Lcn/nubia/gallery3d/ui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCount:I

    const-wide/16 v1, 0x0

    .line 65
    iput-wide v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 68
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mInvalidateColor:I

    .line 88
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    .line 91
    iput v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I

    .line 92
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 98
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 101
    new-instance v2, Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcn/nubia/gallery3d/ui/GLRootView;Lcn/nubia/gallery3d/ui/GLRootView$1;)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleRunner:Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;

    .line 103
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 105
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 109
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 194
    new-instance v0, Lcn/nubia/gallery3d/ui/GLRootView$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/ui/GLRootView$1;-><init>(Lcn/nubia/gallery3d/ui/GLRootView;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCtx:Landroid/content/Context;

    .line 118
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I

    const/4 v2, 0x1

    or-int/2addr v0, v2

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I

    .line 119
    invoke-virtual {p0, v3}, Lcn/nubia/gallery3d/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/ui/GLRootView;->setEGLContextClientVersion(I)V

    .line 121
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v0, p0

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/gallery3d/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 124
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/gallery3d/ui/GLRootView;->setEGLConfigChooser(IIIIII)V

    .line 126
    :goto_1
    invoke-virtual {p0, p0}, Lcn/nubia/gallery3d/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 127
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_2

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_2
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/GLRootView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/GLRootView;)Lcn/nubia/gallery3d/glrenderer/GLCanvas;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/GLRootView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderRequested:Z

    return p0
.end method

.method private layoutContentPane()V
    .locals 9

    .line 222
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I

    .line 224
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->getWidth()I

    move-result v0

    .line 225
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->getHeight()I

    move-result v1

    .line 230
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mOrientationSource:Lcn/nubia/gallery3d/ui/OrientationSource;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 231
    invoke-interface {v2}, Lcn/nubia/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v2

    .line 232
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mOrientationSource:Lcn/nubia/gallery3d/ui/OrientationSource;

    invoke-interface {v4}, Lcn/nubia/gallery3d/ui/OrientationSource;->getCompensation()I

    move-result v4

    goto :goto_0

    :cond_0
    move v2, v3

    move v4, v2

    .line 238
    :goto_0
    iget v5, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensation:I

    if-eq v5, v4, :cond_2

    .line 239
    iput v4, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensation:I

    .line 240
    rem-int/lit16 v5, v4, 0xb4

    if-eqz v5, :cond_1

    .line 241
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 243
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    neg-int v6, v1

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 245
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 247
    :cond_1
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v4

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 250
    :cond_2
    :goto_1
    iput v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mDisplayRotation:I

    .line 253
    iget v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensation:I

    rem-int/lit16 v2, v2, 0xb4

    if-eqz v2, :cond_3

    move v8, v1

    move v1, v0

    move v0, v8

    .line 258
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout content pane "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (compensation "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GLRootView"

    invoke-static {v4, v2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 283
    invoke-virtual {v2, v3, v3, v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->layout(IIII)V

    :cond_4
    return-void
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    .line 396
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->deleteRecycledResources()V

    .line 399
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->resetUploadLimit()V

    const/4 p1, 0x0

    .line 401
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 403
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mOrientationSource:Lcn/nubia/gallery3d/ui/OrientationSource;

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mDisplayRotation:I

    .line 404
    invoke-interface {v0}, Lcn/nubia/gallery3d/ui/OrientationSource;->getDisplayRotation()I

    move-result v0

    if-ne v1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 406
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 409
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 410
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensation:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/GLRootView;->rotateCanvas(I)V

    .line 411
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    if-eqz v0, :cond_3

    .line 412
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    .line 415
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    .line 417
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    invoke-interface {v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 419
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 420
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 421
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge p1, v2, :cond_4

    .line 422
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v3, v0, v1}, Lcn/nubia/gallery3d/anim/CanvasAnimation;->setStartTime(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 424
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 427
    :cond_5
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/UploadedTexture;->uploadLimitReached()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 428
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->requestRender()V

    .line 431
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter p1

    .line 432
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleRunner:Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 433
    :cond_7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private outputFps()V
    .locals 7

    .line 344
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 345
    iget-wide v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 346
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    goto :goto_0

    :cond_0
    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCount:I

    int-to-double v3, v3

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    sub-long v5, v0, v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLRootView"

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    const/4 v0, 0x0

    .line 351
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 353
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFrameCount:I

    return-void
.end method

.method private rotateCanvas(I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->getWidth()I

    move-result v0

    .line 448
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->getHeight()I

    move-result v1

    .line 449
    div-int/lit8 v0, v0, 0x2

    .line 450
    div-int/lit8 v1, v1, 0x2

    .line 451
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-interface {v2, v3, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 452
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    int-to-float v3, p1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v5, v4}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    .line 453
    rem-int/lit16 p1, p1, 0xb4

    if-eqz p1, :cond_1

    .line 454
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private superRequestRender()V
    .locals 0

    .line 201
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mIdleRunner:Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLRootView$IdleRunner;->enable()V

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 468
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mInDownState:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    return v1

    .line 467
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 472
    :cond_3
    iget v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensation:I

    if-eqz v2, :cond_4

    .line 473
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 476
    :cond_4
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 479
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    if-eqz v2, :cond_5

    .line 480
    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v1, v3

    :cond_5
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 482
    iput-boolean v3, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_6
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 487
    throw p1
.end method

.method public extractSmartContent(ILandroid/graphics/Rect;)I
    .locals 1

    .line 632
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/ui/GLView;->onExtraSmartContent(ILandroid/graphics/Rect;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 627
    throw v0
.end method

.method public freeze()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 571
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public getCompensation()I
    .locals 1

    .line 559
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 564
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 554
    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 617
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->unfreeze()V

    .line 618
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 358
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->update()V

    .line 364
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 366
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFreeze:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 371
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 374
    throw p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 535
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->unfreeze()V

    .line 536
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gl10: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLRootView"

    .line 329
    invoke-static {v1, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    .line 331
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 332
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->setRenderThread()V

    .line 337
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 338
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 340
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    invoke-interface {p1, p2, p3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setSize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .line 301
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .line 302
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz p2, :cond_0

    .line 304
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GLObject has changed from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GLRootView"

    invoke-static {v0, p2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 308
    :try_start_0
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 309
    sget-boolean p2, Lcn/nubia/improve/ApiHelper;->HAS_GLES20_REQUIRED:Z

    if-eqz p2, :cond_1

    new-instance p1, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;

    invoke-direct {p1}, Lcn/nubia/gallery3d/glrenderer/GLES20Canvas;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mCanvas:Lcn/nubia/gallery3d/glrenderer/GLCanvas;

    .line 310
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    .line 318
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GLRootView;->setRenderMode(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 312
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 313
    throw p1
.end method

.method public registerLaunchedAnimation(Lcn/nubia/gallery3d/anim/CanvasAnimation;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 214
    :try_start_1
    iput v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFlags:I

    .line 215
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 218
    throw v0
.end method

.method public requestRender()V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 188
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :goto_0
    return-void
.end method

.method public requestRenderForced()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->superRequestRender()V

    return-void
.end method

.method public setContentPane(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 9

    .line 156
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 158
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mInDownState:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 160
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 163
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 166
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/GLView;->detachFromRoot()V

    .line 167
    invoke-static {}, Lcn/nubia/gallery3d/glrenderer/BasicTexture;->yieldAllTextures()V

    .line 169
    :cond_2
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mContentView:Lcn/nubia/gallery3d/ui/GLView;

    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1, p0}, Lcn/nubia/gallery3d/ui/GLView;->attachToRoot(Lcn/nubia/gallery3d/ui/GLRoot;)V

    .line 172
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    :cond_3
    return-void
.end method

.method public setLightsOutMode(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x105

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 589
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/GLRootView;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setOrientationSource(Lcn/nubia/gallery3d/ui/OrientationSource;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 548
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mOrientationSource:Lcn/nubia/gallery3d/ui/OrientationSource;

    .line 549
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 598
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->unfreeze()V

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 604
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->unfreeze()V

    .line 605
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 610
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/GLRootView;->unfreeze()V

    .line 611
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 612
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->resetRenderThread()V

    return-void
.end method

.method public unfreeze()V
    .locals 1

    .line 576
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 577
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFreeze:Z

    .line 578
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 579
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
