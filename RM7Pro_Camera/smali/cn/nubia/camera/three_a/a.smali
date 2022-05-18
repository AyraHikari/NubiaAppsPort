.class public Lcn/nubia/camera/three_a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I


# direct methods
.method public static a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;Ljava/lang/String;)F
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 98
    :cond_0
    invoke-static {p2, p0}, Lcn/nubia/camera/ba/c;->a(Ljava/lang/String;I)F

    move-result p0

    return p0
.end method

.method public static a()I
    .locals 1

    .line 52
    sget v0, Lcn/nubia/camera/three_a/a;->e:I

    return v0
.end method

.method public static a(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static a(Lcn/nubia/camera/af/a;)I
    .locals 1

    .line 81
    sget-object v0, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x64

    :goto_1
    return p0
.end method

.method public static a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I
    .locals 1

    .line 90
    invoke-static {p1}, Lcn/nubia/camera/three_a/a;->a(Lcn/nubia/camera/af/a;)I

    move-result p1

    const-string v0, "pref_manual_focus_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 34
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v0

    sput v0, Lcn/nubia/camera/three_a/a;->d:I

    .line 35
    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v0

    sput v0, Lcn/nubia/camera/three_a/a;->e:I

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->a(Landroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcn/nubia/camera/three_a/a;->f:I

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcn/nubia/camera/three_a/a;->g:I

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcn/nubia/camera/three_a/a;->b:I

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcn/nubia/camera/three_a/a;->c:I

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    sput p0, Lcn/nubia/camera/three_a/a;->a:I

    return-void
.end method

.method public static a(Lcn/nubia/camera/ad/a;)Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/camera/three_a/a;->a(Lcom/android/preference/c;Lcn/nubia/camera/af/a;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcn/nubia/camera/d/b;Lcn/nubia/camera/ad/a;)Z
    .locals 2

    .line 108
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_1

    .line 109
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-static {p1}, Lcn/nubia/camera/bb/ad;->e(Lcn/nubia/camera/ad/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcn/nubia/camera/ba/a;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/d/b;->a()I

    move-result p1

    sget-object v0, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/d/b;->a()I

    move-result p0

    sget-object p1, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    invoke-virtual {p1}, Lcn/nubia/camera/d/b;->a()I

    move-result p1

    if-gt p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b()I
    .locals 1

    .line 56
    sget v0, Lcn/nubia/camera/three_a/a;->d:I

    return v0
.end method

.method public static c()I
    .locals 1

    .line 60
    sget v0, Lcn/nubia/camera/three_a/a;->g:I

    return v0
.end method

.method public static d()I
    .locals 1

    .line 64
    sget v0, Lcn/nubia/camera/three_a/a;->f:I

    return v0
.end method

.method public static e()I
    .locals 1

    .line 68
    sget v0, Lcn/nubia/camera/three_a/a;->c:I

    return v0
.end method

.method public static f()I
    .locals 1

    .line 72
    sget v0, Lcn/nubia/camera/three_a/a;->b:I

    return v0
.end method

.method public static g()I
    .locals 1

    .line 76
    sget v0, Lcn/nubia/camera/three_a/a;->a:I

    return v0
.end method
