.class abstract Lc/c/a/f/a/a;
.super Lc/c/a/f/a/b;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/g;


# instance fields
.field protected i:Lc/c/a/b;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/c/a/f/a/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lc/c/a/f/a/a;->j:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "BaseGLCanvasTextureView"

    const-string v1, "onSurfaceCreated: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lc/c/a/a;

    invoke-direct {v0}, Lc/c/a/a;-><init>()V

    iput-object v0, p0, Lc/c/a/f/a/a;->i:Lc/c/a/b;

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/a;->i:Lc/c/a/b;

    iget v1, p0, Lc/c/a/f/a/a;->j:I

    invoke-interface {v0, v1}, Lc/c/a/b;->h(I)V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/a;->i:Lc/c/a/b;

    invoke-virtual {p0, v0}, Lc/c/a/f/a/a;->r(Lc/c/a/b;)V

    return-void
.end method

.method public e(II)V
    .locals 2

    const-string v0, "BaseGLCanvasTextureView"

    const-string v1, "onSurfaceChanged: "

    .line 1
    invoke-static {v0, v1}, Lc/c/a/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/a;->i:Lc/c/a/b;

    invoke-interface {v0, p1, p2}, Lc/c/a/b;->d(II)V

    return-void
.end method

.method protected j()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/f/a/b;->j()V

    .line 2
    invoke-virtual {p0, p0}, Lc/c/a/f/a/b;->setRenderer(Lc/c/a/f/a/g;)V

    return-void
.end method

.method protected abstract r(Lc/c/a/b;)V
.end method

.method public setRenderBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c/a/f/a/a;->j:I

    return-void
.end method
