.class public Lcn/nubia/camera/bd/e;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcn/nubia/camera/k/x$b;
    .locals 10

    .line 23
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object v0

    .line 24
    invoke-super {p0}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/x$b;->c()Landroid/util/Size;

    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcn/nubia/camera/bd/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/k/w;->c()[Landroid/util/Size;

    move-result-object v4

    .line 27
    invoke-virtual {p0}, Lcn/nubia/camera/bd/e;->G()Lcn/nubia/camera/k/w;

    move-result-object v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-double v5, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v5, v7

    const-wide v7, 0x3fb99999a0000000L    # 0.10000000149011612

    const v9, 0x2dc6c00

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/camera/k/w;->a([Landroid/util/Size;DDI)Landroid/util/Size;

    move-result-object v2

    .line 28
    new-instance v3, Lcn/nubia/camera/k/x$b;

    invoke-direct {v3, p0, v0, v2, v1}, Lcn/nubia/camera/k/x$b;-><init>(Lcn/nubia/camera/k/x;Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V

    return-object v3
.end method

.method protected ae()Z
    .locals 2

    .line 38
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/bd/e;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
