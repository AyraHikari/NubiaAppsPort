.class public Lcn/nubia/camera/ah/g;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/n;

.field private d:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/camera/ah/g;->d:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public H()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/ah/g;->d:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 69
    iget-object v2, p0, Lcn/nubia/camera/ah/g;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ah/g;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 41
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 42
    iget-object p1, p0, Lcn/nubia/camera/ah/g;->d:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/camera/ah/g;->d:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Lcn/nubia/camera/k/u;)Z
    .locals 3

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/ah/g;->d:Landroid/graphics/SurfaceTexture;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    const/4 p2, 0x1

    new-array v0, p2, [Lcn/nubia/b/m;

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/ah/g;->c:Lcn/nubia/b/n;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, p1, p3, v0}, Lcn/nubia/camera/ah/g;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return p2
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 8

    .line 49
    invoke-virtual {p0}, Lcn/nubia/camera/ah/g;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcn/nubia/camera/ah/g;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ah/g;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v5

    .line 56
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v6

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/ah/g;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/ah/g;->b:Lcn/nubia/b/n;

    .line 59
    new-instance v0, Lcn/nubia/b/n;

    iget-object v1, p0, Lcn/nubia/camera/ah/g;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/ah/g;->c:Lcn/nubia/b/n;

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/ah/g;->b:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/ah/g;->c:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 64
    iget-object v3, p0, Lcn/nubia/camera/ah/g;->b:Lcn/nubia/b/n;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ah/g;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;Landroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/ah/g;->d:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
