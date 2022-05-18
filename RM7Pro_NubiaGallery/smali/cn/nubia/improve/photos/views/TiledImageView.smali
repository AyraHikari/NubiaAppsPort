.class public Lcn/nubia/improve/photos/views/TiledImageView;
.super Landroid/widget/FrameLayout;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/photos/views/TiledImageView$ColoredTiles;,
        Lcn/nubia/improve/photos/views/TiledImageView$TileRenderer;,
        Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;
    }
.end annotation


# static fields
.field private static final IS_SUPPORTED:Z

.field private static final USE_CHOREOGRAPHER:Z

.field private static final USE_TEXTURE_VIEW:Z = false


# instance fields
.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFreeTextures:Ljava/lang/Runnable;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mInvalPending:Z

.field protected mLock:Ljava/lang/Object;

.field public mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

.field private mTempRectF:Landroid/graphics/RectF;

.field private mTextureView:Lcn/nubia/improve/photos/views/BlockingGLTextureView;

.field private mValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcn/nubia/improve/photos/views/TiledImageView;->USE_CHOREOGRAPHER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcn/nubia/improve/photos/views/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mInvalPending:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 75
    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mValues:[F

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Lcn/nubia/improve/photos/views/TiledImageView$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/photos/views/TiledImageView$1;-><init>(Lcn/nubia/improve/photos/views/TiledImageView;)V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    .line 245
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    .line 93
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {v0}, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    .line 98
    new-instance v1, Lcn/nubia/improve/photos/views/TiledImageRenderer;

    invoke-direct {v1, p0}, Lcn/nubia/improve/photos/views/TiledImageRenderer;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcn/nubia/improve/photos/views/TiledImageRenderer;

    .line 105
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 p1, 0x2

    .line 106
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 107
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v0, Lcn/nubia/improve/photos/views/TiledImageView$TileRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/photos/views/TiledImageView$TileRenderer;-><init>(Lcn/nubia/improve/photos/views/TiledImageView;Lcn/nubia/improve/photos/views/TiledImageView$1;)V

    invoke-virtual {p1, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 108
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 109
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 111
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcn/nubia/improve/photos/views/TiledImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/improve/photos/views/TiledImageView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mInvalPending:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/improve/photos/views/TiledImageView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method private invalOnVsync()V
    .locals 2

    .line 230
    iget-boolean v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mInvalPending:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mInvalPending:Z

    .line 232
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcn/nubia/improve/photos/views/TiledImageView$2;

    invoke-direct {v0, p0}, Lcn/nubia/improve/photos/views/TiledImageView$2;-><init>(Lcn/nubia/improve/photos/views/TiledImageView;)V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 241
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method

.method public static isTilingSupported()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    return v0
.end method

.method private updateScaleIfNecessaryLocked(Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_1

    iget v0, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 183
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 188
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 117
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 193
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 213
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->invalOnVsync()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 172
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 173
    sget-boolean p1, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez p1, :cond_0

    return-void

    .line 176
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 177
    :try_start_0
    iget-object p2, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, p2}, Lcn/nubia/improve/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 178
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onPause()V
    .locals 1

    .line 136
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 145
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public positionFromMatrix(Landroid/graphics/Matrix;)V
    .locals 9

    .line 247
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_a

    .line 251
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getRotation()I

    move-result v0

    .line 252
    rem-int/lit16 v1, v0, 0xb4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 253
    :goto_0
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v3, v3, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    if-eqz v1, :cond_2

    invoke-interface {v3}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v3

    goto :goto_1

    .line 254
    :cond_2
    invoke-interface {v3}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v3

    .line 255
    :goto_1
    iget-object v4, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v4, v4, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    if-eqz v1, :cond_3

    invoke-interface {v4}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v4

    goto :goto_2

    .line 256
    :cond_3
    invoke-interface {v4}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v4

    .line 257
    :goto_2
    iget-object v5, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v4

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 258
    iget-object v5, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 259
    iget-object v5, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mValues:[F

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 260
    div-int/lit8 v3, v3, 0x2

    .line 261
    div-int/lit8 v4, v4, 0x2

    .line 262
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mValues:[F

    aget p1, p1, v2

    .line 263
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    div-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 264
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    div-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/16 v6, 0x5a

    const/16 v7, 0xb4

    if-eq v0, v6, :cond_5

    if-ne v0, v7, :cond_4

    goto :goto_3

    :cond_4
    int-to-float v3, v3

    .line 268
    iget-object v6, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    div-float/2addr v6, p1

    int-to-float v2, v2

    sub-float/2addr v6, v2

    sub-float/2addr v3, v6

    goto :goto_4

    :cond_5
    :goto_3
    int-to-float v3, v3

    .line 266
    iget-object v6, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    div-float/2addr v6, p1

    int-to-float v2, v2

    sub-float/2addr v6, v2

    add-float/2addr v3, v6

    :goto_4
    float-to-int v2, v3

    if-eq v0, v7, :cond_7

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_6

    goto :goto_5

    :cond_6
    int-to-float v0, v4

    .line 273
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, p1

    int-to-float v4, v5

    sub-float/2addr v3, v4

    sub-float/2addr v0, v3

    goto :goto_6

    :cond_7
    :goto_5
    int-to-float v0, v4

    .line 271
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, p1

    int-to-float v4, v5

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    :goto_6
    float-to-int v0, v0

    .line 275
    iget-object v3, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iput p1, v3, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 276
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz v1, :cond_8

    move v3, v0

    goto :goto_7

    :cond_8
    move v3, v2

    :goto_7
    iput v3, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 277
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    move v2, v0

    :goto_8
    iput v2, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 278
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->invalidate()V

    :cond_a
    return-void
.end method

.method public setTileSource(Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;Ljava/lang/Runnable;)V
    .locals 3

    .line 154
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iput-object p1, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;

    .line 159
    iget-object v1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    iput-object p2, v1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    .line 160
    iget-object p2, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput v2, p2, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    .line 161
    iget-object p2, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput v2, p2, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    .line 162
    iget-object p2, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;->getRotation()I

    move-result v1

    :cond_3
    iput v1, p2, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    .line 163
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    const/4 p2, 0x0

    iput p2, p1, Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    .line 164
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView;->mRenderer:Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, p1}, Lcn/nubia/improve/photos/views/TiledImageView;->updateScaleIfNecessaryLocked(Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;)V

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/TiledImageView;->invalidate()V

    return-void

    :catchall_0
    move-exception p1

    .line 165
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 205
    sget-boolean v0, Lcn/nubia/improve/photos/views/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method
