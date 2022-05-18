.class public Lcom/hpplay/a/i;
.super Lcom/hpplay/a/c;
.source "SourceFile"


# instance fields
.field private c:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/hpplay/a/b;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/hpplay/a/c;-><init>(Lcom/hpplay/a/b;)V

    .line 58
    invoke-virtual {p0, p2}, Lcom/hpplay/a/i;->a(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/a/b;Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/hpplay/a/c;-><init>(Lcom/hpplay/a/b;)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/hpplay/a/i;->a(Ljava/lang/Object;)V

    .line 50
    iput-object p2, p0, Lcom/hpplay/a/i;->c:Landroid/view/Surface;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/a/b;Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/hpplay/a/c;-><init>(Lcom/hpplay/a/b;)V

    .line 39
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hpplay/a/i;->a(Ljava/lang/Object;)V

    .line 40
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/a/i;->c:Landroid/view/Surface;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/hpplay/a/b;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/hpplay/a/i;->c:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not yet implemented for SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/hpplay/a/i;->b:Lcom/hpplay/a/b;

    .line 90
    iget-object v0, p0, Lcom/hpplay/a/i;->c:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/hpplay/a/i;->a(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/hpplay/a/i;->c()V

    .line 66
    iget-object v0, p0, Lcom/hpplay/a/i;->c:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/hpplay/a/i;->c:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/a/i;->c:Landroid/view/Surface;

    .line 70
    :cond_0
    return-void
.end method
