.class public Lcn/nubia/camera/r/k;
.super Lcn/nubia/camera/k/ah;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/b/n;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcn/nubia/camera/k/ah;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcn/nubia/camera/r/k;->c:I

    .line 25
    iput-boolean v0, p0, Lcn/nubia/camera/r/k;->d:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcn/nubia/b/m;

    .line 29
    iget-object v2, p0, Lcn/nubia/camera/r/k;->b:Lcn/nubia/b/n;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcn/nubia/camera/r/k;->a(I[Lcn/nubia/b/m;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcn/nubia/camera/r/k;->d:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 9

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/r/k;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcn/nubia/camera/r/k;->o()Lcn/nubia/b/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/r/k;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v6

    .line 41
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v7

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcn/nubia/camera/r/k;->c:I

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/b/n;

    invoke-virtual {p0}, Lcn/nubia/camera/r/k;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/b/n;-><init>(Landroid/graphics/SurfaceTexture;II)V

    iput-object v0, p0, Lcn/nubia/camera/r/k;->b:Lcn/nubia/b/n;

    .line 47
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/nubia/camera/r/k;->l()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/r/k;->l()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/r/k;->d:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/r/a;->a(Lcom/android/preference/c;Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcn/nubia/camera/r/k;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->e()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 51
    new-instance v1, Lcn/nubia/b/l$a;

    invoke-direct {v1}, Lcn/nubia/b/l$a;-><init>()V

    .line 52
    invoke-virtual {v1, v0}, Lcn/nubia/b/l$a;->a(Landroid/media/CamcorderProfile;)V

    .line 53
    new-instance v0, Lcn/nubia/b/l;

    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/b/l;-><init>(Lcn/nubia/b/l$a;Landroid/content/Context;)V

    .line 54
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x801a

    .line 55
    iput v0, p0, Lcn/nubia/camera/r/k;->c:I

    :cond_1
    const/4 v2, 0x0

    .line 58
    iget-object v3, p0, Lcn/nubia/camera/r/k;->b:Lcn/nubia/b/n;

    iget v5, p0, Lcn/nubia/camera/r/k;->c:I

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/camera/r/k;->a(ZLcn/nubia/b/n;Ljava/util/ArrayList;ILandroid/util/Size;Landroid/util/Size;Lcn/nubia/camera/k/ah$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 71
    iget v0, p0, Lcn/nubia/camera/r/k;->c:I

    return v0
.end method
