.class public Lcn/nubia/camera/ai/f;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/k;

.field private c:Lcn/nubia/b/n;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/camera/k/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 31
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ai/f;->d:Lcn/nubia/camera/k/t;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 36
    iget-object v2, p0, Lcn/nubia/camera/ai/f;->c:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ai/f;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/ai/f;->e:Lcn/nubia/camera/k/p;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    .line 76
    :cond_0
    new-instance v0, Lcn/nubia/camera/k/v;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/ai/f;->e:Lcn/nubia/camera/k/p;

    .line 77
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 9

    .line 64
    invoke-virtual {p0}, Lcn/nubia/camera/ai/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/f;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 68
    iget-object v2, p0, Lcn/nubia/camera/ai/f;->e:Lcn/nubia/camera/k/p;

    const/4 v3, 0x2

    iget-object v7, p0, Lcn/nubia/camera/ai/f;->b:Lcn/nubia/b/k;

    new-array v8, v1, [Lcn/nubia/b/m;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v2 .. v8}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .locals 8

    .line 41
    invoke-virtual {p0}, Lcn/nubia/camera/ai/f;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 43
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 45
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v6, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/ai/f;->b:Lcn/nubia/b/k;

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/ai/f;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/f;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/ai/f;->b:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/ai/f;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/f;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 49
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/ai/f;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/ai/f;->c:Lcn/nubia/b/n;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/ai/f;->b:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/ai/f;->c:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v7, 0x23

    invoke-direct {v0, v1, v3, v7, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ai/f;->e:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/ai/f;->c:Lcn/nubia/b/n;

    const v6, 0x8016

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/ai/f;->e:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    return-void
.end method
