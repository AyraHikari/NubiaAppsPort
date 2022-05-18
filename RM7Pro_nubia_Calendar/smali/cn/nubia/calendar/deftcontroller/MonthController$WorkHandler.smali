.class Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;
.super Landroid/os/Handler;
.source "MonthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/MonthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/MonthController;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/deftcontroller/MonthController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method

.method static synthetic access$300(Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;

    .prologue
    .line 90
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->doStartUi_Month()V

    return-void
.end method

.method private doStartUi_Month()V
    .locals 8

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const/4 v2, 0x0

    .line 144
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const/4 v0, 0x0

    .line 145
    .local v0, "frag":Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    iget-object v5, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v5}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$800(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 146
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 151
    .local v3, "gotoTime":Landroid/text/format/Time;
    new-instance v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .end local v0    # "frag":Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    iget-object v5, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v5}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$900(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v6}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$1000(Lcn/nubia/calendar/deftcontroller/MonthController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v7}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$1100(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcn/nubia/calendar/submodule_month/view/MonthScroll;-><init>(Landroid/content/Context;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;Landroid/os/Handler;)V

    .line 153
    .restart local v0    # "frag":Lcn/nubia/calendar/submodule_month/view/MonthScroll;
    iget-object v5, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v5}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$1200(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 154
    const/16 v5, 0x1003

    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 155
    const v5, 0x7f1100a2

    invoke-virtual {v2, v5, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 156
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 158
    iget-object v5, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v5, v0}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$1302(Lcn/nubia/calendar/deftcontroller/MonthController;Lcn/nubia/calendar/submodule_month/view/MonthScroll;)Lcn/nubia/calendar/submodule_month/view/MonthScroll;

    .line 159
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "hasReadAndWritePermission":Z
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$000(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$100(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$200(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CALENDAR"

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 100
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 101
    .local v1, "outMsg":Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 136
    :cond_1
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 139
    :cond_2
    return-void

    .line 98
    .end local v1    # "outMsg":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    .restart local v1    # "outMsg":Landroid/os/Message;
    :pswitch_1
    if-eqz v0, :cond_1

    .line 104
    sget-boolean v2, Lcn/nubia/calendar/HomeActivity;->FIRST_START:Z

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$400(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler$1;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler$1;-><init>(Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 112
    :cond_4
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->doStartUi_Month()V

    goto :goto_1

    .line 116
    :pswitch_2
    if-eqz v0, :cond_1

    .line 117
    sget-boolean v2, Lcn/nubia/calendar/HomeActivity;->FIRST_START:Z

    if-eqz v2, :cond_5

    .line 118
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$600(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler$2;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler$2;-><init>(Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 125
    :cond_5
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$500(Lcn/nubia/calendar/deftcontroller/MonthController;)V

    goto :goto_1

    .line 129
    :pswitch_3
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/MonthController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-static {v2}, Lcn/nubia/calendar/deftcontroller/MonthController;->access$700(Lcn/nubia/calendar/deftcontroller/MonthController;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xfa4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 131
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0xfa4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
