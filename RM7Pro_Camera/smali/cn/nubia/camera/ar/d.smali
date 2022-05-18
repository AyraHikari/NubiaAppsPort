.class public Lcn/nubia/camera/ar/d;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcn/nubia/camera/ar/d;->b:I

    iput p1, p0, Lcn/nubia/camera/ar/d;->c:I

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 43
    iput p1, p0, Lcn/nubia/camera/ar/d;->b:I

    .line 44
    iput p2, p0, Lcn/nubia/camera/ar/d;->c:I

    return-void
.end method

.method protected b()I
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcn/nubia/camera/ar/d;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ar/d;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 1

    .line 32
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->P()Z

    move-result v0

    return v0
.end method

.method protected h()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public n()I
    .locals 8

    .line 49
    invoke-super {p0}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    .line 50
    invoke-super {p0}, Lcn/nubia/camera/k/x;->m()J

    move-result-wide v1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 51
    iget v4, p0, Lcn/nubia/camera/ar/d;->b:I

    if-eq v4, v3, :cond_1

    iget v5, p0, Lcn/nubia/camera/ar/d;->c:I

    if-eq v5, v3, :cond_1

    const-wide/16 v6, -0x1

    cmp-long v1, v1, v6

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr v4, v5

    .line 54
    div-int/lit8 v4, v4, 0x64

    return v4

    :cond_1
    :goto_0
    return v0
.end method
