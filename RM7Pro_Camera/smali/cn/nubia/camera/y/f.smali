.class public Lcn/nubia/camera/y/f;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 32
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/y/f;->d:Lcn/nubia/camera/k/t;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 36
    iget-object v2, p0, Lcn/nubia/camera/y/f;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/y/f;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/y/f;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 p2, 0x1

    new-array v0, p2, [Lcn/nubia/b/m;

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/y/f;->c:Lcn/nubia/b/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, p1, p3, v0}, Lcn/nubia/camera/y/f;->b(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return p2
.end method

.method protected b()V
    .locals 9

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/y/f;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcn/nubia/camera/y/f;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/y/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 48
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/y/f;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/y/f;->b:Lcn/nubia/b/n;

    .line 53
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/y/f;->c:Lcn/nubia/b/k;

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/y/f;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/y/f;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/camera/y/f;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/y/f;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/y/f;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/y/f;->b:Lcn/nubia/b/n;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/y/f;->c:Lcn/nubia/b/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcn/nubia/camera/y/f;->b:Lcn/nubia/b/n;

    .line 61
    invoke-virtual {p0}, Lcn/nubia/camera/y/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/y/e;

    invoke-virtual {v0}, Lcn/nubia/camera/y/e;->af()I

    move-result v5

    const/4 v8, 0x0

    move-object v1, p0

    .line 60
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/y/f;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_1
    :goto_0
    return-void
.end method
