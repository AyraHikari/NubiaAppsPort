.class public Lcom/zte/camera/ui/b/a/d;
.super Lcom/zte/camera/ui/b/a/a;
.source "SourceFile"


# instance fields
.field private c:Landroid/view/Surface;

.field private d:Landroid/graphics/SurfaceTexture;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/zte/camera/ui/b/a/b;Landroid/view/Surface;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/b/a/a;-><init>(Lcom/zte/camera/ui/b/a/b;)V

    .line 24
    iput-object p2, p0, Lcom/zte/camera/ui/b/a/d;->c:Landroid/view/Surface;

    .line 25
    iput-boolean p3, p0, Lcom/zte/camera/ui/b/a/d;->e:Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 38
    sget-object v0, Lcom/zte/camera/ui/b/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create window surface mSurface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/ui/b/a/d;->c:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/d;->c:Landroid/view/Surface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/d;->d:Landroid/graphics/SurfaceTexture;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/b/a/d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/zte/camera/ui/b/a/d;->a()V

    .line 50
    iget-object v0, p0, Lcom/zte/camera/ui/b/a/d;->c:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    iget-boolean v2, p0, Lcom/zte/camera/ui/b/a/d;->e:Z

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 54
    :cond_0
    iput-object v1, p0, Lcom/zte/camera/ui/b/a/d;->c:Landroid/view/Surface;

    .line 56
    :cond_1
    iput-object v1, p0, Lcom/zte/camera/ui/b/a/d;->d:Landroid/graphics/SurfaceTexture;

    return-void
.end method
