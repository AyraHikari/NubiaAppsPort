.class public Lcn/nubia/camera/ax/k;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/camera/ax/b;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/ax/b;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p5}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    .line 31
    iput-object p4, p0, Lcn/nubia/camera/ax/k;->b:Lcn/nubia/camera/ax/b;

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/camera/ax/k;->c:Z

    .line 33
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->I()Lcn/nubia/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/b/b;->k()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcn/nubia/camera/ax/k;->d:Z

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "flashSupported: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcn/nubia/camera/ax/k;->c:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; manualFocusSupproted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcn/nubia/camera/ax/k;->d:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoTestParameters"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected A()Ljava/lang/String;
    .locals 1

    const-string v0, "on"

    return-object v0
.end method

.method public O()Z
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ax/k;->b:Lcn/nubia/camera/ax/b;

    .line 110
    invoke-virtual {v0}, Lcn/nubia/camera/ax/b;->a()Lcn/nubia/b/i;

    move-result-object v0

    sget-object v1, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ax/k;->b:Lcn/nubia/camera/ax/b;

    .line 111
    invoke-virtual {v0}, Lcn/nubia/camera/ax/b;->b()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    return v2

    .line 115
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/k/x;->O()Z

    move-result v0

    return v0
.end method

.method protected R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    return-object v0

    .line 95
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected g()Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 104
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/k/x;->g()Z

    move-result v0

    return v0
.end method

.method protected o()F
    .locals 2

    .line 69
    iget-boolean v0, p0, Lcn/nubia/camera/ax/k;->d:Z

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0}, Lcn/nubia/camera/k/x;->o()F

    move-result v0

    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ax/k;->b:Lcn/nubia/camera/ax/b;

    invoke-virtual {v0}, Lcn/nubia/camera/ax/b;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 76
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/k/x;->o()F

    move-result v0

    return v0
.end method

.method protected t()Lcn/nubia/b/i;
    .locals 3

    .line 40
    iget-boolean v0, p0, Lcn/nubia/camera/ax/k;->c:Z

    if-nez v0, :cond_0

    .line 41
    invoke-super {p0}, Lcn/nubia/camera/k/x;->t()Lcn/nubia/b/i;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ax/k;->b:Lcn/nubia/camera/ax/b;

    invoke-virtual {v0}, Lcn/nubia/camera/ax/b;->a()Lcn/nubia/b/i;

    move-result-object v0

    sget-object v1, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/ax/k;->b:Lcn/nubia/camera/ax/b;

    .line 44
    invoke-virtual {v0}, Lcn/nubia/camera/ax/b;->b()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/ax/k;->b:Lcn/nubia/camera/ax/b;

    .line 45
    invoke-virtual {v0}, Lcn/nubia/camera/ax/b;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    return-object v0

    .line 47
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->H()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->P()Lcn/nubia/camera/selfieflash/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->P()Lcn/nubia/camera/selfieflash/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/selfieflash/a;->d()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 49
    sget-object v0, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    return-object v0

    .line 51
    :cond_3
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    return-object v0

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->U()Lcn/nubia/camera/k/x$a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/k/x$a;->b:Lcn/nubia/camera/k/x$a;

    if-ne v0, v1, :cond_5

    .line 55
    sget-object v0, Lcn/nubia/b/i;->e:Lcn/nubia/b/i;

    return-object v0

    .line 56
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/camera/ax/k;->U()Lcn/nubia/camera/k/x$a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/k/x$a;->c:Lcn/nubia/camera/k/x$a;

    if-ne v0, v1, :cond_6

    .line 57
    sget-object v0, Lcn/nubia/b/i;->b:Lcn/nubia/b/i;

    return-object v0

    .line 59
    :cond_6
    sget-object v0, Lcn/nubia/b/i;->d:Lcn/nubia/b/i;

    return-object v0
.end method
