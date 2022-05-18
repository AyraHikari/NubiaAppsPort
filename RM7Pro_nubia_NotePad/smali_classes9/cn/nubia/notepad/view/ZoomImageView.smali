.class public Lcn/nubia/notepad/view/ZoomImageView;
.super Landroid/widget/ImageView;
.source "ZoomImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/ZoomImageView$TouchListener;,
        Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;,
        Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;
    }
.end annotation


# instance fields
.field private currentMatrix:Landroid/graphics/Matrix;

.field private firstPointF:Landroid/graphics/PointF;

.field private firstTouchTime:J

.field private imgHeight:I

.field private imgWidth:I

.field private intervalTime:I

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private mCurrentScale:F

.field private mInitScaleX:F

.field private mInitScaleY:F

.field private mMaxScale:F

.field private mMinScale:F

.field private mOnOneTouchListener:Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;

.field private mOnScaleListener:Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;

.field mOneTouch:Ljava/lang/Runnable;

.field mTimeHandler:Landroid/os/Handler;

.field private matrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    .line 45
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMinScale:F

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->currentMatrix:Landroid/graphics/Matrix;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstTouchTime:J

    .line 53
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->intervalTime:I

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mCurrentScale:F

    .line 57
    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleX:F

    .line 58
    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleY:F

    .line 426
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mTimeHandler:Landroid/os/Handler;

    .line 427
    new-instance v0, Lcn/nubia/notepad/view/ZoomImageView$2;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/ZoomImageView$2;-><init>(Lcn/nubia/notepad/view/ZoomImageView;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOneTouch:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    .line 45
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMinScale:F

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->currentMatrix:Landroid/graphics/Matrix;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstTouchTime:J

    .line 53
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->intervalTime:I

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mCurrentScale:F

    .line 57
    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleX:F

    .line 58
    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleY:F

    .line 426
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mTimeHandler:Landroid/os/Handler;

    .line 427
    new-instance v0, Lcn/nubia/notepad/view/ZoomImageView$2;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/ZoomImageView$2;-><init>(Lcn/nubia/notepad/view/ZoomImageView;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOneTouch:Ljava/lang/Runnable;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    .line 45
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMinScale:F

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->currentMatrix:Landroid/graphics/Matrix;

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstTouchTime:J

    .line 53
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->intervalTime:I

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mCurrentScale:F

    .line 57
    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleX:F

    .line 58
    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleY:F

    .line 426
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mTimeHandler:Landroid/os/Handler;

    .line 427
    new-instance v0, Lcn/nubia/notepad/view/ZoomImageView$2;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/ZoomImageView$2;-><init>(Lcn/nubia/notepad/view/ZoomImageView;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOneTouch:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    .line 45
    const/high16 v1, 0x3f400000    # 0.75f

    iput v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMinScale:F

    .line 47
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    .line 49
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->currentMatrix:Landroid/graphics/Matrix;

    .line 51
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstTouchTime:J

    .line 53
    const/16 v1, 0xfa

    iput v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->intervalTime:I

    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mCurrentScale:F

    .line 57
    iput v4, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleX:F

    .line 58
    iput v4, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleY:F

    .line 426
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mTimeHandler:Landroid/os/Handler;

    .line 427
    new-instance v1, Lcn/nubia/notepad/view/ZoomImageView$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/ZoomImageView$2;-><init>(Lcn/nubia/notepad/view/ZoomImageView;)V

    iput-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOneTouch:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 72
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/ZoomImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 73
    invoke-direct {p0}, Lcn/nubia/notepad/view/ZoomImageView;->initUI()V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->currentMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/notepad/view/ZoomImageView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->intrinsicWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/notepad/view/ZoomImageView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcn/nubia/notepad/view/ZoomImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/notepad/view/ZoomImageView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/notepad/view/ZoomImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/notepad/view/ZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/notepad/view/ZoomImageView;)Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOnOneTouchListener:Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/notepad/view/ZoomImageView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/nubia/notepad/view/ZoomImageView;->initUI()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/notepad/view/ZoomImageView;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/view/ZoomImageView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/nubia/notepad/view/ZoomImageView;->makeImageViewFit()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/notepad/view/ZoomImageView;Landroid/view/MotionEvent;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/graphics/PointF;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/notepad/view/ZoomImageView;->setDoubleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/notepad/view/ZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mCurrentScale:F

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/notepad/view/ZoomImageView;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mCurrentScale:F

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/notepad/view/ZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMinScale:F

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/notepad/view/ZoomImageView;)Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOnScaleListener:Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/notepad/view/ZoomImageView;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleX:F

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/notepad/view/ZoomImageView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 32
    iget v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->intrinsicHeight:I

    return v0
.end method

.method private getImageViewWidthHeight()V
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcn/nubia/notepad/view/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 405
    .local v0, "vto2":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcn/nubia/notepad/view/ZoomImageView$1;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/ZoomImageView$1;-><init>(Lcn/nubia/notepad/view/ZoomImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 414
    return-void
.end method

.method private getIntrinsicWidthHeight()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcn/nubia/notepad/view/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->intrinsicHeight:I

    .line 128
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->intrinsicWidth:I

    .line 129
    return-void
.end method

.method private initScaleParam()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcn/nubia/notepad/view/ZoomImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 114
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 115
    .local v1, "values":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 116
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleX:F

    .line 117
    const/4 v2, 0x4

    aget v2, v1, v2

    iput v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleY:F

    .line 118
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 105
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    new-instance v0, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/notepad/view/ZoomImageView$TouchListener;-><init>(Lcn/nubia/notepad/view/ZoomImageView;Lcn/nubia/notepad/view/ZoomImageView$1;)V

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/ZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    invoke-direct {p0}, Lcn/nubia/notepad/view/ZoomImageView;->getImageViewWidthHeight()V

    .line 109
    invoke-direct {p0}, Lcn/nubia/notepad/view/ZoomImageView;->getIntrinsicWidthHeight()V

    .line 110
    return-void
.end method

.method private makeImageViewFit()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 420
    invoke-virtual {p0}, Lcn/nubia/notepad/view/ZoomImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    .line 421
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 422
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 423
    invoke-direct {p0}, Lcn/nubia/notepad/view/ZoomImageView;->initScaleParam()V

    .line 425
    :cond_0
    return-void
.end method

.method private makeImgCenter([F)V
    .locals 12
    .param p1, "values"    # [F

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 354
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->intrinsicHeight:I

    int-to-float v8, v8

    const/4 v9, 0x4

    aget v9, p1, v9

    mul-float v7, v8, v9

    .line 355
    .local v7, "zoomY":F
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->intrinsicWidth:I

    int-to-float v8, v8

    const/4 v9, 0x0

    aget v9, p1, v9

    mul-float v6, v8, v9

    .line 357
    .local v6, "zoomX":F
    const/4 v8, 0x5

    aget v1, p1, v8

    .line 359
    .local v1, "leftY":F
    const/4 v8, 0x2

    aget v0, p1, v8

    .line 361
    .local v0, "leftX":F
    add-float v5, v1, v7

    .line 363
    .local v5, "rightY":F
    add-float v4, v0, v6

    .line 366
    .local v4, "rightX":F
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-gez v8, :cond_0

    .line 367
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    int-to-float v8, v8

    sub-float/2addr v8, v7

    div-float v3, v8, v11

    .line 368
    .local v3, "marY":F
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    sub-float v9, v3, v1

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 372
    .end local v3    # "marY":F
    :cond_0
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_1

    .line 374
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    int-to-float v8, v8

    sub-float/2addr v8, v6

    div-float v2, v8, v11

    .line 375
    .local v2, "marX":F
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    sub-float v9, v2, v0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 380
    .end local v2    # "marX":F
    :cond_1
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_3

    .line 381
    cmpl-float v8, v1, v10

    if-lez v8, :cond_2

    .line 382
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v9, v1

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 384
    :cond_2
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_3

    .line 385
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    int-to-float v9, v9

    sub-float/2addr v9, v5

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 390
    :cond_3
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_5

    .line 391
    cmpl-float v8, v0, v10

    if-lez v8, :cond_4

    .line 392
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v9, v0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 394
    :cond_4
    iget v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_5

    .line 395
    iget-object v8, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    int-to-float v9, v9

    sub-float/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 398
    :cond_5
    return-void
.end method

.method private setDoubleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/PointF;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "startPoint"    # Landroid/graphics/PointF;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    .line 441
    const/16 v5, 0x9

    new-array v2, v5, [F

    .line 442
    .local v2, "values":[F
    iget-object v5, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 446
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstTouchTime:J

    sub-long v6, v0, v6

    iget v5, p0, Lcn/nubia/notepad/view/ZoomImageView;->intervalTime:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    .line 447
    iput-wide v0, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstTouchTime:J

    .line 448
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v5, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstPointF:Landroid/graphics/PointF;

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v3, v5

    .line 450
    .local v3, "xDiff":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 451
    .local v4, "yDiff":I
    if-ge v3, v12, :cond_0

    if-ge v4, v12, :cond_0

    .line 452
    iget-object v5, p0, Lcn/nubia/notepad/view/ZoomImageView;->mTimeHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOneTouch:Ljava/lang/Runnable;

    iget v7, p0, Lcn/nubia/notepad/view/ZoomImageView;->intervalTime:I

    add-int/lit8 v7, v7, 0xa

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    .end local v3    # "xDiff":I
    .end local v4    # "yDiff":I
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstPointF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gez v5, :cond_2

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView;->firstPointF:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gez v5, :cond_2

    .line 459
    aget v5, v2, v11

    iget v6, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 460
    iget-object v5, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    aget v7, v2, v11

    div-float/2addr v6, v7

    iget v7, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    const/4 v8, 0x4

    aget v8, v2, v8

    div-float/2addr v7, v8

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 460
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 467
    :cond_2
    :goto_1
    iget-object v5, p0, Lcn/nubia/notepad/view/ZoomImageView;->mTimeHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOneTouch:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 464
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/notepad/view/ZoomImageView;->makeImgInitShow()V

    goto :goto_1
.end method


# virtual methods
.method makeImgInitShow()V
    .locals 6

    .prologue
    .line 473
    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleX:F

    iget v3, p0, Lcn/nubia/notepad/view/ZoomImageView;->mInitScaleY:F

    iget v4, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/notepad/view/ZoomImageView;->imgHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 474
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 475
    .local v0, "values1":[F
    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 476
    invoke-direct {p0, v0}, Lcn/nubia/notepad/view/ZoomImageView;->makeImgCenter([F)V

    .line 477
    return-void
.end method

.method public setOnOneTouchListener(Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOnOneTouchListener:Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;

    .line 95
    return-void
.end method

.method public setOnScaleListener(Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mOnScaleListener:Lcn/nubia/notepad/view/ZoomImageView$OnScaleListener;

    .line 87
    return-void
.end method

.method public setPicZoomHeightWidth(FF)V
    .locals 0
    .param p1, "mMaxScale"    # F
    .param p2, "mMinScale"    # F

    .prologue
    .line 486
    iput p1, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMaxScale:F

    .line 487
    iput p2, p0, Lcn/nubia/notepad/view/ZoomImageView;->mMinScale:F

    .line 488
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 491
    sget-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "picResourceFilePathUrl":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const/4 v3, 0x0

    .line 495
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 496
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    new-instance v3, Lcn/nubia/notepad/view/ZoomImageView$3;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/view/ZoomImageView$3;-><init>(Lcn/nubia/notepad/view/ZoomImageView;)V

    .line 492
    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 524
    return-void
.end method
