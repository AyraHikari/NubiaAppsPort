.class public Lcn/nubia/gallery3d/app/EyePosition;
.super Ljava/lang/Object;
.source "EyePosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/EyePosition$PositionListener;,
        Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;
    }
.end annotation


# static fields
.field private static final GYROSCOPE_LIMIT:F = 10.0f

.field private static final GYROSCOPE_RESTORE_FACTOR:F = 0.995f

.field private static final GYROSCOPE_SETTLE_DOWN:I = 0xf

.field private static final GYROSCOPE_THRESHOLD:F = 0.15f

.field private static final MAX_VIEW_RANGE:F = 0.5f

.field private static final NOT_STARTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "EyePosition"

.field private static final USER_ANGEL:F

.field private static final USER_ANGEL_COS:F

.field private static final USER_ANGEL_SIN:F

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mGyroscopeCountdown:I

.field private final mLimit:F

.field private mListener:Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;

.field private mPositionListener:Lcn/nubia/gallery3d/app/EyePosition$PositionListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mStartTime:J

.field private final mUserDistance:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/nubia/gallery3d/app/EyePosition;->USER_ANGEL:F

    float-to-double v1, v0

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    sput v1, Lcn/nubia/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    float-to-double v0, v0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcn/nubia/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 63
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mStartTime:J

    .line 65
    new-instance v0, Lcn/nubia/gallery3d/app/EyePosition$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/gallery3d/app/EyePosition$PositionListener;-><init>(Lcn/nubia/gallery3d/app/EyePosition;Lcn/nubia/gallery3d/app/EyePosition$1;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mPositionListener:Lcn/nubia/gallery3d/app/EyePosition$PositionListener;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 70
    iput-object p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mListener:Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;

    const p1, 0x3e99999a    # 0.3f

    .line 72
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    .line 73
    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mLimit:F

    .line 75
    iget-object p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string p2, "window"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 77
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/EyePosition;FFF)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/app/EyePosition;->onGyroscopeChanged(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/EyePosition;FFF)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/app/EyePosition;->onAccelerometerChanged(FFF)V

    return-void
.end method

