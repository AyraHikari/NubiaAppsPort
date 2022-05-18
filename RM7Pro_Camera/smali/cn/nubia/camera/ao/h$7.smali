.class Lcn/nubia/camera/ao/h$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/h;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcn/nubia/camera/ao/h$7;->a:Lcn/nubia/camera/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 10

    .line 775
    iget-object v0, p0, Lcn/nubia/camera/ao/h$7;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->p(Lcn/nubia/camera/ao/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/h$7;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v1}, Lcn/nubia/camera/ao/h;->q(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 777
    monitor-exit v0

    return-void

    .line 779
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/ao/h$7;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v1}, Lcn/nubia/camera/ao/h;->q(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/n/d;

    move-result-object v1

    .line 780
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 783
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v0, v4

    const/16 v4, 0x64

    div-int/2addr v0, v4

    .line 785
    iget-object v5, p0, Lcn/nubia/camera/ao/h$7;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v5}, Lcn/nubia/camera/ao/h;->d(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ao/m;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ao/m;->i()J

    move-result-wide v5

    int-to-long v7, v0

    mul-long/2addr v2, v7

    .line 786
    div-long v7, v2, v5

    long-to-int v0, v7

    if-ge v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    const v0, 0xc800

    if-le v4, v0, :cond_2

    move v4, v0

    .line 792
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ao/h$7;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->d(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ao/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/x;->n()I

    move-result v0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, v7, :cond_3

    move v0, v8

    goto :goto_1

    :cond_3
    move v0, v9

    .line 793
    :goto_1
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v8, v9

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    if-nez v0, :cond_5

    if-eqz v8, :cond_7

    .line 795
    :cond_5
    sget-wide v7, Lcn/nubia/camera/k/a;->a:J

    cmp-long v0, v5, v7

    if-gtz v0, :cond_7

    sget-wide v7, Lcn/nubia/camera/k/a;->b:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_7

    int-to-long v7, v4

    mul-long/2addr v7, v5

    long-to-float v0, v7

    long-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, v0, p1

    if-lez v2, :cond_6

    float-to-double v2, v0

    .line 801
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    add-float/2addr p1, v0

    :cond_6
    invoke-virtual {v1, p1}, Lcn/nubia/camera/n/d;->a(F)V

    goto :goto_3

    .line 803
    :cond_7
    invoke-virtual {v1, p1}, Lcn/nubia/camera/n/d;->a(F)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 780
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
