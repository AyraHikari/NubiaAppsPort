.class public Lcn/nubia/deskclock/control/AnimationClockManager;
.super Ljava/lang/Object;
.source "AnimationClockManager.java"

# interfaces
.implements Lcn/nubia/deskclock/inter/IAnimationManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationClockManager"


# instance fields
.field private mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

.field private mAlarmClockAnimationControl:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

.field private mAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/deskclock/inter/IAnimationOperator;",
            ">;"
        }
    .end annotation
.end field

.field private mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

.field private mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

.field private mCountDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

.field private mDeskClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/DeskClock;",
            ">;"
        }
    .end annotation
.end field

.field private mStopWatchAnimationControl:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

.field private mWorldTimeAnimationControl:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcn/nubia/deskclock/DeskClock;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mDeskClock:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-direct {p0}, Lcn/nubia/deskclock/control/AnimationClockManager;->initAnimControl()V

    .line 42
    return-void
.end method

.method private initAnimControl()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-virtual {p0}, Lcn/nubia/deskclock/control/AnimationClockManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mStopWatchAnimationControl:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    .line 53
    new-instance v0, Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-virtual {p0}, Lcn/nubia/deskclock/control/AnimationClockManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mCountDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .line 54
    new-instance v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-virtual {p0}, Lcn/nubia/deskclock/control/AnimationClockManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAlarmClockAnimationControl:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .line 55
    new-instance v0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-virtual {p0}, Lcn/nubia/deskclock/control/AnimationClockManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mWorldTimeAnimationControl:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .line 56
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 57
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAlarmClockAnimationControl:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mWorldTimeAnimationControl:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mStopWatchAnimationControl:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mCountDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mDeskClock:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mDeskClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getAnimationOperator(I)Lcn/nubia/deskclock/inter/IAnimationOperator;
    .locals 2
    .param p1, "operator"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/inter/IAnimationOperator;

    return-object v0
.end method

.method public getClockBottom(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ClockBottomLayout;->getClockBottom(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getClockView(I)Landroid/view/ViewStub;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ClockContainer;->getMainClock(I)Landroid/view/ViewStub;

    move-result-object v0

    return-object v0
.end method

.method public getWorkingHandler(I)Landroid/os/Handler;
    .locals 2
    .param p1, "operator"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAnimations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/inter/IAnimationOperator;

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/IAnimationOperator;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public initCurrentTable(I)V
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ClockBottomLayout;->setClockBottomVisibility(I)V

    .line 65
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ActionBarLayout;->setCurrentTab(I)V

    .line 66
    return-void
.end method

.method public setAlarmClockModel(Lcn/nubia/deskclock/model/AlarmClockModel;)V
    .locals 1
    .param p1, "model"    # Lcn/nubia/deskclock/model/AlarmClockModel;

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mAlarmClockAnimationControl:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->setWorkingMode(Lcn/nubia/deskclock/model/AlarmClockModel;)V

    .line 87
    return-void
.end method

.method public setClockViews(Lcn/nubia/deskclock/ui/ClockContainer;Lcn/nubia/deskclock/ui/ClockBottomLayout;Lcn/nubia/deskclock/ui/ActionBarLayout;)V
    .locals 0
    .param p1, "container"    # Lcn/nubia/deskclock/ui/ClockContainer;
    .param p2, "clockBottomLayout"    # Lcn/nubia/deskclock/ui/ClockBottomLayout;
    .param p3, "actionBarLayout"    # Lcn/nubia/deskclock/ui/ActionBarLayout;

    .prologue
    .line 76
    iput-object p1, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    .line 77
    iput-object p2, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    .line 78
    iput-object p3, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mActionBarLayout:Lcn/nubia/deskclock/ui/ActionBarLayout;

    .line 79
    return-void
.end method

.method public setCountDownModel(Lcn/nubia/deskclock/model/CountDownModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/deskclock/model/CountDownModel",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "model":Lcn/nubia/deskclock/model/CountDownModel;, "Lcn/nubia/deskclock/model/CountDownModel<*>;"
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mCountDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->setWorkingMode(Lcn/nubia/deskclock/model/CountDownModel;)V

    .line 95
    return-void
.end method

.method public setStopWatchModel(Lcn/nubia/deskclock/model/StopWatchModel;)V
    .locals 1
    .param p1, "model"    # Lcn/nubia/deskclock/model/StopWatchModel;

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mStopWatchAnimationControl:Lcn/nubia/deskclock/control/StopWatchAnimationControl;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/StopWatchAnimationControl;->setWorkingMode(Lcn/nubia/deskclock/model/StopWatchModel;)V

    .line 91
    return-void
.end method

.method public setTableWithAnim(II)V
    .locals 2
    .param p1, "currentPosition"    # I
    .param p2, "lastPosition"    # I

    .prologue
    .line 69
    const-string v0, "AnimationClockManager"

    const-string v1, "setTableWithAnim: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mClockContainer:Lcn/nubia/deskclock/ui/ClockContainer;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ClockContainer;->setMainClockVisible(I)V

    .line 71
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mClockBottomLayout:Lcn/nubia/deskclock/ui/ClockBottomLayout;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/ui/ClockBottomLayout;->setClockBottomVisibility(I)V

    .line 72
    return-void
.end method

.method public setWorldTimeModel(Lcn/nubia/deskclock/model/WorldTimeModel;)V
    .locals 1
    .param p1, "model"    # Lcn/nubia/deskclock/model/WorldTimeModel;

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/deskclock/control/AnimationClockManager;->mWorldTimeAnimationControl:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-virtual {v0, p1}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->setWorkingMode(Lcn/nubia/deskclock/model/WorldTimeModel;)V

    .line 83
    return-void
.end method
