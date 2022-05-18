.class Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;
.super Landroid/os/Handler;
.source "YearController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/YearController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/YearController;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/deftcontroller/YearController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    .line 78
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    return-void
.end method

.method private doStartUi_Year()V
    .locals 8

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const/4 v2, 0x0

    .line 102
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const/4 v0, 0x0

    .line 103
    .local v0, "frag":Lcn/nubia/calendar/submodule_year/view/YearFragment;
    iget-object v6, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-static {v6}, Lcn/nubia/calendar/deftcontroller/YearController;->access$100(Lcn/nubia/calendar/deftcontroller/YearController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 104
    .local v3, "res":Landroid/content/res/Resources;
    const-wide/16 v4, 0x0

    .line 108
    .local v4, "timeMillis":J
    new-instance v0, Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .end local v0    # "frag":Lcn/nubia/calendar/submodule_year/view/YearFragment;
    iget-object v6, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-static {v6}, Lcn/nubia/calendar/deftcontroller/YearController;->access$200(Lcn/nubia/calendar/deftcontroller/YearController;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-static {v7}, Lcn/nubia/calendar/deftcontroller/YearController;->access$000(Lcn/nubia/calendar/deftcontroller/YearController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcn/nubia/calendar/submodule_year/view/YearFragment;-><init>(Landroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 110
    .restart local v0    # "frag":Lcn/nubia/calendar/submodule_year/view/YearFragment;
    iget-object v6, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-static {v6}, Lcn/nubia/calendar/deftcontroller/YearController;->access$300(Lcn/nubia/calendar/deftcontroller/YearController;)Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 111
    const/16 v6, 0x1003

    invoke-virtual {v2, v6}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 112
    const v6, 0x7f1100a2

    invoke-virtual {v2, v6, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 113
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 115
    iget-object v6, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-static {v6, v0}, Lcn/nubia/calendar/deftcontroller/YearController;->access$402(Lcn/nubia/calendar/deftcontroller/YearController;Lcn/nubia/calendar/submodule_year/view/YearFragment;)Lcn/nubia/calendar/submodule_year/view/YearFragment;

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 82
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 84
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->doStartUi_Year()V

    goto :goto_0

    .line 87
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/text/format/Time;

    .line 88
    .local v0, "goToTime":Landroid/text/format/Time;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/YearController;->access$000(Lcn/nubia/calendar/deftcontroller/YearController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 90
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/YearController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/YearController;->access$000(Lcn/nubia/calendar/deftcontroller/YearController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_1
        0xfa8 -> :sswitch_0
    .end sparse-switch
.end method
