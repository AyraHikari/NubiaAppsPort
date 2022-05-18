.class public Lcn/nubia/calendar/submodule_month/view/OtherViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "OtherViewPager.java"


# static fields
.field public static final INVALID_POINTER:I = -0x1


# instance fields
.field private bounceBackAlphaAnim:Landroid/animation/ObjectAnimator;

.field private bounceToAlphaAnim:Landroid/animation/ObjectAnimator;

.field private downX:F

.field private mActivePointerId:I

.field private mBottomPanelSon:Landroid/widget/RelativeLayout;

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    .line 35
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 36
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mTouchSlop:I

    .line 38
    return-void
.end method

.method private checkTouchSlop(FF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 253
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 58
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 59
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 2
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    aput v1, v0, p1

    .line 69
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 70
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    aput v1, v0, p1

    .line 71
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionY:[F

    aput v1, v0, p1

    goto :goto_0
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 7
    .param p1, "pointerId"    # I

    .prologue
    const/4 v6, 0x0

    .line 75
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    array-length v4, v4

    if-gt v4, p1, :cond_2

    .line 76
    :cond_0
    add-int/lit8 v4, p1, 0x1

    new-array v0, v4, [F

    .line 77
    .local v0, "imx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v1, v4, [F

    .line 78
    .local v1, "imy":[F
    add-int/lit8 v4, p1, 0x1

    new-array v2, v4, [F

    .line 79
    .local v2, "lmx":[F
    add-int/lit8 v4, p1, 0x1

    new-array v3, v4, [F

    .line 80
    .local v3, "lmy":[F
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    if-eqz v4, :cond_1

    .line 81
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionY:[F

    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionY:[F

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    :cond_1
    iput-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    .line 89
    iput-object v1, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    .line 90
    iput-object v2, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    .line 91
    iput-object v3, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionY:[F

    .line 93
    .end local v0    # "imx":[F
    .end local v1    # "imy":[F
    .end local v2    # "lmx":[F
    .end local v3    # "lmy":[F
    :cond_2
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerId"    # I

    .prologue
    .line 96
    invoke-direct {p0, p3}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->ensureMotionHistorySizeForId(I)V

    .line 97
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 98
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 99
    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    .line 103
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 104
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 105
    .local v2, "pointerId":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 106
    .local v3, "x":F
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 107
    .local v4, "y":F
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    aput v3, v5, v2

    .line 108
    iget-object v5, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionY:[F

    aput v4, v5, v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "pointerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method


# virtual methods
.method public bounceBack()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public bounceTo()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    .line 46
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->clearMotionHistory()V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 298
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 117
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 118
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->cancel()V

    .line 121
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .line 123
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iput v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->downX:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 125
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 126
    .local v9, "y":F
    const/4 v10, 0x0

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 127
    .local v7, "pointerId":I
    invoke-direct {p0, v8, v9, v7}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->saveInitialMotion(FFI)V

    goto :goto_0

    .line 131
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 133
    .restart local v7    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 134
    .restart local v8    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 135
    .restart local v9    # "y":F
    invoke-direct {p0, v8, v9, v7}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->saveInitialMotion(FFI)V

    goto :goto_0

    .line 139
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    if-eqz v10, :cond_1

    .line 141
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    .line 142
    .local v6, "pointerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 143
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 144
    .restart local v7    # "pointerId":I
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 145
    .restart local v8    # "x":F
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 146
    .restart local v9    # "y":F
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionX:[F

    aget v10, v10, v7

    sub-float v2, v8, v10

    .line 147
    .local v2, "dx":F
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mInitialMotionY:[F

    aget v10, v10, v7

    sub-float v3, v9, v10

    .line 148
    .local v3, "dy":F
    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->checkTouchSlop(FF)Z

    move-result v5

    .line 149
    .local v5, "pastSlop":Z
    if-eqz v5, :cond_3

    .line 150
    iput v7, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    .line 154
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "pastSlop":Z
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 142
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    .restart local v5    # "pastSlop":Z
    .restart local v7    # "pointerId":I
    .restart local v8    # "x":F
    .restart local v9    # "y":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "i":I
    .end local v5    # "pastSlop":Z
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 160
    .restart local v7    # "pointerId":I
    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->clearMotionHistory(I)V

    goto :goto_0

    .line 165
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->cancel()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 184
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 185
    .local v1, "actionIndex":I
    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->cancel()V

    .line 188
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 238
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    return v10

    .line 190
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 191
    .local v8, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 192
    .local v9, "y":F
    const/4 v10, 0x0

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 193
    .local v7, "pointerId":I
    invoke-direct {p0, v8, v9, v7}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->saveInitialMotion(FFI)V

    goto :goto_0

    .line 197
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 199
    .restart local v7    # "pointerId":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 200
    .restart local v8    # "x":F
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 201
    .restart local v9    # "y":F
    invoke-direct {p0, v8, v9, v7}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->saveInitialMotion(FFI)V

    .line 202
    iput v7, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    goto :goto_0

    .line 206
    .end local v7    # "pointerId":I
    .end local v8    # "x":F
    .end local v9    # "y":F
    :pswitch_3
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 208
    .local v5, "index":I
    if-ltz v5, :cond_1

    .line 210
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 211
    .restart local v8    # "x":F
    iget-object v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mLastMotionX:[F

    iget v11, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    aget v10, v10, v11

    sub-float v4, v8, v10

    .line 213
    .local v4, "idx":F
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 217
    .end local v4    # "idx":F
    .end local v5    # "index":I
    .end local v8    # "x":F
    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 219
    .restart local v7    # "pointerId":I
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    if-ne v7, v10, :cond_2

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 221
    .local v6, "pointerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 222
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 223
    .local v3, "id":I
    iget v10, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    if-eq v3, v10, :cond_3

    .line 224
    iput v3, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mActivePointerId:I

    .line 229
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v6    # "pointerCount":I
    :cond_2
    invoke-direct {p0, v7}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->clearMotionHistory(I)V

    goto :goto_0

    .line 221
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v6    # "pointerCount":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v6    # "pointerCount":I
    .end local v7    # "pointerId":I
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->cancel()V

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public resetTranslationX()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public setBottomPanel(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "bottomPanelSon"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->mBottomPanelSon:Landroid/widget/RelativeLayout;

    .line 42
    return-void
.end method
