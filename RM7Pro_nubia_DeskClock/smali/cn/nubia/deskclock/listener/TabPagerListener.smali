.class public Lcn/nubia/deskclock/listener/TabPagerListener;
.super Ljava/lang/Object;
.source "TabPagerListener.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private listViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private mActionBarLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/ui/ActionBarLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/control/AnimationClockManager;",
            ">;"
        }
    .end annotation
.end field

.field private mLastItem:I

.field private mMotionHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/ui/ClockMotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mTabIndicator:Lcn/nubia/deskclock/ui/TabIndicator;

.field private mTabPagerAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/adapter/TabPagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/control/AnimationClockManager;Lcn/nubia/deskclock/ui/ActionBarLayout;Lcn/nubia/deskclock/ui/ClockMotionHelper;Lcn/nubia/deskclock/adapter/TabPagerAdapter;)V
    .locals 1
    .param p1, "animationClockManager"    # Lcn/nubia/deskclock/control/AnimationClockManager;
    .param p2, "actionBarLayout"    # Lcn/nubia/deskclock/ui/ActionBarLayout;
    .param p3, "clockMotionHelper"    # Lcn/nubia/deskclock/ui/ClockMotionHelper;
    .param p4, "pagerAdapter"    # Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mLastItem:I

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mAnimationManager:Ljava/lang/ref/WeakReference;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mActionBarLayout:Ljava/lang/ref/WeakReference;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mMotionHelper:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mTabPagerAdapter:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method private getActionBarLayout()Lcn/nubia/deskclock/ui/ActionBarLayout;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mActionBarLayout:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mActionBarLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mActionBarLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/ActionBarLayout;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAnimationClockManager()Lcn/nubia/deskclock/control/AnimationClockManager;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mAnimationManager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mAnimationManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mAnimationManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/control/AnimationClockManager;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getClockMotionHelper()Lcn/nubia/deskclock/ui/ClockMotionHelper;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mMotionHelper:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mMotionHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mMotionHelper:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/ui/ClockMotionHelper;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->listViewWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->listViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->listViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabPagerAdapter()Lcn/nubia/deskclock/adapter/TabPagerAdapter;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mTabPagerAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mTabPagerAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mTabPagerAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 49
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 93
    const-string v2, "DeskClock:[TabPagerListener]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [onPageSelected] position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ;; mLastItem : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mLastItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getActionBarLayout()Lcn/nubia/deskclock/ui/ActionBarLayout;

    move-result-object v0

    .line 95
    .local v0, "actionBarLayout":Lcn/nubia/deskclock/ui/ActionBarLayout;
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getTabPagerAdapter()Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    move-result-object v1

    .line 96
    .local v1, "tabPagerAdapter":Lcn/nubia/deskclock/adapter/TabPagerAdapter;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget v2, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mLastItem:I

    if-eq v2, p1, :cond_2

    .line 100
    iget v2, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mLastItem:I

    invoke-virtual {p0, p1, v2}, Lcn/nubia/deskclock/listener/TabPagerListener;->onPageSelectedForAnim(II)V

    .line 102
    :cond_2
    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setCurrentTab(I)V

    .line 103
    invoke-virtual {v1, p1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->setCurrentTab(I)V

    .line 104
    iput p1, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mLastItem:I

    goto :goto_0
.end method

.method public onPageSelectedForAnim(II)V
    .locals 11
    .param p1, "currentPosition"    # I
    .param p2, "lastPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 56
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getAnimationClockManager()Lcn/nubia/deskclock/control/AnimationClockManager;

    move-result-object v0

    .line 57
    .local v0, "animationClockManager":Lcn/nubia/deskclock/control/AnimationClockManager;
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getTabPagerAdapter()Lcn/nubia/deskclock/adapter/TabPagerAdapter;

    move-result-object v7

    .line 58
    .local v7, "tabPagerAdapter":Lcn/nubia/deskclock/adapter/TabPagerAdapter;
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getClockMotionHelper()Lcn/nubia/deskclock/ui/ClockMotionHelper;

    move-result-object v1

    .line 59
    .local v1, "clockMotionHelper":Lcn/nubia/deskclock/ui/ClockMotionHelper;
    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcn/nubia/deskclock/control/AnimationClockManager;->setTableWithAnim(II)V

    .line 63
    invoke-virtual {v7, p1}, Lcn/nubia/deskclock/adapter/TabPagerAdapter;->getItem(I)Lcn/nubia/deskclock/fragment/BaseFragment;

    move-result-object v2

    .line 64
    .local v2, "deskFragment":Lcn/nubia/deskclock/fragment/BaseFragment;
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Lcn/nubia/deskclock/fragment/BaseFragment;->getMotionContentView()Landroid/widget/ListView;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->listViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 65
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 66
    .local v6, "listView":Landroid/widget/ListView;
    if-eqz v2, :cond_4

    if-eqz v6, :cond_4

    .line 67
    invoke-virtual {p0, v6}, Lcn/nubia/deskclock/listener/TabPagerListener;->setMotionContentView(Landroid/widget/ListView;)V

    .line 68
    const/4 v9, 0x3

    if-ne p1, v9, :cond_2

    .line 69
    invoke-virtual {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->setCountDownEmptyListViewVisible()V

    .line 71
    :cond_2
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getMobileModel()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NX666"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getMobileModel()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NX669"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 72
    :cond_3
    const/16 v5, 0x645

    .line 73
    .local v5, "listHeightSize":I
    sget-object v9, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "cc_navi_status"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v3, :cond_5

    .line 74
    .local v3, "enable":Z
    :goto_1
    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .local v4, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v3, :cond_6

    .line 76
    const/16 v5, 0x5d7

    .line 80
    :goto_2
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 81
    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    .line 83
    invoke-virtual {v6}, Landroid/widget/ListView;->postInvalidate()V

    .line 86
    .end local v3    # "enable":Z
    .end local v4    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "listHeightSize":I
    :cond_4
    invoke-virtual {v1, p1}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setClockVisibilityControl(I)V

    .line 87
    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v8

    invoke-interface {v8}, Lcn/nubia/deskclock/inter/IAnimationOperator;->startAnimation()V

    .line 88
    invoke-virtual {v0, p2}, Lcn/nubia/deskclock/control/AnimationClockManager;->getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;

    move-result-object v8

    invoke-interface {v8}, Lcn/nubia/deskclock/inter/IAnimationOperator;->endAnimation()V

    goto :goto_0

    .restart local v5    # "listHeightSize":I
    :cond_5
    move v3, v8

    .line 73
    goto :goto_1

    .line 78
    .restart local v3    # "enable":Z
    .restart local v4    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/16 v5, 0x64a

    goto :goto_2
.end method

.method public setCountDownEmptyListViewVisible()V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readStatusFromPref(Landroid/content/Context;)I

    move-result v1

    .line 116
    .local v1, "status":I
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getClockMotionHelper()Lcn/nubia/deskclock/ui/ClockMotionHelper;

    move-result-object v0

    .line 117
    .local v0, "clockMotionHelper":Lcn/nubia/deskclock/ui/ClockMotionHelper;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setEmptyLayoutVisible(Z)V

    .line 122
    :cond_0
    return-void
.end method

.method public setLastItem(I)V
    .locals 0
    .param p1, "item"    # I

    .prologue
    .line 125
    iput p1, p0, Lcn/nubia/deskclock/listener/TabPagerListener;->mLastItem:I

    .line 126
    return-void
.end method

.method public setMotionContentView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ListView;

    .prologue
    .line 108
    invoke-direct {p0}, Lcn/nubia/deskclock/listener/TabPagerListener;->getClockMotionHelper()Lcn/nubia/deskclock/ui/ClockMotionHelper;

    move-result-object v0

    .line 109
    .local v0, "clockMotionHelper":Lcn/nubia/deskclock/ui/ClockMotionHelper;
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ClockMotionHelper;->setContentView(Landroid/widget/ListView;)V

    .line 112
    :cond_0
    return-void
.end method
