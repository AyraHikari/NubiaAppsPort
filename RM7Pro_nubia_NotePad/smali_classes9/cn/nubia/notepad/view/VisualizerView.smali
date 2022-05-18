.class public Lcn/nubia/notepad/view/VisualizerView;
.super Landroid/widget/ImageView;
.source "VisualizerView.java"


# instance fields
.field private mForePaint1:Landroid/graphics/Paint;

.field private mForePaint2:Landroid/graphics/Paint;

.field private mPoints:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint1:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint2:Landroid/graphics/Paint;

    .line 21
    invoke-direct {p0}, Lcn/nubia/notepad/view/VisualizerView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint1:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint2:Landroid/graphics/Paint;

    .line 26
    invoke-direct {p0}, Lcn/nubia/notepad/view/VisualizerView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint1:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint2:Landroid/graphics/Paint;

    .line 31
    invoke-direct {p0}, Lcn/nubia/notepad/view/VisualizerView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint1:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint1:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/VisualizerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint2:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public clearLines()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    .line 77
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    iget-object v1, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 85
    :cond_0
    return-void
.end method

.method public updateVisualizer()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcn/nubia/notepad/view/VisualizerView;->invalidate()V

    .line 73
    return-void
.end method

.method public updateVisualizerData([II)V
    .locals 11
    .param p1, "amplitudeArray"    # [I
    .param p2, "scale"    # I

    .prologue
    .line 43
    if-nez p1, :cond_1

    .line 44
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    .line 69
    :cond_0
    return-void

    .line 47
    :cond_1
    array-length v4, p1

    .line 48
    .local v4, "length":I
    invoke-virtual {p0}, Lcn/nubia/notepad/view/VisualizerView;->getMeasuredWidth()I

    move-result v6

    .line 49
    .local v6, "width":I
    div-int v7, v6, v4

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 50
    .local v5, "paintWidth":F
    iget-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint1:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mForePaint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    invoke-virtual {p0}, Lcn/nubia/notepad/view/VisualizerView;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .line 53
    .local v1, "height":I
    int-to-float v7, v6

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    int-to-float v8, v4

    div-float v3, v7, v8

    .line 54
    .local v3, "interval":F
    if-lez v6, :cond_0

    if-lez v1, :cond_0

    .line 55
    iget-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    if-nez v7, :cond_2

    .line 56
    mul-int/lit8 v7, v4, 0x4

    new-array v7, v7, [F

    iput-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    .line 58
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 59
    aget v7, p1, v2

    div-int v0, v7, p2

    .line 60
    .local v0, "amplitude":I
    if-nez v0, :cond_3

    .line 61
    const/4 v0, 0x1

    .line 63
    :cond_3
    iget-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    mul-int/lit8 v8, v2, 0x4

    int-to-float v9, v2

    mul-float/2addr v9, v3

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 64
    iget-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x1

    sub-int v9, v1, v0

    int-to-float v9, v9

    aput v9, v7, v8

    .line 65
    iget-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x2

    iget-object v9, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    mul-int/lit8 v10, v2, 0x4

    aget v9, v9, v10

    aput v9, v7, v8

    .line 66
    iget-object v7, p0, Lcn/nubia/notepad/view/VisualizerView;->mPoints:[F

    mul-int/lit8 v8, v2, 0x4

    add-int/lit8 v8, v8, 0x3

    add-int v9, v1, v0

    int-to-float v9, v9

    aput v9, v7, v8

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
