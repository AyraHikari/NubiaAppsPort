.class public Lcn/nubia/camera/k/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/i$a;
    }
.end annotation


# static fields
.field private static final a:D


# instance fields
.field private final b:Lcn/nubia/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcn/nubia/camera/k/i;->a:D

    return-void
.end method

.method public constructor <init>(Lcn/nubia/d/a;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    return-void
.end method

.method private a(Ljava/lang/Double;Ljava/lang/Long;)Lcn/nubia/d/l;
    .locals 5

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 192
    new-instance v0, Lcn/nubia/d/l;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-long v1, v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/nubia/d/l;-><init>(JJ)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 185
    new-instance v0, Lcn/nubia/d/l;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-long v1, p1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/nubia/d/l;-><init>(JJ)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/Long;Ljava/lang/Long;)Lcn/nubia/d/l;
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 178
    new-instance v0, Lcn/nubia/d/l;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcn/nubia/d/l;-><init>(JJ)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcn/nubia/camera/k/i;->a:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 77
    sget v0, Lcn/nubia/d/a;->M:I

    sget v1, Lcn/nubia/d/a;->M:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 172
    iget-object v0, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    const-wide/32 v0, 0x3b9aca00

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 125
    sget v3, Lcn/nubia/d/a;->G:I

    invoke-direct {p0, v2, v0}, Lcn/nubia/camera/k/i;->a(Ljava/lang/Long;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcn/nubia/camera/k/i;->a(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 131
    sget v2, Lcn/nubia/d/a;->U:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/k/i;->a(Ljava/lang/Double;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 135
    :cond_0
    sget v0, Lcn/nubia/d/a;->K:I

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 139
    sget v2, Lcn/nubia/d/a;->H:I

    invoke-direct {p0, v0, v4}, Lcn/nubia/camera/k/i;->a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 150
    sget v2, Lcn/nubia/d/a;->ad:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/k/i;->a(Ljava/lang/Float;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 155
    sget v0, Lcn/nubia/d/a;->ac:I

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Lcn/nubia/d/a;->ac:I

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 161
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    .line 163
    sget p1, Lcn/nubia/d/a;->aD:I

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 165
    :cond_2
    sget p1, Lcn/nubia/d/a;->aD:I

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private a(Lcn/nubia/camera/k/i$a;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v1, Lcn/nubia/d/a;->am:I

    invoke-static {p1}, Lcn/nubia/camera/k/i$a;->a(Lcn/nubia/camera/k/i$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v1, Lcn/nubia/d/a;->an:I

    invoke-static {p1}, Lcn/nubia/camera/k/i$a;->b(Lcn/nubia/camera/k/i$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v1, Lcn/nubia/d/a;->a:I

    invoke-static {p1}, Lcn/nubia/camera/k/i$a;->a(Lcn/nubia/camera/k/i$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v1, Lcn/nubia/d/a;->b:I

    invoke-static {p1}, Lcn/nubia/camera/k/i$a;->b(Lcn/nubia/camera/k/i$a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v1, Lcn/nubia/d/a;->j:I

    .line 113
    invoke-static {p1}, Lcn/nubia/camera/k/i$a;->c(Lcn/nubia/camera/k/i$a;)I

    move-result p1

    invoke-static {p1}, Lcn/nubia/d/a;->d(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    .line 112
    invoke-virtual {v0, v1, p1}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/nubia/d/a;->a(Lcn/nubia/d/h;)Lcn/nubia/d/h;

    return-void
.end method

.method private b()V
    .locals 7

    const-wide/16 v0, 0x3e8

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v4, Lcn/nubia/d/a;->t:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcn/nubia/d/a;->a(IJLjava/util/TimeZone;)Z

    .line 87
    iget-object v3, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v4, Lcn/nubia/d/a;->O:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcn/nubia/d/a;->a(IJLjava/util/TimeZone;)Z

    .line 88
    iget-object v3, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v4, Lcn/nubia/d/a;->N:I

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcn/nubia/d/a;->a(IJLjava/util/TimeZone;)Z

    .line 90
    invoke-static {}, Lcn/nubia/camera/ba/a;->J()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v4, Lcn/nubia/d/a;->P:I

    invoke-virtual {v3, v4, v2}, Lcn/nubia/d/a;->a(ILjava/lang/String;)Z

    .line 92
    iget-object v3, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v4, Lcn/nubia/d/a;->R:I

    invoke-virtual {v3, v4, v2}, Lcn/nubia/d/a;->a(ILjava/lang/String;)Z

    .line 93
    iget-object v3, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    sget v4, Lcn/nubia/d/a;->Q:I

    invoke-virtual {v3, v4, v2}, Lcn/nubia/d/a;->a(ILjava/lang/String;)Z

    .line 95
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    sget v1, Lcn/nubia/d/a;->ah:I

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 98
    sget v1, Lcn/nubia/d/a;->ai:I

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 99
    sget v1, Lcn/nubia/d/a;->aj:I

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 103
    sget v0, Lcn/nubia/d/a;->g:I

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    .line 104
    sget v0, Lcn/nubia/d/a;->h:I

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/nubia/d/a;->a(DD)Z

    .line 65
    iget-object v1, p0, Lcn/nubia/camera/k/i;->b:Lcn/nubia/d/a;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/d/a;->a(J)Z

    .line 67
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 69
    sget p1, Lcn/nubia/d/a;->aU:I

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcn/nubia/camera/k/i;->a(Ljava/lang/Double;Ljava/lang/Long;)Lcn/nubia/d/l;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    const-wide/16 v3, 0x0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 72
    :goto_0
    sget v0, Lcn/nubia/d/a;->aT:I

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/k/i;->a(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/camera/k/i$a;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/nubia/camera/k/i;->a()V

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/k/i;->b()V

    .line 47
    invoke-direct {p0}, Lcn/nubia/camera/k/i;->c()V

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/i;->a(Lcn/nubia/camera/k/i$a;)V

    .line 49
    invoke-direct {p0, p2}, Lcn/nubia/camera/k/i;->a(Landroid/hardware/camera2/CaptureResult;)V

    .line 50
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/k/i;->a(Landroid/location/Location;)V

    return-void
.end method
