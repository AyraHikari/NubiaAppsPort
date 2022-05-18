.class public Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;
.super Ljava/lang/Object;
.source "PreparePageFadeoutTexture.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;


# static fields
.field public static final KEY_FADE_TEXTURE:Ljava/lang/String; = "fade_texture"

.field public static final KEY_PREPARE_TEXTURE:Ljava/lang/String; = "prepare_texture"

.field private static final TIMEOUT:J = 0xc8L


# instance fields
.field private mCancelled:Z

.field private mResultReady:Landroid/os/ConditionVariable;

.field private mRootPane:Lcn/nubia/gallery3d/ui/GLView;

.field private mTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/GLView;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    .line 17
    iput-boolean v1, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 22
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->getWidth()I

    move-result v1

    .line 26
    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    new-instance v3, Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-direct {v3, v1, v2, v0}, Lcn/nubia/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v3, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    .line 32
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    return-void

    .line 28
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return-void
.end method

.method public static prepareFadeOutTexture(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/GLView;Ljava/lang/String;)V
    .locals 1

    .line 69
    new-instance v0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;-><init>(Lcn/nubia/gallery3d/ui/GLView;)V

    .line 70
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    .line 73
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 75
    :try_start_0
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcn/nubia/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    .line 76
    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->get()Lcn/nubia/gallery3d/glrenderer/RawTexture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    if-nez v0, :cond_1

    return-void

    .line 84
    :cond_1
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getTransitionStore()Lcn/nubia/gallery3d/app/TransitionStore;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Lcn/nubia/gallery3d/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 78
    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 79
    throw p0
.end method


# virtual methods
.method public declared-synchronized get()Lcn/nubia/gallery3d/glrenderer/RawTexture;
    .locals 4

    monitor-enter p0

    .line 40
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    monitor-exit p0

    return-object v1

    .line 42
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 45
    :try_start_2
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    return v0
.end method

.method public onGLIdle(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 1

    .line 52
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mCancelled:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 54
    :try_start_0
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    .line 55
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mRootPane:Lcn/nubia/gallery3d/ui/GLView;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 56
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    goto :goto_0

    .line 61
    :cond_0
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    .line 63
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PreparePageFadeoutTexture;->mResultReady:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    const/4 p1, 0x0

    return p1
.end method
