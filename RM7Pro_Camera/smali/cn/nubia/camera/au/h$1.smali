.class Lcn/nubia/camera/au/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/h;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcn/nubia/camera/au/h$1;->a:Lcn/nubia/camera/au/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 221
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 222
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 223
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 224
    iget-object v2, p0, Lcn/nubia/camera/au/h$1;->a:Lcn/nubia/camera/au/h;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    invoke-static {v2, v1}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/au/h;I)I

    .line 225
    iget-object p1, p0, Lcn/nubia/camera/au/h$1;->a:Lcn/nubia/camera/au/h;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/au/h;->a(Lcn/nubia/camera/au/h;J)J

    return-void
.end method
