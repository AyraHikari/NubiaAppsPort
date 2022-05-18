.class Lcom/android/common/ui/shutterbutton/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnimationUtil"

    .line 15
    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/a;->a:Ljava/lang/String;

    .line 16
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/a;->b:Landroid/graphics/Path;

    return-void
.end method

.method public static a(FII)F
    .locals 0

    int-to-float p1, p1

    div-float/2addr p1, p0

    int-to-float p2, p2

    div-float/2addr p2, p0

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    int-to-float p1, p1

    .line 41
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 45
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    const/4 v0, 0x1

    .line 44
    invoke-static {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;II)Z
    .locals 1

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ge p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(II)Landroid/graphics/Path;
    .locals 4

    .line 20
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/a;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 21
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/a;->b:Landroid/graphics/Path;

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v3, p2

    div-float/2addr v3, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f580000    # 0.84375f

    mul-float/2addr p1, p2

    div-float/2addr p1, v2

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 22
    iget-object p1, p0, Lcom/android/common/ui/shutterbutton/a;->b:Landroid/graphics/Path;

    return-object p1
.end method
