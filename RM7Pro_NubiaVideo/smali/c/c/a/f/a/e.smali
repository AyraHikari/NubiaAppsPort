.class public abstract Lc/c/a/f/a/e;
.super Lc/c/a/f/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/f/a/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/f/a/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected final getInitialTexCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lc/c/a/f/a/d;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 2
    iget-object p1, p0, Lc/c/a/f/a/b;->a:Lc/c/a/f/a/h/f;

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lc/c/a/f/a/h/b;->c:Lc/c/a/f/a/h/b;

    invoke-virtual {p0, p1}, Lc/c/a/f/a/c;->setSharedEglContext(Lc/c/a/f/a/h/b;)V

    :cond_0
    return-void
.end method

.method public setOnSurfaceTextureSet(Lc/c/a/f/a/e$b;)V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/f/a/e$a;

    invoke-direct {v0, p0, p1}, Lc/c/a/f/a/e$a;-><init>(Lc/c/a/f/a/e;Lc/c/a/f/a/e$b;)V

    invoke-virtual {p0, v0}, Lc/c/a/f/a/d;->setSurfaceTextureCreatedListener(Lc/c/a/f/a/d$b;)V

    return-void
.end method

.method protected final v(Lc/c/a/b;Ljava/util/List;Ljava/util/List;)V
    .locals 12
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

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/f/a/f;

    .line 2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/c/a/f/a/f;

    .line 4
    invoke-virtual {p2}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {p2}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object v3

    invoke-virtual {p3}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {p3}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc/c/a/f/a/e;->x(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;Landroid/graphics/SurfaceTexture;Lc/c/a/e/a;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    invoke-virtual {p2}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lc/c/a/f/a/e;->x(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;Landroid/graphics/SurfaceTexture;Lc/c/a/e/a;)V

    :goto_0
    return-void
.end method

.method protected abstract x(Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;Landroid/graphics/SurfaceTexture;Lc/c/a/e/a;)V
.end method
