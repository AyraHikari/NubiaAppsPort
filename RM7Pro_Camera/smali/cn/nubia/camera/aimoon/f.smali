.class public Lcn/nubia/camera/aimoon/f;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcn/nubia/camera/aimoon/f;->b:I

    return-void
.end method


# virtual methods
.method protected a(Lcn/nubia/camera/three_a/b/a;)I
    .locals 2

    .line 61
    iget v0, p0, Lcn/nubia/camera/aimoon/f;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/camera/k/x;->a(Lcn/nubia/camera/three_a/b/a;)I

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcn/nubia/camera/aimoon/f;->b:I

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "off"

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
