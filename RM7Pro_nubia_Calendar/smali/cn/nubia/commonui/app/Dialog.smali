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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createContextThemeWrapper"    # Z

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 81
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 82
    .local v3, "y":I
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 83
    .local v1, "slop":I
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "decorView":Landroid/view/View;
    neg-int v4, v1

    if-lt v2, v4, :cond_0

    neg-int v4, v1

    if-lt v3, v4, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 84
    :goto_0
    return v4

    .line 86
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private nubiaTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v3, v4

    .line 71
    :goto_1
    return v3

    .line 49
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-double v6, v3

    iput-wide v6, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-double v6, v3

    iput-wide v6, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    goto :goto_0

    .line 53
    :sswitch_1
    iget v3, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    goto :goto_0

    .line 56
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-double v6, v5

    iget-wide v8, p0, Lcn/nubia/commonui/app/Dialog;->downPointX:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget v5, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    int-to-double v8, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-double v6, v5

    iget-wide v8, p0, Lcn/nubia/commonui/app/Dialog;->downPointY:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    iget v5, p0, Lcn/nubia/commonui/app/Dialog;->mDistance:I

    int-to-double v8, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_0

    move v0, v3

    .line 58
    .local v0, "inScope":Z
    :goto_2
    iget v5, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    .line 59
    iget v5, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    if-gt v5, v3, :cond_2

    .line 60
    const-string v5, "mCancelable"

    invoke-static {p0, v5}, Lcn/nubia/commonui/ReflectUtils;->getValueByName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, "mResult":Ljava/lang/Object;
    if-nez v2, :cond_1

    move v1, v3

    .line 62
    .end local v2    # "mResult":Ljava/lang/Object;
    .local v1, "mFlag":Z
    :goto_3
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcn/nubia/commonui/app/Dialog;->shouldCloseOnTouchOfNubia(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    iput v4, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

    .line 64
    invoke-virtual {p0}, Lcn/nubia/commonui/app/Dialog;->cancel()V

    goto :goto_1

    .end local v0    # "inScope":Z
    .end local v1    # "mFlag":Z
    :cond_0
    move v0, v4

    .line 57
    goto :goto_2

    .line 61
    .restart local v0    # "inScope":Z
    .restart local v2    # "mResult":Ljava/lang/Object;
    :cond_1
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "mResult":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    .line 68
    :cond_2
    iput v4, p0, Lcn/nubia/commonui/app/Dialog;->mHistoryPointerCount:I

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/MotionEvent;

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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/commonui/app/Dialog;->nubiaTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    iput-boolean p1, p0, Lcn/nubia/commonui/app/Dialog;->mCanceledOnOutside:Z

    .line 44
    return-void
.end method
