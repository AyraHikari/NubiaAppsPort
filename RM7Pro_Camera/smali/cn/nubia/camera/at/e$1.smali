.class Lcn/nubia/camera/at/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 5

    .line 217
    iget-object p2, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {p2}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/at/e;)V

    if-nez p1, :cond_0

    const-string p1, "StarrySkyFragment"

    const-string p2, "image is null"

    .line 220
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {p1}, Lcn/nubia/camera/at/e;->b(Lcn/nubia/camera/at/e;)V

    return-void

    .line 225
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {p2}, Lcn/nubia/camera/at/e;->c(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/at/i;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/at/i;->t()V

    .line 227
    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object p1

    .line 232
    iget-object p2, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {p2}, Lcn/nubia/camera/at/e;->d(Lcn/nubia/camera/at/e;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-float p2, v0

    sget-wide v0, Lcn/nubia/camera/aq/f;->h:J

    long-to-float v0, v0

    div-float/2addr p2, v0

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->d(Lcn/nubia/camera/at/e;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {v1}, Lcn/nubia/camera/at/e;->d(Lcn/nubia/camera/at/e;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 235
    iget-object v1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {v1}, Lcn/nubia/camera/at/e;->e(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    if-ne v1, v2, :cond_2

    .line 236
    iget-object v1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    const v2, 0x7f0f030b

    invoke-virtual {v1, v2}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {v2}, Lcn/nubia/camera/at/e;->f(Lcn/nubia/camera/at/e;)Lcom/android/preference/c;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    const v4, 0x7f0f022a

    invoke-virtual {v3, v4}, Lcn/nubia/camera/at/e;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_starry_sky_camera_erase_tail_key"

    invoke-virtual {v2, v4, v3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {v1, p1, p2, v0}, Lcn/nubia/camera/at/e;->a(Lcn/nubia/camera/at/e;[BFI)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {v1, p1, p2, v0}, Lcn/nubia/camera/at/e;->b(Lcn/nubia/camera/at/e;[BFI)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {v1, p1, p2, v0}, Lcn/nubia/camera/at/e;->c(Lcn/nubia/camera/at/e;[BFI)V

    .line 246
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {p1}, Lcn/nubia/camera/at/e;->c(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/at/i;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/at/i;->u()V

    .line 248
    iget-object p1, p0, Lcn/nubia/camera/at/e$1;->a:Lcn/nubia/camera/at/e;

    invoke-static {p1}, Lcn/nubia/camera/at/e;->b(Lcn/nubia/camera/at/e;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 214
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/at/e$1;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method
