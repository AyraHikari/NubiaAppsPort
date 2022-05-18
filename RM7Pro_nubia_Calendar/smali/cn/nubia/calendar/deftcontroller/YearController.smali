.class public Lcn/nubia/calendar/deftcontroller/YearController;
.super Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
.source "YearController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;,
        Lcn/nubia/calendar/deftcontroller/YearController$InitData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YearController"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mMainPane:Landroid/widget/FrameLayout;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mYearFragment:Lcn/nubia/calendar/submodule_year/view/YearFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 125
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 126
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mMainPane:Landroid/widget/FrameLayout;

    .line 127
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mYearFragment:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .line 128
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/deftcontroller/YearController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/YearController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/YearController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/YearController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/YearController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/YearController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/deftcontroller/YearController;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/YearController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/calendar/deftcontroller/YearController;Lcn/nubia/calendar/submodule_year/view/YearFragment;)Lcn/nubia/calendar/submodule_year/view/YearFragment;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/YearController;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mYearFragment:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    return-object p1
.end method

.method private returnToToday()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 67
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mYearFragment:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    if-nez v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 72
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public destorySelf()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public execCommand(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/YearController;->returnToToday()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/YearController$InitData;)V
    .locals 2
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/YearController$InitData;

    .prologue
    .line 39
    new-instance v0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;-><init>(Lcn/nubia/calendar/deftcontroller/YearController;Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/YearController;->setWorkHandler(Landroid/os/Handler;)V

    .line 41
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/YearController$InitData;->fragment_manager:Landroid/app/FragmentManager;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 42
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/YearController$InitData;->main_pane:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mMainPane:Landroid/widget/FrameLayout;

    .line 43
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/YearController$InitData;->working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 44
    return-void
.end method

.method public start(I)I
    .locals 2
    .param p1, "startFlag"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0xfa8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public stop(I)I
    .locals 1
    .param p1, "stopFlag"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public updateGotoTime()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mYearFragment:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/YearController;->mYearFragment:Lcn/nubia/calendar/submodule_year/view/YearFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_year/view/YearFragment;->updateGoToTime()V

    .line 123
    :cond_0
    return-void
.end method
