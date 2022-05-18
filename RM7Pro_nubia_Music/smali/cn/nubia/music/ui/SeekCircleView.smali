.class public Lcn/nubia/music/ui/SeekCircleView;
.super Landroid/view/View;
.source "SeekCircleView.java"


# static fields
.field private static mCircleBorder:F

.field private static mPaintWidth:F


# instance fields
.field private ark78:F

.field private ballBitmap:Landroid/graphics/Bitmap;

.field private ballHight:F

.field private ballPy:F

.field private currentProgress:F

.field private currentTime:Ljava/lang/String;

.field private dstRect:Landroid/graphics/Rect;

.field private endTime:Ljava/lang/String;

.field private lineToBottom:F

.field private mBeginDegree:F

.field private mBuffBitmap:Landroid/graphics/Bitmap;

.field private mBuffProgress:F

.field private mBuffRect:Landroid/graphics/Rect;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCircleR:F

.field private mCircleRx:F

.field private mCircleRy:F

.field private mCurrentAlumHueColor:I

.field private mDraging:Z

.field private mEndPointRadius:F

.field private mLineStartDegree:F

.field private mLister:Lcn/nubia/music/app/listener/IProgressLister;

.field private mPaint:Landroid/graphics/Paint;

.field private mProY:F

.field private mProgressBitmap:Landroid/graphics/Bitmap;

.field private mSeekLine:F

.field private mSeekSpace:F

.field private mSeekable:Z

.field private mTextSize:F

.field private mWholeDegree:F

.field private path:Landroid/graphics/Path;

.field private progressLength:F

.field private rect:Landroid/graphics/Rect;

.field private rectF:Landroid/graphics/RectF;

.field private rtPgrDges:F

.field private samllBallPy:F

.field private startDis:F

.field private toLeftDis:I

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput v0, Lcn/nubia/music/ui/SeekCircleView;->mPaintWidth:F

    .line 18
    sput v0, Lcn/nubia/music/ui/SeekCircleView;->mCircleBorder:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/SeekCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/SeekCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    .line 23
    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    .line 25
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    .line 27
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->ark78:F

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rectF:Landroid/graphics/RectF;

    .line 35
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->lineToBottom:F

    .line 38
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    .line 46
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->width:F

    .line 48
    const-string v0, "00:00"

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->currentTime:Ljava/lang/String;

    .line 49
    const-string v0, "00:00"

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->endTime:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mTextSize:F

    .line 51
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    .line 52
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekLine:F

    .line 54
    invoke-static {}, Lcn/nubia/music/ui/ThemeColor;->getCurrentThemeColor()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCurrentAlumHueColor:I

    .line 55
    iput v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffProgress:F

    .line 56
    iput-boolean v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mDraging:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekable:Z

    .line 71
    const v0, 0x7f0d00c8

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/nubia/music/ui/SeekCircleView;->mCircleBorder:F

    .line 72
    const v0, 0x7f0d0136

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcn/nubia/music/ui/SeekCircleView;->mPaintWidth:F

    .line 73
    const v0, 0x7f0d00cb

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 74
    const v1, 0x7f0d00cf

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 75
    const v2, 0x7f0d00c9

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->ark78:F

    .line 76
    const v2, 0x7f0d00fb

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mEndPointRadius:F

    .line 77
    const v2, 0x7f0d00c2

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->ballHight:F

    .line 78
    const v2, 0x7f0d00cc

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    .line 79
    const v2, 0x7f0d0063

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->lineToBottom:F

    .line 80
    const v2, 0x7f0d00cd

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekLine:F

    .line 82
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    mul-float/2addr v0, v4

    div-float v0, v2, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    .line 83
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    div-float v0, v1, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBeginDegree:F

    .line 84
    const/high16 v0, 0x43340000    # 180.0f

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mBeginDegree:F

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mWholeDegree:F

    .line 85
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ark78:F

    sub-float v0, v1, v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    .line 86
    return-void
.end method

.method private final drawCircleBorder(Landroid/graphics/Canvas;FFII)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 102
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 105
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    sget v1, Lcn/nubia/music/ui/SeekCircleView;->mCircleBorder:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    int-to-float v1, p4

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    return-void
.end method

