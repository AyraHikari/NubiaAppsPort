.class public Lcn/nubia/video/player/OnTouchListener;
.super Ljava/lang/Object;
.source "OnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/OnTouchListener$PlayerGesture;,
        Lcn/nubia/video/player/OnTouchListener$MySetting;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/video/player/ControllerBase;

.field private mCurrentPos:I

.field private final mDOUBLEPOINTER_DISTANCE:F

.field private mDuration:I

.field private mFirstOnDown:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDoublePointer:Z

.field private mIsGesturing:Z

.field private mIsHorizontal:Z

.field private final mSINGLEPOINTER_DISTANCE:F

.field private mScallingTimes:I

.field private mSeekMS:I

.field private mSettings:Lcn/nubia/video/player/MediaSettings;

.field private mUIBase:Lcn/nubia/video/player/ViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/video/player/ControllerBase;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsGesturing:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 18
    iput v1, p0, Lcn/nubia/video/player/OnTouchListener;->mFirstOnDown:F

    .line 19
    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mScallingTimes:I

    .line 20
    iput-boolean v0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsDoublePointer:Z

    .line 21
    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mCurrentPos:I

    .line 22
    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mDuration:I

    .line 23
    iput-boolean v0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsHorizontal:Z

    .line 24
    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mSeekMS:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 33
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/video/player/OnTouchListener;->mSINGLEPOINTER_DISTANCE:F

    .line 34
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mDOUBLEPOINTER_DISTANCE:F

    .line 35
    iput-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcn/nubia/video/player/OnTouchListener;->mController:Lcn/nubia/video/player/ControllerBase;

    .line 37
    invoke-virtual {p2}, Lcn/nubia/video/player/ControllerBase;->getBaseView()Lcn/nubia/video/player/ViewBase;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    .line 38
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcn/nubia/video/player/OnTouchListener;->mContext:Landroid/content/Context;

    new-instance v0, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/player/OnTouchListener$PlayerGesture;-><init>(Lcn/nubia/video/player/OnTouchListener;Lcn/nubia/video/player/OnTouchListener$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 39
    new-instance p1, Lcn/nubia/video/player/MediaSettings;

    iget-object p2, p0, Lcn/nubia/video/player/OnTouchListener;->mContext:Landroid/content/Context;

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    new-instance v0, Lcn/nubia/video/player/OnTouchListener$MySetting;

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/player/OnTouchListener$MySetting;-><init>(Lcn/nubia/video/player/OnTouchListener;Lcn/nubia/video/player/OnTouchListener$1;)V

    invoke-direct {p1, p2, v0}, Lcn/nubia/video/player/MediaSettings;-><init>(Landroid/app/Activity;Lcn/nubia/video/player/MediaSettings$ISettingCallback;)V

    iput-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mSettings:Lcn/nubia/video/player/MediaSettings;

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/video/player/OnTouchListener;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsDoublePointer:Z

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/video/player/OnTouchListener;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/nubia/video/player/OnTouchListener;->mIsDoublePointer:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/video/player/OnTouchListener;)F
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/video/player/OnTouchListener;->mFirstOnDown:F

    return p0
.end method

.method static synthetic access$1102(Lcn/nubia/video/player/OnTouchListener;F)F
    .locals 0

    .line 10
    iput p1, p0, Lcn/nubia/video/player/OnTouchListener;->mFirstOnDown:F

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/video/player/OnTouchListener;)F
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/video/player/OnTouchListener;->mDOUBLEPOINTER_DISTANCE:F

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/video/player/OnTouchListener;)I
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/video/player/OnTouchListener;->mScallingTimes:I

    return p0
.end method

.method static synthetic access$1302(Lcn/nubia/video/player/OnTouchListener;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcn/nubia/video/player/OnTouchListener;->mScallingTimes:I

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/video/player/OnTouchListener;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/player/OnTouchListener;->resetDoublePointerGesture()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/video/player/OnTouchListener;)Z
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/player/OnTouchListener;->isGesturing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/ViewBase;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/player/OnTouchListener;)F
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/video/player/OnTouchListener;->mSINGLEPOINTER_DISTANCE:F

    return p0
.end method

