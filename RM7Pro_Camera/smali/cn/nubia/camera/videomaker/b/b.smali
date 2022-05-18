.class public Lcn/nubia/camera/videomaker/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:I

.field private static final c:Landroid/graphics/Paint;

.field private static d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcn/nubia/camera/videomaker/b/b;->c:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 64
    sput v0, Lcn/nubia/camera/videomaker/b/b;->a:I

    .line 65
    sput v1, Lcn/nubia/camera/videomaker/b/b;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 67
    sput v0, Lcn/nubia/camera/videomaker/b/b;->d:F

    return-void
.end method

.method public static a(F)F
    .locals 1

    .line 380
    sget v0, Lcn/nubia/camera/videomaker/b/b;->d:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(I)I
    .locals 0

    int-to-float p0, p0

    .line 384
    invoke-static {p0}, Lcn/nubia/camera/videomaker/b/b;->a(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 370
    sget v0, Lcn/nubia/camera/videomaker/b/b;->d:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 371
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 373
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 374
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 375
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcn/nubia/camera/videomaker/b/b;->d:F

    :cond_0
    return-void
.end method
