.class public Lcn/nubia/calendar/deftcontroller/MonthController;
.super Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
.source "MonthController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;,
        Lcn/nubia/calendar/deftcontroller/MonthController$InitData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MonthController"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mMainPane:Landroid/widget/FrameLayout;

.field private mMonthFragment:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

.field private mOutterHandler:Landroid/os/Handler;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 169
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 170
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mMainPane:Landroid/widget/FrameLayout;

    .line 171
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mMonthFragment:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 172
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 173
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mOutterHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/deftcontroller/MonthController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/calendar/deftcontroller/MonthController;Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;
    .param p1, "x1"    # Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .prologue
    .line 24
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mMonthFragment:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/deftcontroller/MonthController;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/MonthController;->doWith_GotoTime()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mOutterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController;

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doWith_GotoTime()V
    .locals 3

    .prologue
    .line 163
    const-string v0, "MonthController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Select_Day] time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 165
    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mMonthFragment:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->goToTime(Landroid/text/format/Time;)V

    .line 167
    return-void
.end method

.method private returnToToday()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 74
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mMonthFragment:Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "timeZone":Ljava/lang/String;
    const-string v2, "MonthController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MONTH] returnToToday timeZone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v1, :cond_0

    .line 84
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 86
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public destorySelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mOutterHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    :cond_0
    new-instance v0, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;-><init>()V

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->outterHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method public execCommand(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 58
    packed-switch p1, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/MonthController;->returnToToday()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/MonthController$InitData;)V
    .locals 2
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/MonthController$InitData;

    .prologue
    .line 40
    new-instance v0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;-><init>(Lcn/nubia/calendar/deftcontroller/MonthController;Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/MonthController;->setWorkHandler(Landroid/os/Handler;)V

    .line 42
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->fragment_manager:Landroid/app/FragmentManager;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 43
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->main_pane:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mMainPane:Landroid/widget/FrameLayout;

    .line 44
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 45
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->outterHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mOutterHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method public start(I)I
    .locals 2
    .param p1, "startFlag"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/MonthController;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0xfa8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public stop(I)I
    .locals 1
    .param p1, "stopFlag"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public updateGotoTime()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "MonthController"

    const-string v1, "[GOTO_TIME] updateGotoTime"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/16 v0, 0xfa7

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/MonthController;->sendWorkEvent(I)V

    .line 71
    return-void
.end method
