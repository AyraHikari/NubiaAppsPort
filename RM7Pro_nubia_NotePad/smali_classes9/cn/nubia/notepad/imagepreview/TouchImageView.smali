.class public Lcn/nubia/notepad/imagepreview/TouchImageView;
.super Landroid/widget/ImageView;
.source "TouchImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;,
        Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;,
        Lcn/nubia/notepad/imagepreview/TouchImageView$Task;
    }
.end annotation


# static fields
.field static final CLICK:I = 0xa

.field static final DOUBLE_PRESS_INTERVAL:J = 0x258L

.field static final DRAG:I = 0x1

.field static final FRICTION:F = 0.9f

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field allowInert:Z

.field bmHeight:F

.field bmWidth:F

.field bottom:F

.field height:F

.field last:Landroid/graphics/PointF;

.field lastDelta:Landroid/graphics/PointF;

.field lastDragTime:J

.field lastPressTime:J

.field m:[F

.field private mActivity:Lcn/nubia/notepad/NotePadImagePreviewActivity;

.field private mClickTimer:Ljava/util/Timer;

.field private mContext:Landroid/content/Context;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mScaleDetector:Ljava/lang/Object;

.field private mTimerHandler:Landroid/os/Handler;

.field matrix:Landroid/graphics/Matrix;

.field matrixX:F

.field matrixY:F

.field maxScale:F

.field mid:Landroid/graphics/PointF;

.field minScale:F

.field mode:I

.field oldDist:F

.field public onBottomSide:Z

.field public onLeftSide:Z

.field public onRightSide:Z

.field public onTopSide:Z

.field origHeight:F

.field origWidth:F

.field redundantXSpace:F

.field redundantYSpace:F

.field right:F

.field saveScale:F

.field savedMatrix:Landroid/graphics/Matrix;

.field start:Landroid/graphics/PointF;

.field velocity:F

.field width:F

.field private zoomToOriginalSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 40
    iput v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mid:Landroid/graphics/PointF;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->start:Landroid/graphics/PointF;

    .line 51
    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 52
    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    .line 53
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    .line 54
    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDelta:Landroid/graphics/PointF;

    .line 57
    iput v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    .line 59
    iput-wide v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastPressTime:J

    iput-wide v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDragTime:J

    .line 60
    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->allowInert:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mTimerHandler:Landroid/os/Handler;

    .line 68
    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->zoomToOriginalSize:Z

    .line 78
    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onLeftSide:Z

    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onTopSide:Z

    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onRightSide:Z

    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onBottomSide:Z

    .line 83
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 84
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->init()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 40
    iput v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->last:Landroid/graphics/PointF;

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mid:Landroid/graphics/PointF;

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->start:Landroid/graphics/PointF;

    .line 51
    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 52
    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    .line 53
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->maxScale:F

    .line 54
    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->oldDist:F

    .line 56
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDelta:Landroid/graphics/PointF;

    .line 57
    iput v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    .line 59
    iput-wide v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastPressTime:J

    iput-wide v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDragTime:J

    .line 60
    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->allowInert:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mTimerHandler:Landroid/os/Handler;

    .line 68
    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->zoomToOriginalSize:Z

    .line 78
    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onLeftSide:Z

    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onTopSide:Z

    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onRightSide:Z

    iput-boolean v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onBottomSide:Z

    .line 91
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 92
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->init()V

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/notepad/imagepreview/TouchImageView;)Lcn/nubia/notepad/NotePadImagePreviewActivity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mActivity:Lcn/nubia/notepad/NotePadImagePreviewActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->scaleMatrixToBounds()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/notepad/imagepreview/TouchImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p1, "x1"    # Landroid/graphics/PointF;
    .param p2, "x2"    # Landroid/graphics/PointF;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/imagepreview/TouchImageView;->distanceBetween(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p1, "x1"    # Lcn/nubia/notepad/imagepreview/WrapMotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/TouchImageView;->midPointF(Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->checkSiding()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/notepad/imagepreview/TouchImageView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/notepad/imagepreview/TouchImageView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mScaleDetector:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->fillMatrixXY()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p1, "x1"    # Lcn/nubia/notepad/imagepreview/WrapMotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/notepad/imagepreview/TouchImageView;->spacing(Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/notepad/imagepreview/TouchImageView;Landroid/graphics/PointF;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p1, "x1"    # Landroid/graphics/PointF;
    .param p2, "x2"    # Lcn/nubia/notepad/imagepreview/WrapMotionEvent;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/imagepreview/TouchImageView;->midPoint(Landroid/graphics/PointF;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/notepad/imagepreview/TouchImageView;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mClickTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/notepad/imagepreview/TouchImageView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mClickTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$700(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->calcPadding()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/notepad/imagepreview/TouchImageView;FF)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/imagepreview/TouchImageView;->checkAndSetTranslate(FF)V

    return-void
