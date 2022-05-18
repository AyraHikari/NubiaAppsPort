.class public Lcom/huanju/ssp/base/core/view/AdInnerView;
.super Landroid/widget/FrameLayout;
.source "AdInnerView.java"

# interfaces
.implements Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;
    }
.end annotation


# static fields
.field private static BASE_SDK_VR:Ljava/lang/String;


# instance fields
.field private ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field private customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

.field private h:I

.field private imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

.field private logo:Landroid/graphics/Bitmap;

.field mArcRectF:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field mErrImpTime:[J

.field private mPaint:Landroid/graphics/Paint;

.field public mPrepareListen:Landroid/media/MediaPlayer$OnPreparedListener;

.field private matrixLogo:Landroid/graphics/Bitmap;

.field private mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

.field private onDrawListener:Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSDKVer()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->BASE_SDK_VR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenW"    # I
    .param p3, "screenH"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mErrImpTime:[J

    .line 480
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    .line 81
    iput p2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->w:I

    .line 82
    iput p3, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->h:I

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mContext:Landroid/content/Context;

    .line 87
    const-string v0, "#00ff0000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->setBackgroundColor(I)V

    .line 88
    return-void

    .line 75
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/huanju/ssp/base/core/view/AdInnerView;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/AdInnerView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/view/AdInnerView;)Lcom/huanju/ssp/base/core/view/CustomVideoView;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/AdInnerView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/view/AdInnerView;
    .param p1, "x1"    # D

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getSize(D)I

    move-result v0

    return v0
.end method

.method private getSize(D)I
    .locals 5
    .param p1, "d"    # D

    .prologue
    .line 644
    iget v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->w:I

    int-to-double v0, v0

    const-wide v2, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public drawAdClick(Landroid/graphics/Canvas;Ljava/lang/String;IIIZ)Landroid/graphics/RectF;
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # I
    .param p4, "margin"    # I
    .param p5, "padding"    # I
    .param p6, "isBrand"    # Z

    .prologue
    .line 542
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 543
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 544
    .local v3, "r1":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 545
    .local v0, "bound":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, p3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 546
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 547
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, p2, v8, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, "centerX":F
    const/4 v2, 0x0

    .line 550
    .local v2, "centerY":F
    if-eqz p6, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, p5

    int-to-float v7, v7

    iput v7, v3, Landroid/graphics/RectF;->left:F

    .line 552
    iget v7, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 553
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getHeight()I

    move-result v7

    sub-int/2addr v7, p4

    add-int/lit16 v7, v7, -0x154

    int-to-float v7, v7

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r1.bottom1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 555
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHeight():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "margin:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 557
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 558
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bound.height():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 559
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2 * padding:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, p5, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 560
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r1.top1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 575
    :goto_0
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 577
    int-to-float v7, p3

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float v4, v7, v8

    .line 578
    .local v4, "roundRect":F
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#8e8e8e"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 580
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 581
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 583
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 584
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#99000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 589
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#ffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 590
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 591
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v6, v7, v8

    .line 592
    .local v6, "textY":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v5, v7, v8

    .line 593
    .local v5, "textX":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v7, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 595
    const-wide v8, 0x3fd6666666666666L    # 0.35

    invoke-direct {p0, v8, v9}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getSize(D)I

    move-result v7

    invoke-static {p0, v3, v7}, Lcom/huanju/ssp/base/utils/DrawableUtils;->getArea(Landroid/view/View;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v7

    return-object v7

    .line 562
    .end local v4    # "roundRect":F
    .end local v5    # "textX":F
    .end local v6    # "textY":F
    :cond_0
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v7, p5

    int-to-float v7, v7

    iput v7, v3, Landroid/graphics/RectF;->left:F

    .line 563
    iget v7, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 564
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getHeight()I

    move-result v7

    sub-int/2addr v7, p4

    int-to-float v7, v7

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 565
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r1.bottom2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getHeight()2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 567
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "margin2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 568
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bound.height()2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 570
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2 * padding2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, p5, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "r1.top2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public drawAdLogo(Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scale"    # F

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 422
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v0, :cond_1

    .line 425
    const-string v0, "ad == null"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lg_swh"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    const-string v0, "logo switch  ==  false"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 454
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 456
    .local v5, "matrix":Landroid/graphics/Matrix;
    sget-object v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->BASE_SDK_VR:Ljava/lang/String;

    const-string v1, "1.3.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 457
    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDpi()F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    invoke-static {}, Lcom/huanju/ssp/base/core/common/Config;->getDpi()F

    move-result v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 462
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    .line 463
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    .line 462
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 464
    .local v7, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 465
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getHeight()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 464
    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 466
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 467
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 470
    :cond_3
    iput-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 472
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    const-string v0, "\u5c55\u793aLogo\u5931\u8d25"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1
.end method

.method public drawAdProccess(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)Landroid/graphics/RectF;
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # I
    .param p4, "margin"    # I
    .param p5, "padding"    # I
    .param p6, "grave"    # I
    .param p7, "progress"    # I

    .prologue
    .line 484
    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v11

    .line 485
    .local v11, "roundWidth":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v10

    .line 486
    .local v10, "processWidth":I
    const/4 v8, 0x0

    .line 487
    .local v8, "centerX":F
    const/4 v9, 0x0

    .line 488
    .local v9, "centerY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 489
    and-int/lit8 v13, p6, 0xf

    .line 490
    .local v13, "x":I
    const/4 v2, 0x3

    if-ne v13, v2, :cond_2

    .line 491
    add-int v2, p4, v11

    int-to-float v8, v2

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    sub-float v3, v8, v3

    int-to-float v4, v10

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    add-float/2addr v3, v8

    int-to-float v4, v10

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 500
    :cond_0
    :goto_0
    move/from16 v0, p6

    and-int/lit16 v14, v0, 0xf0

    .line 501
    .local v14, "y":I
    const/16 v2, 0x30

    if-ne v14, v2, :cond_3

    .line 502
    add-int v2, p4, v11

    int-to-float v9, v2

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    sub-float v3, v9, v3

    div-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    add-float/2addr v3, v9

    div-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 511
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v3, "#99000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    add-int/lit8 v2, v11, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v12, v9, v2

    .line 522
    .local v12, "textY":F
    move/from16 v0, p5

    int-to-float v2, v0

    add-float/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v3, "#f25252"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v10

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    move/from16 v0, p7

    mul-int/lit16 v2, v0, -0x168

    int-to-long v6, v2

    const-wide/16 v16, 0x64

    div-long v6, v6, v16

    long-to-float v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    const-wide v4, 0x3fd6666666666666L    # 0.35

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getSize(D)I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/huanju/ssp/base/utils/DrawableUtils;->getArea(Landroid/view/View;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v2

    return-object v2

    .line 494
    .end local v12    # "textY":F
    .end local v14    # "y":I
    :cond_2
    const/4 v2, 0x5

    if-ne v13, v2, :cond_0

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v2, p4

    sub-int/2addr v2, v11

    int-to-float v8, v2

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    add-float/2addr v3, v8

    div-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    sub-float v3, v8, v3

    div-int/lit8 v4, v10, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 505
    .restart local v14    # "y":I
    :cond_3
    const/16 v2, 0x50

    if-ne v14, v2, :cond_1

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getHeight()I

    move-result v2

    sub-int v2, v2, p4

    sub-int/2addr v2, v11

    int-to-float v9, v2

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    add-float/2addr v3, v9

    int-to-float v4, v10

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mArcRectF:Landroid/graphics/RectF;

    int-to-float v3, v11

    sub-float v3, v9, v3

    int-to-float v4, v10

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1
.end method

.method public drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZ)Landroid/graphics/RectF;
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # I
    .param p4, "margin"    # I
    .param p5, "padding"    # I
    .param p6, "grave"    # I
    .param p7, "isCloseBtn"    # Z

    .prologue
    .line 354
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/huanju/ssp/base/core/view/AdInnerView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZZ)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZZ)Landroid/graphics/RectF;
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # I
    .param p4, "margin"    # I
    .param p5, "padding"    # I
    .param p6, "grave"    # I
    .param p7, "isCloseBtn"    # Z
    .param p8, "isAdSign"    # Z

    .prologue
    .line 359
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 360
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 361
    .local v3, "r1":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 362
    .local v2, "bound":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, p3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 363
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 364
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, p2, v8, v9, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 365
    and-int/lit8 v5, p6, 0xf

    .line 366
    .local v5, "x":I
    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 367
    move/from16 v0, p4

    int-to-float v7, v0

    iput v7, v3, Landroid/graphics/RectF;->left:F

    .line 368
    iget v7, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 374
    :cond_0
    :goto_0
    move/from16 v0, p6

    and-int/lit16 v6, v0, 0xf0

    .line 375
    .local v6, "y":I
    const/16 v7, 0x30

    if-ne v6, v7, :cond_3

    .line 376
    move/from16 v0, p4

    int-to-float v7, v0

    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 377
    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 384
    :cond_1
    :goto_1
    if-eqz p7, :cond_4

    const-string v7, "\u00d7"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 385
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#66000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    int-to-float v7, p3

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    int-to-float v8, p3

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 387
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#aaffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 389
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 390
    iget v7, v3, Landroid/graphics/RectF;->left:F

    move/from16 v0, p5

    int-to-float v8, v0

    add-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, p5

    int-to-float v9, v0

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    :goto_2
    const-wide v8, 0x3fd6666666666666L    # 0.35

    invoke-direct {p0, v8, v9}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getSize(D)I

    move-result v7

    invoke-static {p0, v3, v7}, Lcom/huanju/ssp/base/utils/DrawableUtils;->getArea(Landroid/view/View;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v7

    return-object v7

    .line 369
    .end local v6    # "y":I
    :cond_2
    const/4 v7, 0x5

    if-ne v5, v7, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v7, p4

    int-to-float v7, v7

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 371
    iget v7, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 378
    .restart local v6    # "y":I
    :cond_3
    const/16 v7, 0x50

    if-ne v6, v7, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getHeight()I

    move-result v7

    sub-int v7, v7, p4

    int-to-float v7, v7

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 380
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-int/lit8 v8, p5, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 391
    :cond_4
    if-eqz p8, :cond_5

    .line 392
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#33000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    move/from16 v0, p4

    int-to-float v7, v0

    iput v7, v3, Landroid/graphics/RectF;->left:F

    .line 394
    iget v7, v3, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x41d80000    # 27.0f

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->right:F

    .line 395
    move/from16 v0, p4

    int-to-float v7, v0

    iput v7, v3, Landroid/graphics/RectF;->top:F

    .line 396
    iget v7, v3, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 397
    int-to-float v7, p3

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    int-to-float v8, p3

    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 398
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#ffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 402
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->descent()F

    move-result v8

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 403
    .local v4, "textY":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v7, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 405
    .end local v4    # "textY":F
    :cond_5
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x41c80000    # 25.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, -0x777778

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 406
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#66000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 407
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 408
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 409
    iget v7, v3, Landroid/graphics/RectF;->left:F

    move/from16 v0, p5

    int-to-float v8, v0

    add-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, p5

    int-to-float v9, v0

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 410
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const-string v8, "#aaffffff"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 412
    iget-object v7, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
    iget v7, v3, Landroid/graphics/RectF;->left:F

    move/from16 v0, p5

    int-to-float v8, v0

    add-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, p5

    int-to-float v9, v0

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public getErrImpTiem()[J
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mErrImpTime:[J

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 640
    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 314
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isCarousel:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 317
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isCarousel:Z

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 324
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isCarousel:Z

    if-nez v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->free()V

    .line 331
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->isCarousel:Z

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->recycle()V

    .line 337
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    if-eqz v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->stopPlayback()V

    .line 345
    :cond_4
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 632
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 633
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->onDrawListener:Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->onDrawListener:Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;

    invoke-interface {v0, p1}, Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;->onAdDraw(Landroid/graphics/Canvas;)V

    .line 636
    :cond_0
    return-void
.end method

.method public recycleView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 600
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 602
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 607
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->matrixLogo:Landroid/graphics/Bitmap;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->free()V

    .line 612
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    if-eqz v0, :cond_3

    .line 615
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->recycle()V

    .line 616
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    .line 618
    :cond_3
    return-void
.end method

.method public renderAdView(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
    .locals 21
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v15, 0x0

    .line 199
    :goto_0
    return v15

    .line 107
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .line 110
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v16, "lg_swh"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p1

    iget v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lg:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lgsrc:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 112
    :cond_1
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->lgsrc:Ljava/lang/String;

    invoke-static {v15}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->logo:Landroid/graphics/Bitmap;

    .line 118
    :cond_2
    move-object/from16 v0, p1

    iget v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    packed-switch v15, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v15, 0x0

    goto :goto_0

    .line 120
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    .line 121
    .local v10, "imgUrl":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 122
    .local v2, "curTime":J
    const-string v15, "start call ImageLoader.getByteArray() "

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 123
    new-instance v15, Lcom/huanju/ssp/base/core/view/AdInnerView$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$1;-><init>(Lcom/huanju/ssp/base/core/view/AdInnerView;)V

    invoke-static {v10, v15}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    .line 131
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "end call ImageLoader.getByteArray() cast "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    if-eqz v15, :cond_3

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    array-length v15, v15

    if-lez v15, :cond_3

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 134
    .end local v2    # "curTime":J
    .end local v10    # "imgUrl":Ljava/lang/String;
    :pswitch_2
    const/4 v12, 0x0

    .line 135
    .local v12, "is":Ljava/io/InputStream;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    .line 137
    .local v13, "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    :try_start_0
    iget-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->imgurl:Ljava/lang/String;

    new-instance v16, Lcom/huanju/ssp/base/core/view/AdInnerView$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/view/AdInnerView$2;-><init>(Lcom/huanju/ssp/base/core/view/AdInnerView;)V

    invoke-static/range {v15 .. v16}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v15

    iput-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    .line 145
    iget-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acimgurl:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    const-string v17, "nubia_ad/ac_%s.png"

    const/4 v15, 0x1

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v15, v0, :cond_5

    const/4 v15, 0x1

    :goto_1
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 147
    if-eqz v12, :cond_4

    .line 148
    invoke-static {v12}, Lcom/huanju/ssp/base/utils/FileUtils;->getByteFromStream(Ljava/io/InputStream;)[B

    move-result-object v15

    iput-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acicon:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_4
    :goto_2
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 165
    :goto_3
    iget-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    if-eqz v15, :cond_7

    iget-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    array-length v15, v15

    if-lez v15, :cond_7

    iget-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->title:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 146
    :cond_5
    :try_start_1
    move-object/from16 v0, p1

    iget v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    goto :goto_1

    .line 151
    :cond_6
    iget-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->imgurl:Ljava/lang/String;

    new-instance v16, Lcom/huanju/ssp/base/core/view/AdInnerView$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/core/view/AdInnerView$3;-><init>(Lcom/huanju/ssp/base/core/view/AdInnerView;)V

    invoke-static/range {v15 .. v16}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->getByteArray(Ljava/lang/String;Lcom/huanju/ssp/base/core/common/ImgDownListener;)[B

    move-result-object v15

    iput-object v15, v13, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acicon:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 160
    :catch_0
    move-exception v9

    .line 161
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    goto :goto_3

    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/huanju/ssp/base/utils/FileUtils;->close([Ljava/io/Closeable;)V

    .line 164
    throw v15

    .line 165
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 170
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "mix":Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 171
    .local v4, "curTime1":J
    const-string v15, "start call default getByteArray() "

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 172
    const/4 v8, 0x0

    .line 176
    .local v8, "data":[B
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 178
    .local v11, "in":Ljava/io/InputStream;
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v15

    new-array v8, v15, [B

    .line 180
    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    .line 182
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 186
    .end local v11    # "in":Ljava/io/InputStream;
    :goto_4
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    .line 187
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "end call default getByteArray() cast "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 188
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    if-eqz v15, :cond_8

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    array-length v15, v15

    if-lez v15, :cond_8

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 183
    :catch_1
    move-exception v9

    .line 184
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 188
    .end local v9    # "e":Ljava/io/IOException;
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 190
    .end local v4    # "curTime1":J
    .end local v8    # "data":[B
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgurl:Ljava/lang/String;

    .line 191
    .local v14, "videoUrl":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 192
    .local v6, "curTime2":J
    const-string v15, "start call VideoLoader.getVideoUrl "

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imgmd5:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/huanju/ssp/base/core/view/imageloader/VideoLoader;->getVideoUrl(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->localVideoUrl:Ljava/lang/String;

    .line 194
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "end call VideoLoader.getVideoUrl cast "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->localVideoUrl:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setOnDrawListener(Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;)V
    .locals 0
    .param p1, "onDrawListener"    # Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->onDrawListener:Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;

    .line 93
    return-void
.end method

.method public setPrepareListen(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "prepareListen"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mPrepareListen:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 623
    return-void
.end method

.method public showView()Z
    .locals 12

    .prologue
    const/4 v9, 0x4

    const/4 v11, -0x1

    const/4 v7, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 208
    .local v6, "parent":Landroid/view/ViewGroup;
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    .line 209
    .local v2, "creative_type":I
    packed-switch v2, :pswitch_data_0

    .line 308
    :goto_0
    :pswitch_0
    return v7

    .line 212
    :pswitch_1
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-nez v8, :cond_0

    .line 213
    const-string v8, "imageView is null"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 214
    new-instance v8, Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/huanju/ssp/base/core/view/gif/GifView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 215
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :cond_0
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v4, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    .line 219
    .local v4, "imageByte":[B
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-static {v8, v4}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->adapterData(Landroid/view/View;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 221
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    sget-object v10, Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;->COVER:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    invoke-virtual {v8, v10}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImageType(Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;)V

    .line 222
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget v10, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->w:I

    iget v11, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->h:I

    invoke-virtual {v8, v10, v11}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setShowDimension(II)V

    .line 223
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v8, v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImage([B)V

    .line 224
    const-string v8, "Gif\u56fe\u7247"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 229
    :goto_1
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->img:[B

    .line 230
    if-eqz v4, :cond_6

    const/4 v5, 0x1

    .line 298
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "imageByte":[B
    .local v5, "isShow":Z
    :goto_2
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-eqz v8, :cond_2

    .line 299
    iget-object v10, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1

    const/4 v8, 0x5

    if-ne v2, v8, :cond_b

    :cond_1
    move v8, v7

    :goto_3
    invoke-virtual {v10, v8}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setVisibility(I)V

    .line 303
    :cond_2
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    if-eqz v8, :cond_4

    .line 304
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    const/4 v10, 0x3

    if-ne v2, v10, :cond_3

    move v9, v7

    :cond_3
    invoke-virtual {v8, v9}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->setVisibility(I)V

    .line 307
    :cond_4
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v7, v5

    .line 308
    goto :goto_0

    .line 226
    .end local v5    # "isShow":Z
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "imageByte":[B
    :cond_5
    const-string v8, "\u5e38\u89c4\u56fe\u7247"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 227
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->imageView:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v8, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    move v5, v7

    .line 230
    goto :goto_2

    .line 233
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "imageByte":[B
    :pswitch_2
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    if-nez v8, :cond_7

    .line 234
    new-instance v8, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, p0, v10}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;-><init>(Lcom/huanju/ssp/base/core/view/AdInnerView;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    .line 235
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :cond_7
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mixView:Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;

    iget-object v10, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v10, v10, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->mix:Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    invoke-virtual {v8, v10}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->showMix(Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;)Z

    move-result v5

    .line 238
    .restart local v5    # "isShow":Z
    goto :goto_2

    .line 240
    .end local v5    # "isShow":Z
    :pswitch_3
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    if-nez v8, :cond_8

    .line 241
    const-string v8, "customVideoView is null"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 242
    new-instance v8, Lcom/huanju/ssp/base/core/view/CustomVideoView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/huanju/ssp/base/core/view/CustomVideoView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    .line 244
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 246
    :cond_8
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->localVideoUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 247
    const/4 v5, 0x0

    .restart local v5    # "isShow":Z
    goto :goto_2

    .line 249
    .end local v5    # "isShow":Z
    :cond_9
    const/4 v5, 0x1

    .line 250
    .restart local v5    # "isShow":Z
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v8, v8, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->localVideoUrl:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v3, "file":Ljava/io/File;
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mContext:Landroid/content/Context;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".fileProvider"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 252
    .local v1, "contentUri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contentUri:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 253
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x18

    if-lt v8, v10, :cond_a

    .line 254
    const-string v8, "SDK_INT is Build.VERSION_CODES.N"

    invoke-static {v8}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 255
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    invoke-virtual {v8, v1}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 261
    :goto_4
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    invoke-virtual {v8}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->start()V

    .line 262
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    new-instance v10, Lcom/huanju/ssp/base/core/view/AdInnerView$4;

    invoke-direct {v10, p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$4;-><init>(Lcom/huanju/ssp/base/core/view/AdInnerView;)V

    invoke-virtual {v8, v10}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 276
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    new-instance v10, Lcom/huanju/ssp/base/core/view/AdInnerView$5;

    invoke-direct {v10, p0, v3}, Lcom/huanju/ssp/base/core/view/AdInnerView$5;-><init>(Lcom/huanju/ssp/base/core/view/AdInnerView;Ljava/io/File;)V

    invoke-virtual {v8, v10}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto/16 :goto_2

    .line 257
    :cond_a
    iget-object v8, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->customVideoView:Lcom/huanju/ssp/base/core/view/CustomVideoView;

    iget-object v10, p0, Lcom/huanju/ssp/base/core/view/AdInnerView;->ad:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v10, v10, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->localVideoUrl:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/huanju/ssp/base/core/view/CustomVideoView;->setVideoPath(Ljava/lang/String;)V

    goto :goto_4

    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v3    # "file":Ljava/io/File;
    :cond_b
    move v8, v9

    .line 299
    goto/16 :goto_3

    .line 209
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
