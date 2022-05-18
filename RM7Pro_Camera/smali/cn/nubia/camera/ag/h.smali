.class public Lcn/nubia/camera/ag/h;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:Lcn/nubia/b/k;

.field private d:Lcn/nubia/camera/k/t;

.field private e:Lcn/nubia/camera/k/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    .line 38
    new-instance v0, Lcn/nubia/camera/k/t;

    invoke-direct {v0}, Lcn/nubia/camera/k/t;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/ag/h;->d:Lcn/nubia/camera/k/t;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 60
    iget-object v2, p0, Lcn/nubia/camera/ag/h;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/ag/h;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 43
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/ad/a;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;Lcn/nubia/camera/k/x;Lcn/nubia/camera/k/h;)V

    .line 44
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ak/a;->R()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 45
    new-instance p2, Lcn/nubia/camera/k/ac;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/ac;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/ag/h;->e:Lcn/nubia/camera/k/p;

    goto :goto_0

    .line 47
    :cond_0
    new-instance p2, Lcn/nubia/camera/k/v;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/k/v;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object p2, p0, Lcn/nubia/camera/ag/h;->e:Lcn/nubia/camera/k/p;

    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 8

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/ag/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/camera/k/o;)V

    .line 54
    iget-object v1, p0, Lcn/nubia/camera/ag/h;->e:Lcn/nubia/camera/k/p;

    iget-object v6, p0, Lcn/nubia/camera/ag/h;->c:Lcn/nubia/b/k;

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

.method protected b()V
    .locals 8

    .line 65
    invoke-virtual {p0}, Lcn/nubia/camera/ag/h;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/ag/h;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/ag/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v4

    .line 72
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v5

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configSession previewSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pictureSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicrospurStreamController"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/h;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v0, v1, v3, v6}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/ag/h;->b:Lcn/nubia/b/n;

    .line 76
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcn/nubia/b/k;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v6, 0x100

    const/4 v7, 0x1

    invoke-direct {v0, v1, v3, v6, v7}, Lcn/nubia/b/k;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/ag/h;->c:Lcn/nubia/b/k;

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/ag/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/h;->o()Lcn/nubia/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/t;->a(Lcn/nubia/b/d;)V

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/ag/h;->c:Lcn/nubia/b/k;

    iget-object v1, p0, Lcn/nubia/camera/ag/h;->d:Lcn/nubia/camera/k/t;

    invoke-virtual {p0}, Lcn/nubia/camera/ag/h;->w()Lcom/a/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/ag/h;->c:Lcn/nubia/b/k;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/ag/h;->e:Lcn/nubia/camera/k/p;

    iget-object v3, p0, Lcn/nubia/camera/ag/h;->b:Lcn/nubia/b/n;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcn/nubia/camera/k/p;->a(Ljava/util/ArrayList;Lcn/nubia/b/n;Landroid/util/Size;Landroid/util/Size;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcn/nubia/camera/k/ah;->c()V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/ag/h;->e:Lcn/nubia/camera/k/p;

    invoke-interface {v0}, Lcn/nubia/camera/k/p;->a()V

    return-void
.end method
