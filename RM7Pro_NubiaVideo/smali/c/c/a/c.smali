.class public abstract Lc/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/g;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lc/c/a/f/a/h/f;

.field protected d:I

.field protected e:I

.field protected f:Lc/c/a/b;

.field private g:Lc/c/a/f/a/d$b;

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(IILc/c/a/f/a/h/b;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/a/c;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/a/c;->b:Ljava/util/List;

    const/16 v0, 0xde1

    .line 5
    iput v0, p0, Lc/c/a/c;->i:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lc/c/a/c;->j:I

    .line 7
    iput p1, p0, Lc/c/a/c;->d:I

    .line 8
    iput p2, p0, Lc/c/a/c;->e:I

    .line 9
    new-instance p1, Lc/c/a/f/a/h/f$c;

    invoke-direct {p1}, Lc/c/a/f/a/h/f$c;-><init>()V

    invoke-virtual {p0}, Lc/c/a/c;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Lc/c/a/f/a/h/f$c;->b(I)Lc/c/a/f/a/h/f$c;

    .line 10
    invoke-virtual {p1, p3}, Lc/c/a/f/a/h/f$c;->d(Lc/c/a/f/a/h/b;)Lc/c/a/f/a/h/f$c;

    .line 11
    invoke-virtual {p1, p4}, Lc/c/a/f/a/h/f$c;->e(Ljava/lang/Object;)Lc/c/a/f/a/h/f$c;

    .line 12
    invoke-virtual {p1, p0}, Lc/c/a/f/a/h/f$c;->c(Lc/c/a/f/a/g;)Lc/c/a/f/a/h/f$c;

    invoke-virtual {p1}, Lc/c/a/f/a/h/f$c;->a()Lc/c/a/f/a/h/f;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lc/c/a/c;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/f/a/h/b;->c:Lc/c/a/f/a/h/b;

    invoke-direct {p0, p1, p2, v0, p3}, Lc/c/a/c;-><init>(IILc/c/a/f/a/h/b;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lc/c/a/c;)Lc/c/a/f/a/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/c;->g:Lc/c/a/f/a/d$b;

    return-object p0
.end method

.method static synthetic c(Lc/c/a/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/c;->a:Ljava/util/List;

    return-object p0
.end method

.method private l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/c;->a:Ljava/util/List;

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
    iget-object v0, p0, Lc/c/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "OffScreenCanvas"

    const-string v1, "onSurfaceCreated: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/a;

    invoke-direct {v0}, Lc/c/a/a;-><init>()V

    iput-object v0, p0, Lc/c/a/c;->f:Lc/c/a/b;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/c;->f:Lc/c/a/b;

    iget v1, p0, Lc/c/a/c;->j:I

    invoke-interface {v0, v1}, Lc/c/a/b;->h(I)V

    .line 2
    iget v0, p0, Lc/c/a/c;->i:I

    const/16 v1, 0xde1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/f/a/f;

    .line 4
    invoke-virtual {v1}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lc/c/a/c;->f:Lc/c/a/b;

    iget-object v1, p0, Lc/c/a/c;->a:Ljava/util/List;

    iget-object v2, p0, Lc/c/a/c;->b:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Lc/c/a/c;->i(Lc/c/a/b;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public e(II)V
    .locals 5

    const-string v0, "OffScreenCanvas"

    const-string v1, "onSurfaceChanged: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/c;->f:Lc/c/a/b;

    invoke-interface {v0, p1, p2}, Lc/c/a/b;->d(II)V

    .line 3
    iget-object v0, p0, Lc/c/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lc/c/a/c;->g()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lc/c/a/c;->a:Ljava/util/List;

    iget v3, p0, Lc/c/a/c;->i:I

    iget-object v4, p0, Lc/c/a/c;->f:Lc/c/a/b;

    invoke-static {p1, p2, v0, v3, v4}, Lc/c/a/f/a/f;->a(IIZILc/c/a/b;)Lc/c/a/f/a/f;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lc/c/a/c;->h:Landroid/os/Handler;

    new-instance p2, Lc/c/a/c$a;

    invoke-direct {p2, p0}, Lc/c/a/c$a;-><init>(Lc/c/a/c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 7
    :cond_1
    iget-object v0, p0, Lc/c/a/c;->a:Ljava/util/List;

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

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->k()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lc/c/a/c;->l()V

    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lc/c/a/c;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3
    throw v0
.end method

.method protected abstract g()I
.end method

.method protected abstract h()I
.end method

.method protected abstract i(Lc/c/a/b;Ljava/util/List;Ljava/util/List;)V
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

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->f()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lc/c/a/c;->l()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->g()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->l()V

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/c;->i:I

    return-void
.end method

.method public o(Lc/c/a/f/a/d$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/c;->g:Lc/c/a/f/a/d$b;

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->start()V

    .line 2
    iget-object v0, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f;->s()V

    .line 3
    iget-object v0, p0, Lc/c/a/c;->c:Lc/c/a/f/a/h/f;

    iget v1, p0, Lc/c/a/c;->d:I

    iget v2, p0, Lc/c/a/c;->e:I

    invoke-virtual {v0, v1, v2}, Lc/c/a/f/a/h/f;->h(II)V

    return-void
.end method
