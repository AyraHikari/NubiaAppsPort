.class Lcn/nubia/camera/q/i$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/i;->k(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/i;)V
    .locals 0

    .line 1688
    iput-object p1, p0, Lcn/nubia/camera/q/i$4;->a:Lcn/nubia/camera/q/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    .line 1691
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1692
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1693
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1695
    iget-object p1, p0, Lcn/nubia/camera/q/i$4;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->b(Lcn/nubia/camera/q/i;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1696
    iget-object p1, p0, Lcn/nubia/camera/q/i$4;->a:Lcn/nubia/camera/q/i;

    invoke-static {p1}, Lcn/nubia/camera/q/i;->b(Lcn/nubia/camera/q/i;)Landroid/os/Handler;

    move-result-object p1

    new-instance v7, Lcn/nubia/camera/q/i$a;

    iget-object v2, p0, Lcn/nubia/camera/q/i$4;->a:Lcn/nubia/camera/q/i;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/q/i$a;-><init>(Lcn/nubia/camera/q/i;JII)V

    invoke-virtual {p1, v0, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
