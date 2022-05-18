.class public Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/PopupWindow;

.field private c:Lcn/nubia/video/commonui/app/e;

.field private d:I

.field private e:D

.field private f:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->e:D

    .line 4
    iput-wide v0, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->f:D

    .line 5
    invoke-direct {p0, p1}, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lb/a/b/a/c;->r:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->d:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
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

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v8, 0x1

    aput-object v1, v6, v8

    new-array v7, p1, [Ljava/lang/Class;

    const-class p1, Ljava/lang/String;

    aput-object p1, v7, v0

    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object p1, v7, v8

    const-string v2, "android.os.SystemProperties"

    const-string v3, "getBoolean"

    invoke-static/range {v2 .. v7}, Lb/a/b/a/i;->e(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 3
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

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget p1, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a:I

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    iget-wide v5, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->e:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget v0, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->d:I

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v3, p1

    iget-wide v5, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->f:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget p1, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->d:I

    int-to-double v5, p1

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 5
    :goto_0
    iget v0, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a:I

    if-gt v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->c:Lcn/nubia/video/commonui/app/e;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {v3, v0}, Lcn/nubia/video/commonui/app/e;->D(Landroid/widget/PopupWindow;)V

    .line 8
    :cond_3
    iput v2, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a:I

    return v1

    .line 9
    :cond_4
    iput v2, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->a:I

    :goto_1
    return v2

    .line 10
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->e:D

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v2, p1

    iput-wide v2, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->f:D

    return v1
.end method

.method public setNubiaMorePopup(Lcn/nubia/video/commonui/app/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->c:Lcn/nubia/video/commonui/app/e;

    return-void
.end method

.method public setPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/commonui/app/MorePopupRelativeLayout;->b:Landroid/widget/PopupWindow;

    return-void
.end method
