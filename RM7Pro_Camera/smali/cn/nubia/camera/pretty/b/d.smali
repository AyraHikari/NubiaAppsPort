.class public Lcn/nubia/camera/pretty/b/d;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/b/k;

.field private f:Lcn/nubia/camera/k/t;

.field private g:Lcn/nubia/camera/k/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/b/d;->d:Lcn/nubia/camera/k/t;

    .line 48
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/pretty/b/d;->f:Lcn/nubia/camera/k/t;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/b/m;

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/d;->b:Lcn/nubia/b/n;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/nubia/camera/pretty/b/d;->e:Lcn/nubia/b/k;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lcn/nubia/camera/pretty/b/d;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 1

    .line 52
    new-instance v0, Lcn/nubia/camera/k/ac;

    invoke-direct {v0, p1, p0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/b/d;->g:Lcn/nubia/camera/k/p;

    .line 53
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/o;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 8

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 59
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/d;->g:Lcn/nubia/camera/k/p;

    iget-object v6, p0, Lcn/nubia/camera/pretty/b/d;->c:Lcn/nubia/b/k;

    const/4 v0, 0x0

    new-array v7, v0, [Lcn/nubia/b/m;

    const/4 v2, 0x2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v7}, Lcn/nubia/camera/k/p;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;[Lcn/nubia/b/m;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/camera/k/ac$b;)Z
    .locals 9

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->g:Lcn/nubia/camera/k/p;

    move-object v1, v0

    check-cast v1, Lcn/nubia/camera/k/ac;

    iget-object v6, p0, Lcn/nubia/camera/pretty/b/d;->c:Lcn/nubia/b/k;

    const/4 v0, 0x0

    new-array v8, v0, [Lcn/nubia/b/m;

    const/4 v2, 0x2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/k/ac;->a(ILcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;Lcn/nubia/b/k;Lcn/nubia/camera/k/ac$b;[Lcn/nubia/b/m;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected b()V
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/pretty/b/d;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 81
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 83
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/b/d;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/b/d;->b:Lcn/nubia/b/n;

    .line 85
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v6, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/b/d;->c:Lcn/nubia/b/k;

    .line 86
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/b/d;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/pretty/b/d;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/b/d;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 89
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3, v6}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/pretty/b/d;->e:Lcn/nubia/b/k;

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/b/d;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->e:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/pretty/b/d;->f:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/pretty/b/d;->w()Lcom/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->b:Lcn/nubia/b/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->c:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->e:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcn/nubia/camera/pretty/b/d;->g:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/pretty/b/d;->b:Lcn/nubia/b/n;

    const v6, 0x8008

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/pretty/b/d;->g:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    return-void
.end method
