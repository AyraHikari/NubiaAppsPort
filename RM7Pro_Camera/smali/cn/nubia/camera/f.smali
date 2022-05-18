.class public Lcn/nubia/camera/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/f$a;,
        Lcn/nubia/camera/f$b;
    }
.end annotation


# instance fields
.field a:Landroid/hardware/SensorEventListener;

.field b:Landroid/hardware/SensorEventListener;

.field private c:Z

.field private d:Landroid/hardware/SensorManager;

.field private e:Landroid/hardware/Sensor;

.field private f:Landroid/hardware/Sensor;

.field private g:Z

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:[F

.field private m:[F

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DebugSensor"

    const/4 v1, 0x3

    .line 23
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/f;->c:Z

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/f;->f:Landroid/hardware/Sensor;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/f;->g:Z

    .line 28
    iput-boolean v0, p0, Lcn/nubia/camera/f;->h:Z

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/nubia/camera/f;->i:F

    .line 30
    iput v0, p0, Lcn/nubia/camera/f;->j:F

    .line 31
    iput v0, p0, Lcn/nubia/camera/f;->k:F

    new-array v0, v1, [F

    .line 32
    iput-object v0, p0, Lcn/nubia/camera/f;->l:[F

    new-array v0, v1, [F

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/f;->m:[F

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Lcn/nubia/camera/f$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/f$1;-><init>(Lcn/nubia/camera/f;)V

    iput-object v0, p0, Lcn/nubia/camera/f;->a:Landroid/hardware/SensorEventListener;

    .line 262
    new-instance v0, Lcn/nubia/camera/f$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/f$2;-><init>(Lcn/nubia/camera/f;)V

    iput-object v0, p0, Lcn/nubia/camera/f;->b:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/f;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/camera/f;->j:F

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/f;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcn/nubia/camera/f;->j:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/f;[F)[F
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/f;->l:[F

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/f;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/nubia/camera/f;->i:F

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/f;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcn/nubia/camera/f;->i:F

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/f;[F)[F
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/camera/f;->m:[F

    return-object p1
.end method

.method static synthetic c(Lcn/nubia/camera/f;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcn/nubia/camera/f;->c:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/f;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/nubia/camera/f;->i()V

    return-void
.end method

.method private e()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    const-string v1, "GradienterCompassSensorManager"

    if-nez v0, :cond_0

    const-string v0, "not init or release!"

    .line 85
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/camera/f;->h:Z

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcn/nubia/camera/f;->a:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcn/nubia/camera/f;->f:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAccelerometerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcn/nubia/camera/f;->h:Z

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    const-string v1, "GradienterCompassSensorManager"

    if-nez v0, :cond_0

    const-string v0, "not init or release!"

    .line 99
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/f;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "stopAccelerometerSensor"

    .line 103
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/camera/f;->a:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/camera/f;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcn/nubia/camera/f;->h:Z

    :cond_1
    return-void
.end method

.method private g()V
    .locals 5

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    const-string v1, "GradienterCompassSensorManager"

    if-nez v0, :cond_0

    const-string v0, "startMagneticSensor  mSensorManager not init or release!"

    .line 111
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/camera/f;->g:Z

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Lcn/nubia/camera/f;->b:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcn/nubia/camera/f;->e:Landroid/hardware/Sensor;

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMagneticSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcn/nubia/camera/f;->g:Z

    :cond_1
    return-void
.end method

.method private h()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    const-string v1, "GradienterCompassSensorManager"

    if-nez v0, :cond_0

    const-string v0, "stopMagneticSensor :not init or release!"

    .line 125
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/f;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "stopMagneticSensor"

    .line 129
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/camera/f;->b:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/camera/f;->e:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcn/nubia/camera/f;->g:Z

    :cond_1
    return-void
.end method

.method private i()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 209
    iget-object v2, p0, Lcn/nubia/camera/f;->l:[F

    iget-object v3, p0, Lcn/nubia/camera/f;->m:[F

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 211
    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v1, 0x0

    .line 212
    aget v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 214
    aget v2, v0, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    if-gez v2, :cond_0

    .line 215
    aget v2, v0, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 217
    :cond_0
    aget v0, v0, v1

    sub-float/2addr v3, v0

    invoke-virtual {p0, v3}, Lcn/nubia/camera/f;->c(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "GradienterCompassSensorManager"

    const-string v1, "release"

    .line 73
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcn/nubia/camera/f;->f()V

    .line 75
    invoke-direct {p0}, Lcn/nubia/camera/f;->h()V

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcn/nubia/camera/f;->e:Landroid/hardware/Sensor;

    .line 79
    iput-object v0, p0, Lcn/nubia/camera/f;->f:Landroid/hardware/Sensor;

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/f$b;

    if-eqz v1, :cond_0

    .line 172
    invoke-interface {v1, p1}, Lcn/nubia/camera/f$b;->b(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    const-string v0, "GradienterCompassSensorManager"

    const-string v1, "init"

    .line 59
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sensor"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/f;->f:Landroid/hardware/Sensor;

    .line 62
    iget-object p1, p0, Lcn/nubia/camera/f;->d:Landroid/hardware/SensorManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/f;->e:Landroid/hardware/Sensor;

    .line 63
    iget-object p1, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    invoke-direct {p0}, Lcn/nubia/camera/f;->e()V

    .line 66
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    invoke-direct {p0}, Lcn/nubia/camera/f;->g()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/f$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GradienterCompassSensorManager"

    const-string v1, "addCompassListener"

    .line 154
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0}, Lcn/nubia/camera/f;->g()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/f$b;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GradienterCompassSensorManager"

    const-string v1, "addOrientationListener"

    .line 137
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0}, Lcn/nubia/camera/f;->e()V

    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .line 194
    iget v0, p0, Lcn/nubia/camera/f;->i:F

    return v0
.end method

.method public b(F)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/f$b;

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1, p1}, Lcn/nubia/camera/f$b;->c(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcn/nubia/camera/f$a;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GradienterCompassSensorManager"

    const-string v0, "removeCompassListener"

    .line 162
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcn/nubia/camera/f;->h()V

    :cond_0
    return-void
.end method

.method public b(Lcn/nubia/camera/f$b;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GradienterCompassSensorManager"

    const-string v0, "removeOrientationListener"

    .line 145
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcn/nubia/camera/f;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcn/nubia/camera/f;->f()V

    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    .line 198
    iget v0, p0, Lcn/nubia/camera/f;->j:F

    return v0
.end method

.method public c(F)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/f$a;

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1, p1}, Lcn/nubia/camera/f$a;->a(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()F
    .locals 1

    .line 202
    iget v0, p0, Lcn/nubia/camera/f;->k:F

    return v0
.end method
