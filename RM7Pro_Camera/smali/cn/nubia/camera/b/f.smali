.class public Lcn/nubia/camera/b/f;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/p;

.field private e:Lcn/nubia/camera/k/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 36
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/b/f;->e:Lcn/nubia/camera/k/t;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 53
    iget-object v2, p0, Lcn/nubia/camera/b/f;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/b/f;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 40
    new-instance v0, Lcn/nubia/camera/k/v;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/b/f;->d:Lcn/nubia/camera/k/p;

    .line 41
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/b/f;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    const/4 p2, 0x1

    new-array v0, p2, [Lcn/nubia/b/m;

    .line 47
    iget-object v1, p0, Lcn/nubia/camera/b/f;->c:Lcn/nubia/b/k;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, v0}, Lcn/nubia/camera/b/f;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    return p2
.end method

.method protected b()V
    .locals 8

    .line 58
    invoke-virtual {p0}, Lcn/nubia/camera/b/f;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/b/f;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/b/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 65
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/b/f;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v0, v1, v3, v6}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/b/f;->b:Lcn/nubia/b/n;

    .line 68
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v6, 0x100

    const/4 v7, 0x1

    invoke-direct {v0, v1, v3, v6, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/b/f;->c:Lcn/nubia/b/k;

    .line 69
    iget-object v1, p0, Lcn/nubia/camera/b/f;->e:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/b/f;->w()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/b/f;->b:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/b/f;->c:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/b/f;->d:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/b/f;->b:Lcn/nubia/b/n;

    const v6, 0x8009

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    :cond_1
    :goto_0
    return-void
.end method