.end method

.method private calcPadding()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 346
    iget v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantXSpace:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    .line 347
    iget v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantYSpace:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    .line 349
    return-void
.end method

.method private checkAndSetTranslate(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v4, 0x0

    .line 299
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origWidth:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v1, v2

    .line 300
    .local v1, "scaleWidth":F
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origHeight:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    .line 301
    .local v0, "scaleHeight":F
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->fillMatrixXY()V

    .line 302
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 303
    const/4 p1, 0x0

    .line 304
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    add-float/2addr v2, p2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 305
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    neg-float p2, v2

    .line 325
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 326
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->checkSiding()V

    .line 327
    return-void

    .line 306
    :cond_1
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    add-float/2addr v2, p2

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 307
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    add-float/2addr v2, v3

    neg-float p2, v2

    goto :goto_0

    .line 308
    :cond_2
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 309
    const/4 p2, 0x0

    .line 310
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    add-float/2addr v2, p1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 311
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    neg-float p1, v2

    goto :goto_0

    .line 312
    :cond_3
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    add-float/2addr v2, p1

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 313
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    add-float/2addr v2, v3

    neg-float p1, v2

    goto :goto_0

    .line 315
    :cond_4
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    add-float/2addr v2, p1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    .line 316
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    neg-float p1, v2

    .line 320
    :cond_5
    :goto_1
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    add-float/2addr v2, p2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_7

    .line 321
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    neg-float p2, v2

    goto :goto_0

    .line 317
    :cond_6
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    add-float/2addr v2, p1

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 318
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    add-float/2addr v2, v3

    neg-float p1, v2

    goto :goto_1

    .line 322
    :cond_7
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    add-float/2addr v2, p2

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 323
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    add-float/2addr v2, v3

    neg-float p2, v2

    goto :goto_0
.end method

.method private checkSiding()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    .line 330
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->fillMatrixXY()V

    .line 331
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origWidth:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v1, v2

    .line 332
    .local v1, "scaleWidth":F
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origHeight:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    .line 333
    .local v0, "scaleHeight":F
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onBottomSide:Z

    iput-boolean v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onTopSide:Z

    iput-boolean v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onRightSide:Z

    iput-boolean v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onLeftSide:Z

    .line 334
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    neg-float v2, v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 335
    iput-boolean v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onLeftSide:Z

    .line 336
    :cond_0
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    neg-float v2, v2

    add-float/2addr v2, v1

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 338
    :cond_2
    iput-boolean v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onRightSide:Z

    .line 339
    :cond_3
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    neg-float v2, v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 340
    iput-boolean v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onTopSide:Z

    .line 341
    :cond_4
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    neg-float v2, v2

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 342
    iput-boolean v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->onBottomSide:Z

    .line 343
    :cond_5
    return-void
.end method

.method private distanceBetween(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 6
    .param p1, "left"    # Landroid/graphics/PointF;
    .param p2, "right"    # Landroid/graphics/PointF;

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 398
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 399
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 398
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private fillMatrixXY()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 353
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    .line 354
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    .line 355
    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Lcn/nubia/notepad/imagepreview/WrapMotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 411
    invoke-virtual {p2, v5}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 412
    .local v0, "x":F
    invoke-virtual {p2, v5}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 413
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 414
    return-void
.end method

.method private midPointF(Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)Landroid/graphics/PointF;
    .locals 7
    .param p1, "event"    # Lcn/nubia/notepad/imagepreview/WrapMotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 418
    invoke-virtual {p1, v5}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v6}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 419
    .local v0, "x":F
    invoke-virtual {p1, v5}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v6}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 420
    .local v1, "y":F
    new-instance v2, Landroid/graphics/PointF;

    div-float v3, v0, v4

    div-float v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private scaleMatrixToBounds()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 358
    iget v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixX:F

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->right:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 360
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrixY:F

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bottom:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 362
    :cond_1
    return-void
