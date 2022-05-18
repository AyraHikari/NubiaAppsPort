.class public Lcn/nubia/commonui/widget/MorePopupRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "MorePopupRelativeLayout.java"


# instance fields
.field private mDistance:I

.field private mDownPointX:D

.field private mDownPointY:D

.field private mHistoryPointCount:I

.field private mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mTag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    .line 19
    iput-wide v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->initDistance(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    .line 19
    iput-wide v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->initDistance(Landroid/content/Context;)V

    return-void
.end method

.method private initDistance(Landroid/content/Context;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701e3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDistance:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 p1, 0x2

    new-array v6, p1, [Ljava/lang/Object;

    const-string v1, "persist.sys.gesture.capture"

    aput-object v1, v6, v0

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v6, v8

    new-array v7, p1, [Ljava/lang/Class;

    const-class p1, Ljava/lang/String;

    aput-object p1, v7, v0

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p1, v7, v8

    const-string v2, "android.os.SystemProperties"

    const-string v3, "getBoolean"

    invoke-static/range {v2 .. v7}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 43
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    return v8

    :cond_1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    return v1

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    iget-wide v5, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDistance:I

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v3, p1

    iget-wide v5, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDistance:I

    int-to-double v5, p1

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 65
    :goto_0
    iget v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    if-gt v0, v1, :cond_4

    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 69
    invoke-virtual {v3, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    .line 71
    :cond_3
    iput v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    return v1

    .line 74
    :cond_4
    iput v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    :goto_1
    return v2

    .line 55
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v2, p1

    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    return v1
.end method

.method public setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    return-void
.end method

.method public setPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    return-void
.end method
