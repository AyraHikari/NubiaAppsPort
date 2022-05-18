.class public Lcn/nubia/image3d/GyroscopeSensor;
.super Ljava/lang/Object;
.source "GyroscopeSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;
    }
.end annotation


# static fields
.field private static final NS2S:F = 1.0E-9f

.field private static final NS2S_RAD2DEG:F = 5.729578E-8f

.field private static final RAD2DEG:F = 57.29578f

.field private static final SENSOR_OMEGA_MAGNITUDE:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "GyroscopeSensor"


# instance fields
.field private mIsOpened:Z

.field private mListener:Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorCallbackLevel:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorOmegaMagnitude:F

.field private mTimestamp:J

.field private mTotalX:F

.field private mTotalY:F

.field private mTotalZ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorCallbackLevel:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 34
    iput-object v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensor:Landroid/hardware/Sensor;

    .line 35
    iput-object v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mListener:Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;

    const v0, 0x3e99999a    # 0.3f

    .line 37
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorOmegaMagnitude:F

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalX:F

    .line 39
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalY:F

    .line 40
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalZ:F

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTimestamp:J

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mIsOpened:Z

    const-string v0, "sensor"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 46
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalX:F

    .line 81
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalY:F

    .line 82
    iput v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalZ:F

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public closeSensor()V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mIsOpened:Z

    if-eqz v0, :cond_0

    const-string v0, "GyroscopeSensor"

    const-string v1, "closeGyroscopeSensor"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mIsOpened:Z

    .line 75
    invoke-direct {p0}, Lcn/nubia/image3d/GyroscopeSensor;->reset()V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    .line 95
    iget-wide v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 97
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 98
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 101
    iget v4, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorOmegaMagnitude:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 102
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v5, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTimestamp:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v0, v3

    const v4, 0x33761560

    mul-float/2addr v0, v4

    const/4 v5, 0x0

    add-float v7, v0, v5

    mul-float/2addr v1, v3

    mul-float/2addr v1, v4

    add-float v9, v1, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    add-float v11, v2, v5

    .line 109
    iget v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalX:F

    add-float v8, v0, v7

    iput v8, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalX:F

    .line 110
    iget v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalY:F

    add-float v10, v0, v9

    iput v10, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalY:F

    .line 111
    iget v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalZ:F

    add-float v12, v0, v11

    iput v12, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTotalZ:F

    .line 112
    iget-object v6, p0, Lcn/nubia/image3d/GyroscopeSensor;->mListener:Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;

    if-eqz v6, :cond_0

    .line 113
    invoke-interface/range {v6 .. v12}, Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;->onGyroscopeSensorChanged(FFFFFF)V

    .line 117
    :cond_0
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mTimestamp:J

    return-void
.end method

.method public openSensor()V
    .locals 3

    .line 63
    iget-boolean v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mIsOpened:Z

    if-nez v0, :cond_0

    const-string v0, "GyroscopeSensor"

    const-string v1, "openGyroscopeSensor"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorCallbackLevel:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcn/nubia/image3d/GyroscopeSensor;->mIsOpened:Z

    :cond_0
    return-void
.end method

.method public setListener(Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/image3d/GyroscopeSensor;->mListener:Lcn/nubia/image3d/GyroscopeSensor$GyroscopeSensorListener;

    return-void
.end method

.method public setSensorCallbackLevel(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorCallbackLevel:I

    return-void
.end method

.method public setSensorEventOmegaMagnitude(F)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSensorEventOmegaMagnitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyroscopeSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput p1, p0, Lcn/nubia/image3d/GyroscopeSensor;->mSensorOmegaMagnitude:F

    return-void
.end method
