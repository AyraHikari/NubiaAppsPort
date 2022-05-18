.class Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$a;->a:Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$1;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$a;-><init>(Lcn/nubia/camera/dualcameracalibration/DualCalibrationService;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    .line 290
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 291
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-long p1, p1

    mul-long/2addr v2, p1

    sub-long/2addr v0, v2

    .line 290
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 286
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/dualcameracalibration/DualCalibrationService$a;->a(Landroid/util/Size;Landroid/util/Size;)I

    move-result p1

    return p1
.end method