.end method

.method private spacing(Lcn/nubia/notepad/imagepreview/WrapMotionEvent;)F
    .locals 8
    .param p1, "event"    # Lcn/nubia/notepad/imagepreview/WrapMotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FloatMath"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 404
    invoke-virtual {p1, v6}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v7}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 405
    .local v0, "x":D
    invoke-virtual {p1, v6}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v7}, Lcn/nubia/notepad/imagepreview/WrapMotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 406
    .local v2, "y":D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method


# virtual methods
.method protected init()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/notepad/NotePadImagePreviewActivity;

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mActivity:Lcn/nubia/notepad/NotePadImagePreviewActivity;

    .line 100
    new-instance v0, Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;-><init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mTimerHandler:Landroid/os/Handler;

    .line 101
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 102
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->m:[F

    .line 103
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 104
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/notepad/imagepreview/TouchImageView$ScaleListener;-><init>(Lcn/nubia/notepad/imagepreview/TouchImageView;Lcn/nubia/notepad/imagepreview/TouchImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mScaleDetector:Ljava/lang/Object;

    .line 109
    :cond_0
    new-instance v0, Lcn/nubia/notepad/imagepreview/TouchImageView$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/imagepreview/TouchImageView$1;-><init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Lcn/nubia/notepad/imagepreview/TouchImageView$2;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/imagepreview/TouchImageView$2;-><init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    return-void
.end method

.method public isZoomToOriginalSize()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->zoomToOriginalSize:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 283
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 284
    iget-boolean v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->allowInert:Z

    if-nez v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDelta:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    mul-float v0, v2, v3

    .local v0, "deltaX":F
    iget-object v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->lastDelta:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    mul-float v1, v2, v3

    .line 288
    .local v1, "deltaY":F
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 291
    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->velocity:F

    .line 292
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 294
    :cond_2
    invoke-direct {p0, v0, v1}, Lcn/nubia/notepad/imagepreview/TouchImageView;->checkAndSetTranslate(FF)V

    .line 295
    iget-object v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 373
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 374
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    .line 375
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    .line 378
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bmWidth:F

    div-float v1, v3, v4

    .line 379
    .local v1, "scaleX":F
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bmHeight:F

    div-float v2, v3, v4

    .line 380
    .local v2, "scaleY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 381
    .local v0, "scale":F
    iget-object v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 382
    iget-object v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 383
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 384
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bmHeight:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantYSpace:F

    .line 385
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bmWidth:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantXSpace:F

    .line 386
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantYSpace:F

    div-float/2addr v3, v6

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantYSpace:F

    .line 387
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantXSpace:F

    div-float/2addr v3, v6

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantXSpace:F

    .line 389
    iget-object v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantXSpace:F

    iget v5, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantYSpace:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 391
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantXSpace:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origWidth:F

    .line 392
    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->redundantYSpace:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->origHeight:F

    .line 393
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->calcPadding()V

    .line 394
    iget-object v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 395
    return-void
.end method

.method public pagerCanScroll()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mode:I

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetScale()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 261
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->fillMatrixXY()V

    .line 262
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    div-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    div-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->width:F

    div-float/2addr v3, v6

    iget v4, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->height:F

    div-float/2addr v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 264
    iget v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->minScale:F

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->saveScale:F

    .line 266
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->calcPadding()V

    .line 267
    invoke-direct {p0, v5, v5}, Lcn/nubia/notepad/imagepreview/TouchImageView;->checkAndSetTranslate(FF)V

    .line 269
    invoke-direct {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->scaleMatrixToBounds()V

    .line 271
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 272
    invoke-virtual {p0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->invalidate()V

    .line 273
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 367
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bmWidth:F

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->bmHeight:F

    .line 369
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 425
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 426
    return-void
.end method

.method public setZoomToOriginalSize(Z)V
    .locals 0
    .param p1, "zoomToOriginalSize"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView;->zoomToOriginalSize:Z

    .line 76
    return-void
.end method
