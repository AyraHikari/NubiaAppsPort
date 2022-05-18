.class public Lcn/nubia/camera/aimoon/i;
.super Lcn/nubia/camera/k/x;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/k/x;-><init>(Landroid/content/Context;Lcom/android/preference/c;Ljava/lang/String;Lcn/nubia/camera/af/a;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcn/nubia/camera/aimoon/i;->b:I

    const-wide/32 p1, 0x1312d00

    .line 23
    iput-wide p1, p0, Lcn/nubia/camera/aimoon/i;->c:J

    return-void
.end method


# virtual methods
.method protected a(Lcn/nubia/camera/three_a/b/a;)I
    .locals 2

    .line 97
    iget p1, p0, Lcn/nubia/camera/aimoon/i;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/i;->F()Lcom/android/preference/c;

    move-result-object p1

    const-string v1, "pref_camera_exposure_compensation_supermoon"

    invoke-virtual {p1, v1, v0}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method protected a(Lcn/nubia/camera/three_a/b/a;F)I
    .locals 0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x4

    return p1
.end method

.method public a(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcn/nubia/camera/aimoon/i;->b:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcn/nubia/camera/aimoon/i;->c:J

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

    const/16 v0, 0x1b

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected l()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected m()J
    .locals 2

    .line 79
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/camera/aimoon/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-wide v0, p0, Lcn/nubia/camera/aimoon/i;->c:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public n()I
    .locals 2

    .line 88
    sget-boolean v0, Lcn/nubia/camera/aimoon/l;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/camera/aimoon/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method protected o()F
    .locals 2

    .line 115
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/i;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