.method private isInEclipse(FF)Z
    .locals 5

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 374
    .line 376
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr v0, p1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 377
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rtPgrDges:F

    .line 379
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rtPgrDges:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRy:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballPy:F

    .line 381
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballPy:F

    add-float/2addr v0, v4

    .line 382
    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->ballPy:F

    sub-float/2addr v1, v4

    .line 383
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 384
    const/4 v0, 0x1

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private move(FF)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move() y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 393
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->progressLength:F

    div-float/2addr v0, v1

    .line 394
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    .line 395
    iput v3, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    .line 402
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/music/ui/SeekCircleView;->invalidate()V

    .line 404
    return-void

    .line 396
    :cond_0
    cmpg-float v1, v0, v2

    if-gtz v1, :cond_1

    .line 397
    iput v2, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    goto :goto_0

    .line 399
    :cond_1
    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    .line 121
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 122
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 123
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ark78:F

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    .line 124
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-float v0, v0

    const v1, 0x40266666    # 2.6f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    .line 125
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 126
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->progressLength:F

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->width:F

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRx:F

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->lineToBottom:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRy:F

    .line 132
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rtPgrDges:F

    .line 134
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rtPgrDges:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRy:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->samllBallPy:F

    .line 137
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->dstRect:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 138
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    iget v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->dstRect:Landroid/graphics/Rect;

    .line 141
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    .line 143
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 144
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 145
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 146
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 149
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    .line 150
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRx:F

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRy:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRx:F

    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRy:F

    iget v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rectF:Landroid/graphics/RectF;

    .line 152
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRy:F

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProY:F

    .line 156
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/music/ui/SeekCircleView;->mPaintWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mBeginDegree:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mWholeDegree:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 164
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffBitmap:Landroid/graphics/Bitmap;

    .line 167
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcn/nubia/music/ui/SeekCircleView;->mPaintWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mBeginDegree:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mWholeDegree:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 173
    :cond_6
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 174
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/music/ui/SeekCircleView;->mPaintWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffProgress:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->progressLength:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 177
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->progressLength:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 178
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 180
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/music/ui/SeekCircleView;->dstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 184
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekSpace:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProgressBitmap:Landroid/graphics/Bitmap;

    .line 187
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCanvas:Landroid/graphics/Canvas;

    .line 188
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCurrentAlumHueColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/music/ui/SeekCircleView;->mPaintWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mBeginDegree:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mWholeDegree:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 194
    :cond_7
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 196
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->progressLength:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 197
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 199
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xa3bb

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProgressBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/music/ui/SeekCircleView;->dstRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 205
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 211
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-double v0, v0

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v1, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProY:F

    float-to-double v2, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-double v4, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v6, v0

    .line 212
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v2, v2

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-double v4, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-double v6, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v8, v0

    .line 213
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProY:F

    float-to-double v4, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    float-to-double v6, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v8, v0

    .line 214
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 211
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v4

    .line 217
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v1, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProY:F

    float-to-double v2, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    float-to-double v4, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v6, v0

    .line 218
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    sub-int/2addr v0, v3

    int-to-double v4, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-double v6, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v8, v0

    .line 220
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProY:F

    float-to-double v4, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    float-to-double v6, v0

    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v8, v0

    .line 221
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 224
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->rtPgrDges:F

    .line 225
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleR:F

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rtPgrDges:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCircleRy:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballPy:F

    .line 227
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 228
    invoke-virtual {p0}, Lcn/nubia/music/ui/SeekCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020283

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 229
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballHight:F

    float-to-int v0, v0

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->ballHight:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballBitmap:Landroid/graphics/Bitmap;

    .line 231
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->ballHight:F

    float-to-int v2, v2

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballBitmap:Landroid/graphics/Bitmap;

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->ballHight:F

    float-to-int v2, v2

    if-ne v0, v2, :cond_a

    .line 233
    const/4 v0, 0x0

    .line 237
    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    .line 238
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    :cond_8
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const v1, 0xcccccc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->progressLength:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->samllBallPy:F

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mEndPointRadius:F

    iget-object v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCurrentAlumHueColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->samllBallPy:F

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mEndPointRadius:F

    iget-object v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 251
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 253
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->ballBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->ballHight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->ballPy:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->ballHight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 258
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    .line 259
    const v0, 0x7f0d00ce

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mTextSize:F

    .line 261
    :cond_9
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCurrentAlumHueColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 263
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget v0, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekLine:F

    add-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 266
    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mProY:F

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekLine:F

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 268
    iget-object v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/nubia/music/ui/SeekCircleView;->currentTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 269
    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v3, v0

    .line 270
    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v1

    .line 271
    iget-object v4, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 272
    iget-object v4, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 273
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 274
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->currentTime:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 277
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 279
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x6f000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget v1, p0, Lcn/nubia/music/ui/SeekCircleView;->width:F

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->toLeftDis:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekLine:F

    add-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 281
    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mProY:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->startDis:F

    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekLine:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 283
    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v0

    sub-float v3, v1, v3

    .line 284
    iget v4, p0, Lcn/nubia/music/ui/SeekCircleView;->mLineStartDegree:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    .line 286
    iget-object v4, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 287
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 288
    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->endTime:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/music/ui/SeekCircleView;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 235
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 316
    iget-boolean v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekable:Z

    if-nez v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcn/nubia/music/ui/SeekCircleView;->isInEclipse(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iput-boolean v1, p0, Lcn/nubia/music/ui/SeekCircleView;->mDraging:Z

    .line 326
    invoke-virtual {p0, v1}, Lcn/nubia/music/ui/SeekCircleView;->setPressed(Z)V

    move v0, v1

    .line 327
    goto :goto_0

    .line 333
    :pswitch_1
    iget-boolean v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mDraging:Z

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/music/ui/SeekCircleView;->move(FF)V

    move v0, v1

    .line 335
    goto :goto_0

    .line 341
    :pswitch_2
    iget-boolean v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mDraging:Z

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcn/nubia/music/ui/SeekCircleView;->move(FF)V

    .line 344
    iget-object v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mLister:Lcn/nubia/music/app/listener/IProgressLister;

    if-eqz v2, :cond_4

    .line 346
    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    .line 347
    iput v5, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    .line 349
    :cond_2
    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    .line 350
    iput v4, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    .line 352
    :cond_3
    iget-object v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mLister:Lcn/nubia/music/app/listener/IProgressLister;

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    invoke-interface {v2, v3}, Lcn/nubia/music/app/listener/IProgressLister;->onProgressChange(F)V

    .line 355
    :cond_4
    iput-boolean v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mDraging:Z

    move v0, v1

    .line 356
    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBufferProgress(F)V
    .locals 0

    .prologue
    .line 308
    iput p1, p0, Lcn/nubia/music/ui/SeekCircleView;->mBuffProgress:F

    .line 310
    return-void
.end method

.method public setColor(I)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 91
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcn/nubia/music/ui/SeekCircleView;->mPaintWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/nubia/music/ui/SeekCircleView;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/nubia/music/ui/SeekCircleView;->mBeginDegree:F

    iget v3, p0, Lcn/nubia/music/ui/SeekCircleView;->mWholeDegree:F

    iget-object v5, p0, Lcn/nubia/music/ui/SeekCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 97
    :cond_0
    iput p1, p0, Lcn/nubia/music/ui/SeekCircleView;->mCurrentAlumHueColor:I

    .line 98
    return-void
.end method

.method public setCurrentTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcn/nubia/music/ui/SeekCircleView;->currentTime:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcn/nubia/music/ui/SeekCircleView;->endTime:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setOnProgressLister(Lcn/nubia/music/app/listener/IProgressLister;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcn/nubia/music/ui/SeekCircleView;->mLister:Lcn/nubia/music/app/listener/IProgressLister;

    .line 412
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcn/nubia/music/ui/SeekCircleView;->mDraging:Z

    if-nez v0, :cond_0

    .line 300
    iput p1, p0, Lcn/nubia/music/ui/SeekCircleView;->currentProgress:F

    .line 301
    invoke-virtual {p0}, Lcn/nubia/music/ui/SeekCircleView;->invalidate()V

    .line 303
    :cond_0
    return-void
.end method

.method public setSeekable(Z)V
    .locals 0

    .prologue
    .line 407
    iput-boolean p1, p0, Lcn/nubia/music/ui/SeekCircleView;->mSeekable:Z

    .line 408
    return-void
.end method
