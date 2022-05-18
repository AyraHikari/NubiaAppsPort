.class public Lcn/nubia/camera/at/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/at/d$a;
    }
.end annotation


# instance fields
.field a:Lcn/nubia/camera/v/d$a;

.field private b:Lcn/nubia/camera/at/g;

.field private c:Lcn/nubia/camera/v/d;

.field private d:Landroid/os/Handler;

.field private e:F

.field private f:I

.field private g:J

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/at/d;->h:Ljava/lang/Integer;

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/at/d;->i:Ljava/lang/Long;

    .line 44
    new-instance v0, Lcn/nubia/camera/at/d$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/at/d$1;-><init>(Lcn/nubia/camera/at/d;)V

    iput-object v0, p0, Lcn/nubia/camera/at/d;->a:Lcn/nubia/camera/v/d$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/at/d;F)F
    .locals 0

    .line 21
    iput p1, p0, Lcn/nubia/camera/at/d;->e:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/at/d;)Lcn/nubia/camera/v/d;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/at/d;->c:Lcn/nubia/camera/v/d;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/at/d;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/camera/at/d;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcn/nubia/camera/at/d;->h:Ljava/lang/Integer;

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/at/d;->i:Ljava/lang/Long;

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/at/d;->b:Lcn/nubia/camera/at/g;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/at/g;->a(IJ)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 86
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 87
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 88
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcn/nubia/camera/at/d;->f:I

    .line 90
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/at/d;->g:J

    return-void
.end method

.method public a(Lcn/nubia/camera/at/g;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/nubia/camera/at/d;->b:Lcn/nubia/camera/at/g;

    return-void
.end method
