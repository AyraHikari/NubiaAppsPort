.class public Lcn/nubia/commonui/app/Dialog;
.super Landroid/app/Dialog;
.source "Dialog.java"


# instance fields
.field private downPointX:D

.field private downPointY:D

.field private mCanceledOnOutside:Z

.field private mDistance:I

.field private mHistoryPointerCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    .line 15
    iput-wide p1, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701e3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    .line 15
    iput-wide p1, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    .line 84
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    neg-int v2, p1

    if-lt v0, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_1

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private nubiaTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 54
    :cond_0
    iget p1, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    goto/16 :goto_2

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    iget-wide v5, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget v0, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v3, v0

    iget-wide v5, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget v0, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 59
    :goto_0
    iget v3, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    if-gt v3, v2, :cond_4

    const-string v3, "mCancelable"

    .line 61
    invoke-static {p0, v3}, Lcn/nubia/commonui/ReflectUtils;->getValueByName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_1

    .line 62
    :cond_3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 63
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/commonui/app/Dialog;->shouldCloseOnTouchOfNubia(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 64
    iput v1, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    .line 65
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->cancel()V

    return v2

    .line 69
    :cond_4
    iput v1, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    goto :goto_2

    .line 50
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v2, p1

    iput-wide v2, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    :goto_2
    return v1
.end method

.method private shouldCloseOnTouchOfNubia(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 76
    iget-boolean v0, p0, Lcn/nubia/commonui/app/Dialog;->mCanceledOnOutside:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/Dialog;->nubiaTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 44
    iput-boolean p1, p0, Lcn/nubia/commonui/app/Dialog;->mCanceledOnOutside:Z

    return-void
.end method
