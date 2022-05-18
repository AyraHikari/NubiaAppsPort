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

    .prologue
    .line 18
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    .line 13
    iput-wide v2, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    .line 14
    iput-wide v2, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_more_popup_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    .line 25
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    .line 13
    iput-wide v2, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    .line 14
    iput-wide v2, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    .line 34
    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 82
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    .line 83
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 84
    neg-int v4, v2

    if-lt v0, v4, :cond_0

    neg-int v4, v2

    if-lt v1, v4, :cond_0

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v0, v4, :cond_0

    .line 86
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v2

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nubiaTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v2, v3

    .line 71
    :goto_1
    return v2

    .line 49
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    goto :goto_0

    .line 53
    :sswitch_1
    iget v0, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    goto :goto_0

    .line 56
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v4, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    int-to-double v4, v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget v4, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    int-to-double v4, v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    move v1, v2

    .line 58
    :goto_2
    iget v0, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    .line 59
    iget v0, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    if-gt v0, v2, :cond_2

    .line 60
    const-string v0, "mCancelable"

    invoke-static {p0, v0}, Lcn/nubia/commonui/ReflectUtils;->getValueByName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    move v0, v2

    .line 62
    :goto_3
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/commonui/app/Dialog;->shouldCloseOnTouchOfNubia(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iput v3, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    .line 64
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->cancel()V

    goto :goto_1

    :cond_0
    move v1, v3

    .line 57
    goto :goto_2

    .line 61
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    .line 68
    :cond_2
    iput v3, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    goto :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private shouldCloseOnTouchOfNubia(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 75
    iget-boolean v1, p0, Lcn/nubia/commonui/app/Dialog;->mCanceledOnOutside:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/Dialog;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/Dialog;->nubiaTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    iput-boolean p1, p0, Lcn/nubia/commonui/app/Dialog;->mCanceledOnOutside:Z

    .line 44
    return-void
.end method
