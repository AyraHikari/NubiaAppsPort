.class Lcn/nubia/camera/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/f;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AccelerometerSensor onAccuracyChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GradienterCompassSensorManager"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Lcn/nubia/camera/f;->a(Lcn/nubia/camera/f;[F)[F

    .line 231
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v4

    mul-float/2addr v0, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v6

    mul-float/2addr v5, v7

    add-float/2addr v0, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v1

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v1

    mul-float/2addr v5, v7

    add-float/2addr v0, v5

    float-to-double v7, v0

    .line 232
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v2, v7

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 233
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 234
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v7, 0x4076800000000000L    # 360.0

    mul-double/2addr v2, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v11

    double-to-float v0, v2

    .line 235
    iget-object v2, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v2, v0}, Lcn/nubia/camera/f;->a(Lcn/nubia/camera/f;F)F

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v0}, Lcn/nubia/camera/f;->a(Lcn/nubia/camera/f;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/f;->b(F)V

    .line 239
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    div-double/2addr v2, v9

    div-double/2addr v2, v11

    :goto_0
    double-to-float v2, v2

    goto/16 :goto_2

    .line 241
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 242
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    div-double/2addr v2, v9

    div-double/2addr v2, v11

    const-wide v7, 0x4056800000000000L    # 90.0

    :goto_1
    add-double/2addr v2, v7

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 244
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    div-double/2addr v2, v9

    div-double/2addr v2, v11

    const-wide v7, 0x4066800000000000L    # 180.0

    goto :goto_1

    .line 245
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 246
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    div-double/2addr v2, v9

    div-double/2addr v2, v11

    const-wide v7, 0x4070e00000000000L    # 270.0

    goto :goto_1

    .line 249
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v0}, Lcn/nubia/camera/f;->a(Lcn/nubia/camera/f;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v7, v0

    const-wide v9, 0x405639999999999aL    # 88.9

    cmpg-double v0, v7, v9

    if-gtz v0, :cond_4

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v0, v2}, Lcn/nubia/camera/f;->b(Lcn/nubia/camera/f;F)F

    .line 252
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v0}, Lcn/nubia/camera/f;->b(Lcn/nubia/camera/f;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/camera/f;->a(F)V

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v0}, Lcn/nubia/camera/f;->c(Lcn/nubia/camera/f;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccelerometerSensor onSensorChanged values:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GradienterCompassSensorManager"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "degreeOfZ "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v1}, Lcn/nubia/camera/f;->b(Lcn/nubia/camera/f;)F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "degreeOfXY "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/f$1;->a:Lcn/nubia/camera/f;

    invoke-static {v1}, Lcn/nubia/camera/f;->a(Lcn/nubia/camera/f;)F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
