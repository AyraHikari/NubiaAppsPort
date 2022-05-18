.class public final Lcom/loc/g;
.super Ljava/lang/Object;
.source "GpsLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/g$a;
    }
.end annotation


# static fields
.field static j:Lcom/amap/api/location/AMapLocation;

.field static k:J

.field static l:Ljava/lang/Object;

.field static q:J

.field static t:Z

.field static u:Z

.field public static volatile y:Lcom/amap/api/location/AMapLocation;


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:Landroid/location/GpsStatus;

.field private E:Landroid/location/GpsStatus$Listener;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:I

.field private I:Z

.field a:Landroid/os/Handler;

.field b:Landroid/location/LocationManager;

.field c:Lcom/amap/api/location/AMapLocationClientOption;

.field d:J

.field e:Z

.field f:Lcom/loc/dr;

.field g:I

.field h:I

.field i:Lcom/amap/api/location/AMapLocation;

.field m:J

.field n:F

.field o:Ljava/lang/Object;

.field p:Ljava/lang/Object;

.field r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field s:Z

.field v:J

.field w:I

.field x:Landroid/location/LocationListener;

.field private z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v2, Lcom/loc/g;->j:Lcom/amap/api/location/AMapLocation;

    sput-wide v4, Lcom/loc/g;->k:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/loc/g;->l:Ljava/lang/Object;

    sput-wide v4, Lcom/loc/g;->q:J

    sput-boolean v1, Lcom/loc/g;->t:Z

    sput-boolean v1, Lcom/loc/g;->u:Z

    sput-object v2, Lcom/loc/g;->y:Lcom/amap/api/location/AMapLocation;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/loc/g;->A:J

    iput-wide v4, p0, Lcom/loc/g;->d:J

    iput-boolean v1, p0, Lcom/loc/g;->e:Z

    iput v1, p0, Lcom/loc/g;->B:I

    iput-object v2, p0, Lcom/loc/g;->f:Lcom/loc/dr;

    const/16 v0, 0xf0

    iput v0, p0, Lcom/loc/g;->g:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/loc/g;->h:I

    iput-object v2, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/g;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/g;->n:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/g;->o:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/g;->p:Ljava/lang/Object;

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    iput-object v0, p0, Lcom/loc/g;->r:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/g;->s:Z

    iput-wide v4, p0, Lcom/loc/g;->v:J

    iput v1, p0, Lcom/loc/g;->w:I

    iput-object v2, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    iput v1, p0, Lcom/loc/g;->C:I

    iput-object v2, p0, Lcom/loc/g;->D:Landroid/location/GpsStatus;

    new-instance v0, Lcom/loc/g$1;

    invoke-direct {v0, p0}, Lcom/loc/g$1;-><init>(Lcom/loc/g;)V

    iput-object v0, p0, Lcom/loc/g;->E:Landroid/location/GpsStatus$Listener;

    iput-object v2, p0, Lcom/loc/g;->F:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/g;->G:Z

    iput v1, p0, Lcom/loc/g;->H:I

    iput-boolean v1, p0, Lcom/loc/g;->I:Z

    iput-object p1, p0, Lcom/loc/g;->z:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    :try_start_0
    iget-object v0, p0, Lcom/loc/g;->z:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/loc/dr;

    invoke-direct {v0}, Lcom/loc/dr;-><init>()V

    iput-object v0, p0, Lcom/loc/g;->f:Lcom/loc/dr;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "GpsLocation"

    const-string v2, "<init>"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/g;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/loc/g;->D:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic a(Lcom/loc/g;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/loc/g;->D:Landroid/location/GpsStatus;

    return-object p1
.end method

.method private a(IILjava/lang/String;J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    invoke-virtual {v1, p3}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v1, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/loc/g;->b(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/g;->v:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/g;->v:J

    invoke-direct {p0, p1}, Lcom/loc/g;->b(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/g;I)V
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/loc/g;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/g;->C:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/g;Landroid/location/Location;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v0, Lcom/amap/api/location/AMapLocation;

    invoke-direct {v0, p1}, Lcom/amap/api/location/AMapLocation;-><init>(Landroid/location/Location;)V

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    iget-boolean v1, p0, Lcom/loc/g;->e:Z

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/loc/g;->z:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/g;->A:J

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/loc/ej;->a(DD)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/loc/en;->a(Landroid/content/Context;JZ)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loc/g;->e:Z

    :cond_3
    iget v1, p0, Lcom/loc/g;->C:I

    invoke-static {p1, v1}, Lcom/loc/ep;->a(Landroid/location/Location;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setMock(Z)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    iget-object v1, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/loc/g;->w:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0x868

    invoke-static {v1, v2}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v1, "GpsLocation has been mocked!#1501"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GpsLocation"

    const-string v2, "onLocationChanged"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget v0, p0, Lcom/loc/g;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/g;->w:I

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lcom/loc/g;->w:I

    :cond_6
    iget v1, p0, Lcom/loc/g;->C:I

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSatellites(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/loc/ej;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/loc/g;->z:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/location/DPoint;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {v1, v2}, Lcom/loc/el;->a(Landroid/content/Context;Lcom/amap/api/location/DPoint;)Lcom/amap/api/location/DPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v1}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    iget-object v1, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOffset()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    const-string v1, "GCJ02"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    iget v1, p0, Lcom/loc/g;->C:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/loc/ei;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/loc/ei;->t()I

    move-result v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/loc/ek;->a(JJI)J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-eqz v1, :cond_7

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    invoke-static {v2, v3, v4, v5}, Lcom/loc/en;->a(JJ)V

    :cond_7
    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-nez v1, :cond_12

    move-object v1, v0

    :goto_3
    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/g;->d:J

    sget-object v2, Lcom/loc/g;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/g;->k:J

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    sput-object v0, Lcom/loc/g;->j:Lcom/amap/api/location/AMapLocation;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget v0, p0, Lcom/loc/g;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/g;->B:I

    :cond_8
    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    const-wide/16 v6, 0x1f40

    cmp-long v0, v4, v6

    if-lez v0, :cond_9

    iget-wide v4, p0, Lcom/loc/g;->v:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    const-wide/16 v6, 0x1f40

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_b

    :cond_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "lat"

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v2, "lon"

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    iput v0, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/loc/g;->o:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    sget-object v0, Lcom/loc/g;->y:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    :goto_4
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_b
    :try_start_8
    iget-object v2, p0, Lcom/loc/g;->o:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    sget-object v0, Lcom/loc/g;->y:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v1, v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v3

    iget v4, p0, Lcom/loc/g;->g:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    invoke-static {v1, v0}, Lcom/loc/ej;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_c
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/loc/g;->m:J

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0, v1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iput v0, p0, Lcom/loc/g;->n:F

    :cond_d
    iget-object v2, p0, Lcom/loc/g;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v0, 0x0

    :try_start_c
    iput-object v0, p0, Lcom/loc/g;->F:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/g;->G:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/g;->H:I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    :cond_e
    :goto_5
    :try_start_d
    invoke-direct {p0, v1}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocation;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    const-string v1, "WGS84"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setOffset(Z)V

    const-string v1, "WGS84"

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_1

    :cond_10
    :try_start_10
    iget v1, p0, Lcom/loc/g;->C:I

    if-nez v1, :cond_11

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_2

    :cond_12
    :try_start_11
    iget v1, p0, Lcom/loc/g;->B:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_13

    move-object v1, v0

    goto/16 :goto_3

    :cond_13
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_14

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-nez v1, :cond_15

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_15
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v1

    cmpg-float v1, v1, v8

    if-ltz v1, :cond_16

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-nez v1, :cond_17

    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    :cond_17
    iget-object v1, p0, Lcom/loc/g;->f:Lcom/loc/dr;

    invoke-virtual {v1, v0}, Lcom/loc/dr;->a(Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    :cond_18
    :try_start_14
    sget-object v0, Lcom/loc/g;->y:Lcom/amap/api/location/AMapLocation;

    invoke-static {v1, v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iget v4, p0, Lcom/loc/g;->h:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0

    :catchall_2
    move-exception v0

    :try_start_16
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0

    :catchall_3
    move-exception v0

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3

    :catch_3
    move-exception v0

    :try_start_1a
    const-string v2, "GpsLocation"

    const-string v3, "onLocationChangedLast"

    invoke-static {v0, v2, v3}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/loc/g;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/g;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/g;->C:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/location/LocationManager;)Z
    .locals 2

    :try_start_0
    sget-boolean v0, Lcom/loc/g;->t:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/loc/g;->u:Z

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/loc/g;->u:Z

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/g;->t:Z

    sget-boolean v0, Lcom/loc/g;->u:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/g;->u:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/loc/g;->u:Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/loc/ep;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/g;->F:Ljava/lang/String;

    invoke-static {v2}, Lcom/loc/ep;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/loc/g;->F:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/loc/ep;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/g;I)I
    .locals 0

    iput p1, p0, Lcom/loc/g;->C:I

    return p1
.end method

.method private b(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private static e()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UaXNOYXZpU3RhcnRlZA=="

    invoke-static {v2}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/loc/em;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private f()Lcom/amap/api/location/AMapLocation;
    .locals 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/loc/ei;->j()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/loc/g;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KY29tLmFtYXAuYXBpLm5hdmkuQU1hcE5hdmk="

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UZ2V0TmF2aUxvY2F0aW9u"

    invoke-static {v3}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/loc/em;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "time"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-boolean v0, p0, Lcom/loc/g;->I:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/g;->I:Z

    const-string v0, "useNaviLoc"

    const-string v4, "use NaviLoc"

    invoke-static {v0, v4}, Lcom/loc/en;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/16 v8, 0x157c

    cmp-long v0, v4, v8

    if-gtz v0, :cond_3

    const-string v0, "lat"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v0, "lng"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v10

    :try_start_1
    const-string v0, "accuracy"

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v0

    move v4, v0

    :goto_1
    :try_start_2
    const-string v0, "altitude"

    const-wide/16 v12, 0x0

    invoke-virtual {v3, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v12

    :try_start_3
    const-string v0, "bearing"

    const-string v5, "0"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    :goto_2
    :try_start_4
    const-string v5, "speed"

    const-string v14, "0"

    invoke-virtual {v3, v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x42100000    # 36.0f

    div-float/2addr v1, v3

    move v3, v1

    :goto_3
    :try_start_5
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string v5, "lbs"

    invoke-direct {v1, v5}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Lcom/amap/api/location/AMapLocation;->setLocationType(I)V

    invoke-virtual {v1, v8, v9}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {v1, v10, v11}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {v1, v4}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    invoke-virtual {v1, v12, v13}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    invoke-virtual {v1, v3}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    invoke-virtual {v1, v6, v7}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    const-string v5, "GCJ02"

    invoke-virtual {v1, v5}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v1, v5}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v5

    const/high16 v12, 0x43960000    # 300.0f

    cmpg-float v5, v5, v12

    if-gtz v5, :cond_4

    iget-object v5, p0, Lcom/loc/g;->p:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v12, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v12, v10, v11}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    iget-object v10, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v10, v8, v9}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    iget-object v8, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v8, v4}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    iget-object v4, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v4, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0, v6, v7}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    const-string v3, "GCJ02"

    invoke-virtual {v0, v3}, Lcom/amap/api/location/AMapLocation;->setCoordType(Ljava/lang/String;)V

    monitor-exit v5

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v4, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v3

    move v3, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    :cond_3
    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    .locals 12

    const/high16 v11, 0x40a00000    # 5.0f

    const-wide/16 v2, 0x7530

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/g;->f()Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v8}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    move-object p1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    cmpl-float v1, v0, v9

    if-nez v1, :cond_4

    iget-wide v4, p0, Lcom/loc/g;->m:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    iget-wide v4, p0, Lcom/loc/g;->m:J

    const-wide/16 v6, 0x8

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    iget v1, p0, Lcom/loc/g;->n:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_4

    iget v0, p0, Lcom/loc/g;->n:F

    iget-wide v4, p0, Lcom/loc/g;->m:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    :cond_4
    if-eqz p1, :cond_d

    invoke-static {p1}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    const/high16 v4, 0x43480000    # 200.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7

    iget v1, p0, Lcom/loc/g;->H:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loc/g;->H:I

    iget-object v1, p0, Lcom/loc/g;->F:Ljava/lang/String;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/loc/g;->H:I

    if-lt v1, v8, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/loc/g;->G:Z

    :cond_5
    cmpl-float v0, v0, v11

    if-lez v0, :cond_6

    const-wide/16 v0, 0x2710

    :goto_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/g;->d:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_b

    iget-boolean v0, p0, Lcom/loc/g;->G:Z

    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/loc/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v0, 0x3a98

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/loc/g;->F:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-boolean v10, p0, Lcom/loc/g;->G:Z

    iput v10, p0, Lcom/loc/g;->H:I

    :cond_8
    cmpl-float v0, v0, v11

    if-lez v0, :cond_9

    const-wide/16 v0, 0x4e20

    goto :goto_1

    :cond_9
    move-wide v0, v2

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/g;->F:Ljava/lang/String;

    iput v10, p0, Lcom/loc/g;->H:I

    iget-object v1, p0, Lcom/loc/g;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/g;->m:J

    iput v9, p0, Lcom/loc/g;->n:F

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/loc/g;->F:Ljava/lang/String;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/loc/g;->H:I

    if-lt v0, v8, :cond_c

    iput-object p2, p0, Lcom/loc/g;->F:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->clone()Lcom/amap/api/location/AMapLocation;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/amap/api/location/AMapLocation;->setTrustedLevel(I)V

    goto/16 :goto_0

    :cond_d
    move-wide v0, v2

    goto :goto_1
.end method

.method public final a()V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    check-cast v0, Lcom/loc/g$a;

    invoke-virtual {v0}, Lcom/loc/g$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/g;->E:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->E:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/g;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_3
    iput v2, p0, Lcom/loc/g;->C:I

    iput-wide v4, p0, Lcom/loc/g;->A:J

    iput-wide v4, p0, Lcom/loc/g;->v:J

    iput-wide v4, p0, Lcom/loc/g;->d:J

    iput v2, p0, Lcom/loc/g;->B:I

    iput v2, p0, Lcom/loc/g;->w:I

    iget-object v0, p0, Lcom/loc/g;->f:Lcom/loc/dr;

    invoke-virtual {v0}, Lcom/loc/dr;->a()V

    iput-object v3, p0, Lcom/loc/g;->i:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/g;->m:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/g;->n:F

    iput-object v3, p0, Lcom/loc/g;->F:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/g;->I:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/g;->z:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "lagt"

    sget-wide v4, Lcom/loc/g;->q:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/g;->q:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/loc/g;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    sget-object v0, Lcom/loc/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-static {v0}, Lcom/loc/ep;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isMockEnable()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->isMock()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/g;->d:J

    sget-object v0, Lcom/loc/g;->j:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v0}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocation;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/g;->s:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/loc/g;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    :cond_4
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/g;->A:J

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    invoke-static {v0}, Lcom/loc/g;->a(Landroid/location/LocationManager;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_8

    :try_start_2
    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v0

    sget-wide v2, Lcom/loc/g;->q:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "force_xtra_injection"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/g;->q:J

    iget-object v0, p0, Lcom/loc/g;->z:Landroid/content/Context;

    const-string v1, "pref"

    invoke-static {v0, v1}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lagt"

    sget-wide v2, Lcom/loc/g;->q:J

    invoke-static {v0, v1, v2, v3}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    if-nez v0, :cond_6

    new-instance v0, Lcom/loc/g$a;

    invoke-direct {v0, p0}, Lcom/loc/g$a;-><init>(Lcom/loc/g;)V

    iput-object v0, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    :cond_6
    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getDeviceModeDistanceFilter()F

    move-result v4

    iget-object v5, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :goto_3
    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/loc/g;->E:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const/16 v1, 0x8

    const/16 v2, 0xe

    const-string v3, "no enough satellites#1401"

    iget-object v0, p0, Lcom/loc/g;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getHttpTimeOut()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/g;->a(IILjava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/g;->s:Z

    const/16 v1, 0x849

    invoke-static {v8, v1}, Lcom/loc/en;->a(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const/16 v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#1201"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-wide v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/loc/g;->a(IILjava/lang/String;J)V

    goto/16 :goto_1

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x384

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/g;->x:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "GpsLocation"

    const-string v2, "requestLocationUpdates part2"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x8

    const/16 v2, 0xe

    :try_start_5
    const-string v3, "no gps provider#1402"

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/g;->a(IILjava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 4

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/g;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xaf0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    invoke-static {v3}, Lcom/loc/g;->a(Landroid/location/LocationManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/loc/g;->b:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/loc/g;->z:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "location_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/loc/g;->s:Z

    if-nez v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/loc/g;->C:I

    return v0
.end method
