.class public Lcn/nubia/deskclock/ui/DeskClockViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "DeskClockViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeskClockViewPager"


# instance fields
.field LastDeleteMode:Z

.field private mIsChildViewEnabled:Z

.field private mIsInDeleteMode:Z

.field private mIsScrollDisabled:Z

.field mMEdownx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsChildViewEnabled:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsInDeleteMode:Z

    .line 44
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->LastDeleteMode:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsChildViewEnabled:Z

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsInDeleteMode:Z

    .line 44
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->LastDeleteMode:Z

    .line 23
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 119
    :goto_0
    :pswitch_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 122
    :goto_1
    return v1

    .line 111
    :pswitch_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsChildViewEnabled:Z

    .line 112
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsScrollDisabled:Z

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DeskClockViewPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyView dispatchTouchEvent error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeleteMode()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsInDeleteMode:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsScrollDisabled:Z

    if-eqz v4, :cond_0

    .line 78
    :goto_0
    return v2

    .line 53
    :cond_0
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsChildViewEnabled:Z

    if-nez v4, :cond_1

    move v2, v3

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 57
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsInDeleteMode:Z

    if-eqz v3, :cond_3

    .line 72
    iget v3, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mMEdownx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 75
    :cond_3
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 59
    :pswitch_1
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->LastDeleteMode:Z

    if-ne v4, v3, :cond_2

    iget-boolean v3, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsInDeleteMode:Z

    if-nez v3, :cond_2

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mMEdownx:F

    goto :goto_1

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DeskClockViewPager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsScrollDisabled:Z

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 99
    :goto_0
    return v1

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 89
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 99
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setChildViewEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsChildViewEnabled:Z

    .line 31
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsInDeleteMode:Z

    .line 35
    const/4 p1, 0x0

    if-eqz p1, :cond_0

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->LastDeleteMode:Z

    .line 38
    :cond_0
    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 26
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/DeskClockViewPager;->mIsScrollDisabled:Z

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
