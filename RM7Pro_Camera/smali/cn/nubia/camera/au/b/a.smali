.class public Lcn/nubia/camera/au/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/au/b/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/nubia/e/a;

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/location/LocationManager;

.field private final e:[F

.field private final f:[F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcn/nubia/camera/au/b/a$a;

.field private final o:Landroid/hardware/SensorEventListener;

.field private final p:Landroid/hardware/SensorEventListener;

.field private final q:Landroid/location/LocationListener;

.field private final r:Landroid/location/GnssStatus$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->a:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    .line 42
    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->c:Landroid/hardware/SensorManager;

    .line 43
    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 44
    iput-object v2, p0, Lcn/nubia/camera/au/b/a;->e:[F

    new-array v1, v1, [F

    .line 45
    iput-object v1, p0, Lcn/nubia/camera/au/b/a;->f:[F

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcn/nubia/camera/au/b/a;->g:F

    .line 47
    iput v1, p0, Lcn/nubia/camera/au/b/a;->h:F

    .line 48
    iput v1, p0, Lcn/nubia/camera/au/b/a;->i:F

    .line 49
    iput v1, p0, Lcn/nubia/camera/au/b/a;->j:F

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcn/nubia/camera/au/b/a;->k:Z

    .line 51
    iput-boolean v1, p0, Lcn/nubia/camera/au/b/a;->l:Z

    .line 52
    iput-boolean v1, p0, Lcn/nubia/camera/au/b/a;->m:Z

    .line 53
    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->n:Lcn/nubia/camera/au/b/a$a;

    .line 59
    new-instance v0, Lcn/nubia/camera/au/b/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/b/a$1;-><init>(Lcn/nubia/camera/au/b/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->o:Landroid/hardware/SensorEventListener;

    .line 74
    new-instance v0, Lcn/nubia/camera/au/b/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/b/a$2;-><init>(Lcn/nubia/camera/au/b/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->p:Landroid/hardware/SensorEventListener;

    .line 89
    new-instance v0, Lcn/nubia/camera/au/b/a$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/b/a$3;-><init>(Lcn/nubia/camera/au/b/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->q:Landroid/location/LocationListener;

    .line 100
    new-instance v0, Lcn/nubia/camera/au/b/a$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/au/b/a$4;-><init>(Lcn/nubia/camera/au/b/a;)V

    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->r:Landroid/location/GnssStatus$Callback;

    .line 129
    iput-object p1, p0, Lcn/nubia/camera/au/b/a;->a:Landroid/content/Context;

    .line 130
    new-instance v0, Lcn/nubia/e/b;

    invoke-direct {v0, p1}, Lcn/nubia/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/au/b/a;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcn/nubia/camera/au/b/a;->g:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/au/b/a;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcn/nubia/camera/au/b/a;->k:Z

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/au/b/a;)[F
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/au/b/a;->e:[F

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/au/b/a;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcn/nubia/camera/au/b/a;->h:F

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/au/b/a;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcn/nubia/camera/au/b/a;->i()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/au/b/a;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcn/nubia/camera/au/b/a;->l:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/au/b/a;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcn/nubia/camera/au/b/a;->i:F

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/au/b/a;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcn/nubia/camera/au/b/a;->m:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/au/b/a;)[F
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/camera/au/b/a;->f:[F

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->n:Lcn/nubia/camera/au/b/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/camera/au/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->n:Lcn/nubia/camera/au/b/a$a;

    invoke-interface {v0}, Lcn/nubia/camera/au/b/a$a;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-string v0, "SensorInfoManager"

    const-string v1, "start"

    .line 135
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->a:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->c:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->o:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->c:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->p:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    const-string v2, "gps"

    .line 148
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/nubia/camera/au/b/a;->q:Landroid/location/LocationListener;

    const-string v3, "gps"

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->r:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    .line 156
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    invoke-interface {v0, v1}, Lcn/nubia/e/a;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "SensorInfoManager"

    const-string v1, "stop"

    .line 160
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->c:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->o:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->c:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->p:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 164
    iput-object v1, p0, Lcn/nubia/camera/au/b/a;->c:Landroid/hardware/SensorManager;

    .line 166
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 167
    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->q:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    iget-object v2, p0, Lcn/nubia/camera/au/b/a;->r:Landroid/location/GnssStatus$Callback;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    .line 169
    iput-object v1, p0, Lcn/nubia/camera/au/b/a;->d:Landroid/location/LocationManager;

    .line 172
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/e/a;->a(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcn/nubia/camera/au/b/a;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/au/b/a;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/au/b/a;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()[F
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->e:[F

    return-object v0
.end method

.method public e()[F
    .locals 1

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->f:[F

    return-object v0
.end method

.method public f()F
    .locals 2

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 202
    :cond_0
    iget v0, p0, Lcn/nubia/camera/au/b/a;->g:F

    return v0
.end method

.method public g()F
    .locals 2

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 210
    :cond_0
    iget v0, p0, Lcn/nubia/camera/au/b/a;->h:F

    return v0
.end method

.method public h()F
    .locals 9

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/au/b/a;->b:Lcn/nubia/e/a;

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v6, Landroid/hardware/GeomagneticField;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    double-to-float v3, v7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v6}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    return v0

    .line 227
    :cond_0
    new-instance v6, Landroid/hardware/GeomagneticField;

    iget v1, p0, Lcn/nubia/camera/au/b/a;->g:F

    iget v2, p0, Lcn/nubia/camera/au/b/a;->h:F

    iget v3, p0, Lcn/nubia/camera/au/b/a;->i:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v6}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    return v0
.end method
