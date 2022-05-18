.class abstract Lc/c/a/f/a/b;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field protected a:Lc/c/a/f/a/h/f;

.field protected b:Lc/c/a/f/a/h/f$c;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/TextureView$SurfaceTextureListener;

.field private e:Lc/c/a/f/a/h/f$m;

.field private f:Z

.field private g:Z

.field private h:Lc/c/a/f/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/c/a/f/a/b;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lc/c/a/f/a/b;->f:Z

    .line 4
    iput-boolean p1, p0, Lc/c/a/f/a/b;->g:Z

    .line 5
    invoke-virtual {p0}, Lc/c/a/f/a/b;->j()V

    return-void
.end method

.method static synthetic g(Lc/c/a/f/a/b;)Lc/c/a/f/a/h/f$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/f/a/b;->e:Lc/c/a/f/a/h/f$m;

    return-object p0
.end method

.method private i(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/f/a/b;->o()V

    .line 2
    invoke-virtual {p0, p1, p2}, Lc/c/a/f/a/b;->n(II)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/f/a/b;->q()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->f()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    throw v0
.end method

.method public getCurrentEglContext()Lc/c/a/f/a/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->c()Lc/c/a/f/a/h/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getRenderMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()V
    .locals 3

    const-string v0, "BaseGLTextureView"

    const-string v1, "createGLThread: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/c/a/f/a/b;->f:Z

    .line 3
    iget-boolean v0, p0, Lc/c/a/f/a/b;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lc/c/a/f/a/b;->b:Lc/c/a/f/a/h/f$c;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f$c;->a()Lc/c/a/f/a/h/f;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    .line 5
    new-instance v1, Lc/c/a/f/a/b$a;

    invoke-direct {v1, p0}, Lc/c/a/f/a/b$a;-><init>(Lc/c/a/f/a/b;)V

    invoke-virtual {v0, v1}, Lc/c/a/f/a/h/f;->o(Lc/c/a/f/a/h/f$m;)V

    .line 6
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->start()V

    .line 7
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc/c/a/f/a/b;->i(II)V

    .line 8
    iget-object v0, p0, Lc/c/a/f/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 9
    iget-object v2, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v2, v1}, Lc/c/a/f/a/h/f;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lc/c/a/f/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected j()V
    .locals 0

    .line 1
    invoke-super {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->g()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->l()V

    goto :goto_0

    :cond_0
    const-string v0, "BaseGLTextureView"

    const-string v1, "GLThread is not created when requestRender"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->n()V

    goto :goto_0

    :cond_0
    const-string v0, "BaseGLTextureView"

    const-string v1, "GLThread is not created when requestRender"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected n(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v0, p1, p2}, Lc/c/a/f/a/h/f;->h(II)V

    return-void
.end method

.method protected o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->s()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "BaseGLTextureView"

    const-string v1, "onDetachedFromWindow: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->k()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged: w*h is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldw * oldh is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseGLTextureView"

    invoke-static {v1, v0}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 3
    iget-object p3, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3, p1, p2}, Lc/c/a/f/a/h/f;->h(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "BaseGLTextureView"

    const-string v1, "onSurfaceTextureAvailable: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/c/a/f/a/b;->g:Z

    .line 3
    new-instance v0, Lc/c/a/f/a/h/f$c;

    invoke-direct {v0}, Lc/c/a/f/a/h/f$c;-><init>()V

    iput-object v0, p0, Lc/c/a/f/a/b;->b:Lc/c/a/f/a/h/f$c;

    .line 4
    iget-object v1, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/c/a/f/a/b;->getRenderMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/c/a/f/a/h/f$c;->b(I)Lc/c/a/f/a/h/f$c;

    .line 6
    invoke-virtual {v0, p1}, Lc/c/a/f/a/h/f$c;->e(Ljava/lang/Object;)Lc/c/a/f/a/h/f$c;

    iget-object v1, p0, Lc/c/a/f/a/b;->h:Lc/c/a/f/a/g;

    .line 7
    invoke-virtual {v0, v1}, Lc/c/a/f/a/h/f$c;->c(Lc/c/a/f/a/g;)Lc/c/a/f/a/h/f$c;

    .line 8
    iget-boolean v0, p0, Lc/c/a/f/a/b;->f:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lc/c/a/f/a/b;->h()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, p1}, Lc/c/a/f/a/h/f;->p(Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0, p2, p3}, Lc/c/a/f/a/b;->i(II)V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/c/a/f/a/b;->d:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string v0, "BaseGLTextureView"

    const-string v1, "onSurfaceTextureDestroyed: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/f/a/b;->p()V

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/b;->d:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string v0, "BaseGLTextureView"

    const-string v1, "onSurfaceTextureSizeChanged: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lc/c/a/f/a/b;->n(II)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/f/a/b;->q()V

    .line 4
    iget-object v0, p0, Lc/c/a/f/a/b;->d:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->d:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->t()V

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->k()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/c/a/f/a/b;->f:Z

    .line 5
    iput-boolean v0, p0, Lc/c/a/f/a/b;->g:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    return-void
.end method

.method protected q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->n()V

    :cond_0
    return-void
.end method

.method public setOnCreateGLContextListener(Lc/c/a/f/a/h/f$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/b;->e:Lc/c/a/f/a/h/f$m;

    return-void
.end method

.method public setRenderer(Lc/c/a/f/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/b;->h:Lc/c/a/f/a/g;

    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/b;->d:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method
