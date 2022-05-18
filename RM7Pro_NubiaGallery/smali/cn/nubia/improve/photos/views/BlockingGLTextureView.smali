.class public Lcn/nubia/improve/photos/views/BlockingGLTextureView;
.super Landroid/view/TextureView;
.source "BlockingGLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;,
        Lcn/nubia/improve/photos/views/BlockingGLTextureView$EglHelper;
    }
.end annotation


# instance fields
.field private mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {p0, p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->finish()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :catchall_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 69
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->setSize(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 80
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->setSize(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;->render()V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    invoke-direct {v0, p1}, Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;-><init>(Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcn/nubia/improve/photos/views/BlockingGLTextureView;->mRenderThread:Lcn/nubia/improve/photos/views/BlockingGLTextureView$RenderThread;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Renderer already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
