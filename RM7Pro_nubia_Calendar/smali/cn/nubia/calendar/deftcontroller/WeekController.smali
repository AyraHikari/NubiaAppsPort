.class public Lcn/nubia/calendar/deftcontroller/WeekController;
.super Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
.source "WeekController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/WeekController$WorkHandler;,
        Lcn/nubia/calendar/deftcontroller/WeekController$InitData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mMainPane:Landroid/widget/FrameLayout;

.field private mOutterHandler:Landroid/os/Handler;

.field private mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 217
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 218
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mMainPane:Landroid/widget/FrameLayout;

    .line 219
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    .line 220
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 221
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mOutterHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/deftcontroller/WeekController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mOutterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/WeekController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/WeekController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/deftcontroller/WeekController;)Lcn/nubia/calendar/submodule_day/view/DayFragment;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/calendar/deftcontroller/WeekController;Lcn/nubia/calendar/submodule_day/view/DayFragment;)Lcn/nubia/calendar/submodule_day/view/DayFragment;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_day/view/DayFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/calendar/deftcontroller/WeekController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/deftcontroller/WeekController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/deftcontroller/WeekController;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/WeekController;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method private returnToToday()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    if-nez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "timeZone":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 95
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public destroySelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mOutterHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    :cond_0
    new-instance v0, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;-><init>()V

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->outterHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method public execCommand(I)V
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 69
    sparse-switch p1, :sswitch_data_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 71
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/WeekController;->returnToToday()V

    goto :goto_0

    .line 74
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->eventsChanged()V

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xfac -> :sswitch_1
    .end sparse-switch
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/WeekController$InitData;)V
    .locals 2
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/WeekController$InitData;

    .prologue
    .line 51
    new-instance v0, Lcn/nubia/calendar/deftcontroller/WeekController$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/deftcontroller/WeekController$WorkHandler;-><init>(Lcn/nubia/calendar/deftcontroller/WeekController;Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/WeekController;->setWorkHandler(Landroid/os/Handler;)V

    .line 53
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->fragment_manager:Landroid/app/FragmentManager;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 54
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->main_pane:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mMainPane:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 56
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->outterHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mOutterHandler:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method public start(I)I
    .locals 2
    .param p1, "startFlag"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0xfa8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public stop(I)I
    .locals 1
    .param p1, "stopFlag"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public updateGotoTime()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWeekFragment:Lcn/nubia/calendar/submodule_day/view/DayFragment;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/WeekController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->goToTime(Landroid/text/format/Time;)V

    .line 215
    :cond_0
    return-void
.end method
