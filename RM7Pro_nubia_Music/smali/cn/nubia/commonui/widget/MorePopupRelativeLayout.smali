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
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    .line 17
    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    .line 18
    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->initDistance(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    .line 17
    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    .line 18
    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->initDistance(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private initDistance(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDistance:I

    .line 82
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 41
    const-string v0, "android.os.SystemProperties"

    const-string v1, "getBoolean"

    new-array v4, v5, [Ljava/lang/Object;

    const-string v3, "persist.sys.gesture.capture"

    aput-object v3, v4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v5, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    move v0, v6

    .line 43
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    :goto_1
    return v2

    .line 42
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v6

    .line 47
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v1, v2

    .line 76
    :goto_1
    return v1

    .line 54
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    goto :goto_1

    .line 58
    :sswitch_1
    iget v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    goto :goto_1

    .line 62
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    iget-wide v6, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointX:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDistance:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iget-wide v6, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDownPointY:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mDistance:I

    int-to-double v6, v0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    move v0, v1

    .line 64
    :goto_2
    iget v3, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    .line 66
    iget v3, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    if-gt v3, v1, :cond_2

    .line 67
    iget-object v3, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v3, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    .line 70
    :cond_0
    iput v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    goto :goto_1

    :cond_1
    move v0, v2

    .line 63
    goto :goto_2

    .line 73
    :cond_2
    iput v2, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mHistoryPointCount:I

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public setNubiaMorePopup(Lcn/nubia/commonui/widget/NubiaMorePopup;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 36
    return-void
.end method

.method public setPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/commonui/widget/MorePopupRelativeLayout;->mPopup:Landroid/widget/PopupWindow;

    .line 32
    return-void
.end method
