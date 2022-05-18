.class public Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/ScreenNail;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;
    }
.end annotation


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65


# instance fields
.field protected mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field private mListener:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field mUpdateSurface:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 40
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 43
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mUpdateSurface:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mListener:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;

    .line 47
    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->setSize(II)V

    return-void
.end method

.method private static releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 67
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method private static setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 60
    sget-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 4

    .line 51
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    iget v1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    const v3, 0x8d65

    invoke-direct {v0, v3, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;-><init>(III)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    .line 52
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 53
    iget v1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 54
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 55
    monitor-enter p0

    const/4 v0, 0x1

    .line 56
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 8

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 117
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v0, 0x2

    .line 118
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 119
    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    .line 120
    div-int/lit8 v1, p5, 0x2

    add-int/2addr v1, p3

    int-to-float v2, v0

    int-to-float v3, v1

    .line 121
    invoke-interface {p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 122
    invoke-interface {p1, v3, v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    .line 123
    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 124
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 125
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcn/nubia/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 126
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    .line 132
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getHeight()I
    .locals 1

    .line 109
    iget v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 104
    iget v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public noDraw()V
    .locals 1

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    .line 141
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 143
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->recycle()V

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mUpdateSurface:Z

    .line 151
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mListener:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;->onFrameAvailable()V

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 0

    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    .line 78
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->recycle()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    .line 82
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v1}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 83
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resizeTexture()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcn/nubia/gallery3d/glrenderer/ExtTexture;

    if-eqz v0, :cond_0

    .line 97
    iget v1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ExtTexture;->setSize(II)V

    .line 98
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mListener:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail$Listener;

    return-void
.end method

.method public setSize(II)V
    .locals 0

    .line 87
    iput p1, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 88
    iput p2, p0, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 0

    return-void
.end method
