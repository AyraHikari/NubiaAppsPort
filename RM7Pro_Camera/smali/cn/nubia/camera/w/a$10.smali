.class Lcn/nubia/camera/w/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcn/nubia/camera/w/a$10;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    .line 801
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 803
    iget-object v0, p0, Lcn/nubia/camera/w/a$10;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->F(Lcn/nubia/camera/w/a;)I

    move-result v0

    if-gez v0, :cond_0

    .line 804
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x32

    div-int/lit8 v0, v0, 0x64

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/w/a$10;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->F(Lcn/nubia/camera/w/a;)I

    move-result v0

    :goto_0
    move v5, v0

    const/4 v0, 0x0

    .line 810
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 814
    :catch_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/high16 p1, -0x40000000    # -2.0f

    :goto_1
    move v6, p1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    .line 815
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/w/a$10;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->G(Lcn/nubia/camera/w/a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 816
    iget-object p1, p0, Lcn/nubia/camera/w/a$10;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->G(Lcn/nubia/camera/w/a;)Landroid/os/Handler;

    move-result-object p1

    new-instance v7, Lcn/nubia/camera/w/a$d;

    iget-object v2, p0, Lcn/nubia/camera/w/a$10;->a:Lcn/nubia/camera/w/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/w/a$d;-><init>(Lcn/nubia/camera/w/a;JIF)V

    invoke-virtual {p1, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
