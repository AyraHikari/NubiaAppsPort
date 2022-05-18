.class public Lcn/nubia/nubiaimage3d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/nubiaimage3d/c$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/hardware/Sensor;

.field private e:Lcn/nubia/nubiaimage3d/c$a;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:J

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->b:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/c;->c:Landroid/hardware/SensorManager;

    .line 44
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/c;->d:Landroid/hardware/Sensor;

    .line 45
    iput-object v0, p0, Lcn/nubia/nubiaimage3d/c;->e:Lcn/nubia/nubiaimage3d/c$a;

    const v0, 0x3ca3d70a    # 0.02f

    .line 47
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->f:F

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->g:F

    .line 49
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->h:F

    .line 50
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->i:F

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcn/nubia/nubiaimage3d/c;->j:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/c;->k:Z

    const-string v0, "GyroscopeSensor"

    const/4 v1, 0x3

    .line 55
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/c;->a:Z

    const-string v0, "sensor"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcn/nubia/nubiaimage3d/c;->c:Landroid/hardware/SensorManager;

    const/4 v0, 0x4

    .line 57
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/nubiaimage3d/c;->d:Landroid/hardware/Sensor;

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->g:F

    .line 92
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->h:F

    .line 93
    iput v0, p0, Lcn/nubia/nubiaimage3d/c;->i:F

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcn/nubia/nubiaimage3d/c;->j:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 74
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/c;->k:Z

    if-nez v0, :cond_0

    const-string v0, "GyroscopeSensor"

    const-string v1, "openGyroscopeSensor"

    .line 75
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/c;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/nubiaimage3d/c;->d:Landroid/hardware/Sensor;

    iget v2, p0, Lcn/nubia/nubiaimage3d/c;->b:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/c;->k:Z

    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .line 69
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

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iput p1, p0, Lcn/nubia/nubiaimage3d/c;->f:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcn/nubia/nubiaimage3d/c;->b:I

    return-void
.end method

.method public a(Lcn/nubia/nubiaimage3d/c$a;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/nubiaimage3d/c;->e:Lcn/nubia/nubiaimage3d/c$a;

    return-void
.end method

.method public b()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/c;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "GyroscopeSensor"

    const-string v1, "closeGyroscopeSensor"

    .line 83
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcn/nubia/nubiaimage3d/c;->c:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcn/nubia/nubiaimage3d/c;->k:Z

    .line 86
    invoke-direct {p0}, Lcn/nubia/nubiaimage3d/c;->c()V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAccuracyChanged accuracy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GyroscopeSensor"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    .line 104
    iget-boolean v0, p0, Lcn/nubia/nubiaimage3d/c;->a:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSensorChanged values ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GyroscopeSensor"

    invoke-static {v4, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-wide v4, p0, Lcn/nubia/nubiaimage3d/c;->j:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    .line 109
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v3, v2

    .line 110
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v1

    mul-float v3, v0, v0

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 111
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 113
    iget v4, p0, Lcn/nubia/nubiaimage3d/c;->f:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 114
    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v5, p0, Lcn/nubia/nubiaimage3d/c;->j:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float/2addr v0, v3

    const v4, 0x33761560

    mul-float/2addr v0, v4

    const/4 v5, 0x0

    add-float v7, v0, v5

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    add-float v9, v2, v5

    mul-float/2addr v1, v3

    mul-float/2addr v1, v4

    add-float v11, v1, v5

    .line 121
    iget v0, p0, Lcn/nubia/nubiaimage3d/c;->g:F

    add-float v8, v0, v7

    iput v8, p0, Lcn/nubia/nubiaimage3d/c;->g:F

    .line 122
    iget v0, p0, Lcn/nubia/nubiaimage3d/c;->h:F

    add-float v10, v0, v9

    iput v10, p0, Lcn/nubia/nubiaimage3d/c;->h:F

    .line 123
    iget v0, p0, Lcn/nubia/nubiaimage3d/c;->i:F

    add-float v12, v0, v11

    iput v12, p0, Lcn/nubia/nubiaimage3d/c;->i:F

    .line 124
    iget-object v6, p0, Lcn/nubia/nubiaimage3d/c;->e:Lcn/nubia/nubiaimage3d/c$a;

    if-eqz v6, :cond_1

    .line 125
    invoke-interface/range {v6 .. v12}, Lcn/nubia/nubiaimage3d/c$a;->a(FFFFFF)V

    .line 129
    :cond_1
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcn/nubia/nubiaimage3d/c;->j:J

    return-void
.end method
