.class public abstract Lc/c/a/f/a/c;
.super Lc/c/a/f/a/a;
.source "SourceFile"


# instance fields
.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/f/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/c/a/f/a/c;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic getCurrentEglContext()Lc/c/a/f/a/h/b;
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/b;->getCurrentEglContext()Lc/c/a/f/a/h/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic j()V
    .locals 0

    invoke-super {p0}, Lc/c/a/f/a/a;->j()V

    return-void
.end method

.method protected p()V
    .locals 1

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/b;->p()V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final r(Lc/c/a/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/f/a/f;

    .line 4
    invoke-virtual {v1}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/e/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lc/c/a/f/a/c;->k:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lc/c/a/f/a/c;->s(Lc/c/a/b;Ljava/util/List;)V

    return-void
.end method

.method protected abstract s(Lc/c/a/b;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/b;",
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;)V"
        }
    .end annotation
.end method

.method public bridge synthetic setOnCreateGLContextListener(Lc/c/a/f/a/h/f$m;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/c/a/f/a/b;->setOnCreateGLContextListener(Lc/c/a/f/a/h/f$m;)V

    return-void
.end method

.method public bridge synthetic setRenderBackgroundColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/c/a/f/a/a;->setRenderBackgroundColor(I)V

    return-void
.end method

.method public bridge synthetic setRenderer(Lc/c/a/f/a/g;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/c/a/f/a/b;->setRenderer(Lc/c/a/f/a/g;)V

    return-void
.end method

.method public setSharedEglContext(Lc/c/a/f/a/h/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/b;->b:Lc/c/a/f/a/h/f$c;

    invoke-virtual {v0, p1}, Lc/c/a/f/a/h/f$c;->d(Lc/c/a/f/a/h/b;)Lc/c/a/f/a/h/f$c;

    .line 2
    invoke-virtual {p0}, Lc/c/a/f/a/b;->h()V

    return-void
.end method

.method public bridge synthetic setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/c/a/f/a/b;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method
