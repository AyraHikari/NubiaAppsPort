.class public abstract Lc/c/a/f/a/d;
.super Lc/c/a/f/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/f/a/d$b;
    }
.end annotation


# instance fields
.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lc/c/a/f/a/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/f/a/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x8d65

    .line 2
    iput p1, p0, Lc/c/a/f/a/d;->l:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    return-void
.end method

.method static synthetic t(Lc/c/a/f/a/d;)Lc/c/a/f/a/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/f/a/d;->n:Lc/c/a/f/a/d$b;

    return-object p0
.end method

.method static synthetic u(Lc/c/a/f/a/d;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    return-object p0
.end method

.method private w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/f/a/f;

    .line 2
    invoke-virtual {v1}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object v2

    invoke-virtual {v2}, Lc/c/a/e/a;->l()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object v2

    invoke-virtual {v2}, Lc/c/a/e/a;->n()V

    .line 4
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 5
    invoke-virtual {v1}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recycleProduceTexture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLMultiTexProducerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/c;->c()V

    .line 2
    invoke-direct {p0}, Lc/c/a/f/a/d;->w()V

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-nez v0, :cond_0

    const-string v0, "GLMultiTexProducerView"

    const-string v1, "!!!!!! You may not call setShareEglContext !!!"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/f/a/d;->l:I

    const/16 v1, 0xde1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/f/a/f;

    .line 3
    invoke-virtual {v1}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Lc/c/a/f/a/c;->d()V

    return-void
.end method

.method public e(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lc/c/a/f/a/c;->e(II)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: producedTextureList size is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLMultiTexProducerView"

    invoke-static {v1, v0}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lc/c/a/f/a/d;->getInitialTexCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    iget v3, p0, Lc/c/a/f/a/d;->l:I

    iget-object v4, p0, Lc/c/a/f/a/a;->i:Lc/c/a/b;

    invoke-static {p1, p2, v0, v3, v4}, Lc/c/a/f/a/f;->a(IIZILc/c/a/b;)Lc/c/a/f/a/f;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lc/c/a/f/a/d$a;

    invoke-direct {p1, p0}, Lc/c/a/f/a/d$a;-><init>(Lc/c/a/f/a/d;)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/f/a/f;

    .line 8
    invoke-virtual {v1}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc/c/a/e/a;->q(II)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method protected getInitialTexCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getRenderMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/f/a/c;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method protected p()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/c;->p()V

    .line 2
    invoke-direct {p0}, Lc/c/a/f/a/d;->w()V

    return-void
.end method

.method protected final s(Lc/c/a/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/b;",
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/d;->m:Ljava/util/List;

    invoke-virtual {p0, p1, v0, p2}, Lc/c/a/f/a/d;->v(Lc/c/a/b;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setProducedTextureTarget(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/f/a/d;->l:I

    return-void
.end method

.method public setSurfaceTextureCreatedListener(Lc/c/a/f/a/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/d;->n:Lc/c/a/f/a/d$b;

    return-void
.end method

.method protected abstract v(Lc/c/a/b;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/b;",
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;",
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;)V"
        }
    .end annotation
.end method
