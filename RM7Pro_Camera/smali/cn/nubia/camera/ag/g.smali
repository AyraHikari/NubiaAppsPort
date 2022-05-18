.class public Lcn/nubia/camera/ag/g;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 6

    .line 29
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    .line 30
    sget-object v1, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 31
    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/ag/g;->G()Lcn/nubia/camera/k/w;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, v1}, Lcn/nubia/camera/ag/g;->a(D[Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v1

    .line 34
    new-instance v2, Lcn/nubia/camera/k/x$b;

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->c()Landroid/util/Size;

    move-result-object v0

    invoke-direct {v2, p0, v1, v3, v0}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v2
.end method

.method protected b()I
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcn/nubia/camera/ag/g;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ag/g;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 1

    .line 44
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->R()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method protected j()Z
    .locals 6

    .line 54
    invoke-super {p0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v0

    .line 55
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public q()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
