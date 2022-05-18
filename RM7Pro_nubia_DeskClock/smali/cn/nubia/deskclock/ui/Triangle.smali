.class public Lcn/nubia/deskclock/ui/Triangle;
.super Ljava/lang/Object;
.source "Triangle.java"


# static fields
.field public static final BASE_HEIGHT:F = 62.0f

.field private static INTERVAL_VALUE:F = 0.0f

.field public static final SWEEP_ANGLE:F = 3.0f

.field private static final TRIANGLE_WIDTH:F = 17.0f

.field public static sCanvasHeight:F

.field public static sCanvasWidth:F


# instance fields
.field public final INIT_HEIGHT:F

.field private RADIUS:F

.field private TRIANGLE_HEIGHT:F

.field private mColor:I

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    return-void
.end method

.method public constructor <init>(FIFF)V
    .locals 6
    .param p1, "height"    # F
    .param p2, "color"    # I
    .param p3, "radiuo"    # F
    .param p4, "intervalValue"    # F

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/high16 v0, 0x43a10000    # 322.0f

    iput v0, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/deskclock/ui/Triangle;->TRIANGLE_HEIGHT:F

    .line 27
    iput p1, p0, Lcn/nubia/deskclock/ui/Triangle;->mHeight:F

    .line 28
    iput p2, p0, Lcn/nubia/deskclock/ui/Triangle;->mColor:I

    .line 29
    iput p1, p0, Lcn/nubia/deskclock/ui/Triangle;->INIT_HEIGHT:F

    .line 30
    iput p3, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    .line 31
    const-string v0, "ljf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triangle: RADIUS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget v0, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    iget v1, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4021000000000000L    # 8.5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/deskclock/ui/Triangle;->TRIANGLE_HEIGHT:F

    .line 33
    sput p4, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    .line 34
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/Triangle;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/Triangle;->mPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcn/nubia/deskclock/ui/Triangle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcn/nubia/deskclock/ui/Triangle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcn/nubia/deskclock/ui/Triangle;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/deskclock/ui/Triangle;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x41080000    # 8.5f

    const/high16 v4, 0x40000000    # 2.0f

    .line 46
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 47
    .local v0, "path":Landroid/graphics/Path;
    sget v1, Lcn/nubia/deskclock/ui/Triangle;->sCanvasWidth:F

    div-float/2addr v1, v4

    sget v2, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    iget v3, p0, Lcn/nubia/deskclock/ui/Triangle;->TRIANGLE_HEIGHT:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/Triangle;->mHeight:F

    add-float/2addr v2, v3

    sget v3, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 48
    sget v1, Lcn/nubia/deskclock/ui/Triangle;->sCanvasWidth:F

    div-float/2addr v1, v4

    sub-float/2addr v1, v5

    sget v2, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    iget v3, p0, Lcn/nubia/deskclock/ui/Triangle;->TRIANGLE_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 49
    sget v1, Lcn/nubia/deskclock/ui/Triangle;->sCanvasWidth:F

    div-float/2addr v1, v4

    add-float/2addr v1, v5

    sget v2, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    iget v3, p0, Lcn/nubia/deskclock/ui/Triangle;->TRIANGLE_HEIGHT:F

    sub-float/2addr v2, v3

    sget v3, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    sget v1, Lcn/nubia/deskclock/ui/Triangle;->sCanvasWidth:F

    div-float/2addr v1, v4

    sget v2, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/deskclock/ui/Triangle;->RADIUS:F

    iget v3, p0, Lcn/nubia/deskclock/ui/Triangle;->TRIANGLE_HEIGHT:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/deskclock/ui/Triangle;->mHeight:F

    add-float/2addr v2, v3

    sget v3, Lcn/nubia/deskclock/ui/Triangle;->INTERVAL_VALUE:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v1, p0, Lcn/nubia/deskclock/ui/Triangle;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 57
    iput p1, p0, Lcn/nubia/deskclock/ui/Triangle;->mHeight:F

    .line 58
    return-void
.end method
