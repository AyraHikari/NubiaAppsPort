.class public Lcn/nubia/camera/ax/c;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    return-void
.end method


# virtual methods
.method protected R()Z
    .locals 1

    .line 35
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/ax/c;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b()I
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcn/nubia/camera/ax/c;->F()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/ax/c;->L()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