.method static synthetic access$402(Lcn/nubia/video/player/OnTouchListener;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/nubia/video/player/OnTouchListener;->mIsGesturing:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/video/player/OnTouchListener;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsHorizontal:Z

    return p0
.end method

.method static synthetic access$502(Lcn/nubia/video/player/OnTouchListener;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/nubia/video/player/OnTouchListener;->mIsHorizontal:Z

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/video/player/OnTouchListener;)I
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/video/player/OnTouchListener;->mSeekMS:I

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/video/player/OnTouchListener;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcn/nubia/video/player/OnTouchListener;->mSeekMS:I

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/video/player/OnTouchListener;)I
    .locals 0

    .line 10
    iget p0, p0, Lcn/nubia/video/player/OnTouchListener;->mCurrentPos:I

    return p0
.end method

.method static synthetic access$702(Lcn/nubia/video/player/OnTouchListener;I)I
    .locals 0

    .line 10
    iput p1, p0, Lcn/nubia/video/player/OnTouchListener;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/video/player/OnTouchListener;I)I
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/video/player/OnTouchListener;->adjustedPlayPos(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/video/player/OnTouchListener;)Lcn/nubia/video/player/MediaSettings;
    .locals 0

    .line 10
    iget-object p0, p0, Lcn/nubia/video/player/OnTouchListener;->mSettings:Lcn/nubia/video/player/MediaSettings;

    return-object p0
.end method

.method private adjustedPlayPos(I)I
    .locals 1

    .line 123
    iget v0, p0, Lcn/nubia/video/player/OnTouchListener;->mDuration:I

    if-gtz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    iget-object v0, v0, Lcn/nubia/video/player/ViewBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mDuration:I

    :cond_0
    const/4 v0, 0x0

    .line 126
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 127
    iget v0, p0, Lcn/nubia/video/player/OnTouchListener;->mDuration:I

    if-lez v0, :cond_1

    .line 128
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method private doGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcn/nubia/video/player/OnTouchListener;->endGesture()V

    :cond_1
    return v1
.end method

.method private endGesture()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsGesturing:Z

    .line 113
    iput-boolean v0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsHorizontal:Z

    .line 114
    invoke-direct {p0}, Lcn/nubia/video/player/OnTouchListener;->resetDoublePointerGesture()V

    .line 115
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {v0}, Lcn/nubia/video/player/ViewBase;->onEndGestrue()V

    return-void
.end method

.method private isActionUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGesturing()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsGesturing:Z

    return v0
.end method

.method private isInBottomRect(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {v0}, Lcn/nubia/video/player/ViewBase;->getBottomRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInTopRect(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {v0}, Lcn/nubia/video/player/ViewBase;->getTopRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resetDoublePointerGesture()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 134
    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mFirstOnDown:F

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcn/nubia/video/player/OnTouchListener;->mScallingTimes:I

    .line 136
    iput-boolean v0, p0, Lcn/nubia/video/player/OnTouchListener;->mIsDoublePointer:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 78
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mController:Lcn/nubia/video/player/ControllerBase;

    invoke-virtual {p1}, Lcn/nubia/video/player/ControllerBase;->isPrepared()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 80
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {p1}, Lcn/nubia/video/player/ViewBase;->isHide()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcn/nubia/video/player/OnTouchListener;->isInTopRect(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcn/nubia/video/player/OnTouchListener;->isInBottomRect(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {p1}, Lcn/nubia/video/player/ViewBase;->startHide()V

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {p1}, Lcn/nubia/video/player/ViewBase;->isHide()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lcn/nubia/video/player/OnTouchListener;->isActionUp(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {p1}, Lcn/nubia/video/player/ViewBase;->hide()V

    return v0

    .line 89
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/player/OnTouchListener;->isGesturing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Lcn/nubia/video/player/OnTouchListener;->isActionUp(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 90
    iget-object p1, p0, Lcn/nubia/video/player/OnTouchListener;->mUIBase:Lcn/nubia/video/player/ViewBase;

    invoke-virtual {p1}, Lcn/nubia/video/player/ViewBase;->show()V

    return v0

    .line 97
    :cond_4
    invoke-direct {p0, p2}, Lcn/nubia/video/player/OnTouchListener;->doGesture(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