.method private onAccelerometerChanged(FFF)V
    .locals 8

    .line 116
    iget-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    neg-float p1, p1

    goto :goto_0

    :cond_1
    neg-float p1, p1

    neg-float p2, p2

    goto :goto_1

    :cond_2
    neg-float p2, p2

    :goto_0
    move v7, p2

    move p2, p1

    move p1, v7

    :goto_1
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    neg-float v1, p2

    div-float/2addr v1, v0

    mul-float v2, v1, p1

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v4, v1, p2

    add-float/2addr v4, v3

    mul-float/2addr v1, p3

    mul-float p3, v2, v2

    mul-float v3, v4, v4

    add-float/2addr p3, v3

    mul-float/2addr v1, v1

    add-float/2addr p3, v1

    float-to-double v5, p3

    .line 129
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float p3, v5

    float-to-double v0, v0

    .line 130
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 132
    sget v1, Lcn/nubia/gallery3d/app/EyePosition;->USER_ANGEL_COS:F

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    sget v3, Lcn/nubia/gallery3d/app/EyePosition;->USER_ANGEL_SIN:F

    mul-float/2addr v2, v3

    div-float/2addr v2, p3

    add-float/2addr p1, v2

    iget v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr p1, v2

    iget v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mLimit:F

    neg-float v5, v2

    invoke-static {p1, v5, v2}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    mul-float/2addr p2, v1

    div-float/2addr p2, v0

    mul-float/2addr v4, v3

    div-float/2addr v4, p3

    add-float/2addr p2, v4

    .line 135
    iget p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr p2, p1

    iget p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mLimit:F

    neg-float p3, p1

    invoke-static {p2, p3, p1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    neg-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    .line 138
    iget p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr p2, p2

    iget p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    mul-float/2addr p3, p3

    sub-float/2addr p2, p3

    mul-float/2addr p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    neg-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    .line 140
    iget-object p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mListener:Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;

    iget p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    iget v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    invoke-interface {p2, p3, v0, p1}, Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    return-void
.end method

.method private onGyroscopeChanged(FFF)V
    .locals 12

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 p3, 0x0

    cmpl-float v2, p1, p3

    if-lez v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    neg-float v2, p1

    :goto_0
    cmpl-float p3, p2, p3

    if-lez p3, :cond_1

    move p3, p2

    goto :goto_1

    :cond_1
    neg-float p3, p2

    :goto_1
    add-float/2addr v2, p3

    const p3, 0x3e19999a    # 0.15f

    cmpg-float p3, v2, p3

    const/4 v3, 0x1

    const v4, 0x3f7eb852    # 0.995f

    if-ltz p3, :cond_6

    const/high16 p3, 0x41200000    # 10.0f

    cmpl-float p3, v2, p3

    if-gtz p3, :cond_6

    .line 146
    iget p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    if-lez p3, :cond_2

    goto/16 :goto_3

    .line 161
    :cond_2
    iget-wide v5, p0, Lcn/nubia/gallery3d/app/EyePosition;->mStartTime:J

    sub-long v5, v0, v5

    long-to-float p3, v5

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p3, v2

    iget v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr p3, v2

    iget v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    neg-float v2, v2

    mul-float/2addr p3, v2

    .line 162
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mStartTime:J

    neg-float v0, p2

    neg-float v1, p1

    .line 165
    iget-object v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p2, 0x3

    if-eq v2, p2, :cond_3

    move p1, v0

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    move v11, p2

    move p2, p1

    move p1, v11

    goto :goto_2

    :cond_5
    move p1, v1

    .line 171
    :goto_2
    iget v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    float-to-double v1, v0

    mul-float/2addr p1, p3

    float-to-double v5, p1

    iget p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    float-to-double v7, p1

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    double-to-float p1, v1

    iget v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mLimit:F

    neg-float v1, v0

    invoke-static {p1, v1, v0}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    mul-float/2addr p1, v4

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    .line 173
    iget p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    float-to-double v0, p1

    mul-float/2addr p2, p3

    float-to-double p2, p2

    iget v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    float-to-double v2, v2

    float-to-double v5, p1

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr p2, v2

    add-double/2addr v0, p2

    double-to-float p1, v0

    iget p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mLimit:F

    neg-float p3, p2

    invoke-static {p1, p3, p2}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    mul-float/2addr p1, v4

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    .line 176
    iget p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    mul-float/2addr p2, p2

    iget p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    mul-float/2addr p3, p3

    sub-float/2addr p2, p3

    mul-float/2addr p1, p1

    sub-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    neg-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    .line 178
    iget-object p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mListener:Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;

    iget p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    iget v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    invoke-interface {p2, p3, v0, p1}, Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    return-void

    .line 148
    :cond_6
    :goto_3
    iget p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    .line 149
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mStartTime:J

    .line 150
    iget p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    const/high16 p2, 0x41a00000    # 20.0f

    div-float p2, p1, p2

    .line 151
    iget p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    cmpl-float v0, p3, p2

    if-gtz v0, :cond_7

    neg-float v0, p2

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_7

    iget v1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    cmpl-float p2, v1, p2

    if-gtz p2, :cond_7

    cmpg-float p2, v1, v0

    if-gez p2, :cond_8

    :cond_7
    mul-float/2addr p3, v4

    .line 152
    iput p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    .line 153
    iget p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    mul-float/2addr p2, v4

    iput p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    mul-float/2addr p1, p1

    mul-float/2addr p3, p3

    sub-float/2addr p1, p3

    mul-float/2addr p2, p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 154
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    neg-double p1, p1

    double-to-float p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    .line 156
    iget-object p2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mListener:Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;

    iget p3, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    iget v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    invoke-interface {p2, p3, v0, p1}, Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    :cond_8
    return-void
.end method


# virtual methods
.method public pause()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 204
    iget-object v1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mPositionListener:Lcn/nubia/gallery3d/app/EyePosition$PositionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public resetPosition()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mStartTime:J

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    iput v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    .line 98
    iget v1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    neg-float v1, v1

    iput v1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    .line 99
    iget-object v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mListener:Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;

    invoke-interface {v2, v0, v0, v1}, Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    return-void
.end method

.method public resume()V
    .locals 4

    .line 209
    iget-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 212
    iget-object v1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mPositionListener:Lcn/nubia/gallery3d/app/EyePosition$PositionListener;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    const-wide/16 v0, -0x1

    .line 216
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mStartTime:J

    const/16 v0, 0xf

    .line 217
    iput v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mGyroscopeCountdown:I

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mY:F

    iput v0, p0, Lcn/nubia/gallery3d/app/EyePosition;->mX:F

    .line 219
    iget v1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mUserDistance:F

    neg-float v1, v1

    iput v1, p0, Lcn/nubia/gallery3d/app/EyePosition;->mZ:F

    .line 220
    iget-object v2, p0, Lcn/nubia/gallery3d/app/EyePosition;->mListener:Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;

    invoke-interface {v2, v0, v0, v1}, Lcn/nubia/gallery3d/app/EyePosition$EyePositionListener;->onEyePositionChanged(FFF)V

    return-void
.end method
