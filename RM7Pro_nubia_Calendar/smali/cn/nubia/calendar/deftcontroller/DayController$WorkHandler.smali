.class Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;
.super Landroid/os/Handler;
.source "DayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/DayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/DayController;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/deftcontroller/DayController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 105
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    .line 106
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 107
    return-void
.end method

.method private doStartUi_Day()V
    .locals 9

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    const/4 v7, 0x0

    .line 192
    .local v7, "ft":Landroid/app/FragmentTransaction;
    const/4 v1, 0x0

    .line 193
    .local v1, "frag":Lcn/nubia/calendar/submodule_day/view/DayFragment;
    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v4}, Lcn/nubia/calendar/deftcontroller/DayController;->access$400(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 194
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v4}, Lcn/nubia/calendar/deftcontroller/DayController;->access$200(Lcn/nubia/calendar/deftcontroller/DayController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v2

    .line 198
    .local v2, "timeMillis":J
    new-instance v1, Lcn/nubia/calendar/submodule_day/view/DayFragment;

    .end local v1    # "frag":Lcn/nubia/calendar/submodule_day/view/DayFragment;
    const/4 v4, 0x1

    iget-object v5, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v5}, Lcn/nubia/calendar/deftcontroller/DayController;->access$500(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v6}, Lcn/nubia/calendar/deftcontroller/DayController;->access$200(Lcn/nubia/calendar/deftcontroller/DayController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcn/nubia/calendar/submodule_day/view/DayFragment;-><init>(JILandroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 200
    .restart local v1    # "frag":Lcn/nubia/calendar/submodule_day/view/DayFragment;
    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v4}, Lcn/nubia/calendar/deftcontroller/DayController;->access$600(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 201
    const/16 v4, 0x1003

    invoke-virtual {v7, v4}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 202
    const v4, 0x7f1100a2

    invoke-virtual {v7, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 203
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 205
    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v4, v1}, Lcn/nubia/calendar/deftcontroller/DayController;->access$302(Lcn/nubia/calendar/deftcontroller/DayController;Lcn/nubia/calendar/submodule_day/view/DayFragment;)Lcn/nubia/calendar/submodule_day/view/DayFragment;

    .line 206
    return-void
.end method

.method private doWithUpdateGotoTime(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v12, v12, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    if-nez v12, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    .line 153
    .local v4, "gEi":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    iget-object v5, v4, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->selectedTime:Landroid/text/format/Time;

    .line 154
    .local v5, "selectedTime":Landroid/text/format/Time;
    iget-object v10, v4, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->startTime:Landroid/text/format/Time;

    .line 155
    .local v10, "startTime":Landroid/text/format/Time;
    iget-object v2, v4, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->endTime:Landroid/text/format/Time;

    .line 156
    .local v2, "endTime":Landroid/text/format/Time;
    iget-wide v12, v4, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->extraLong:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 157
    .local v3, "extraLong":Ljava/lang/Long;
    new-instance v11, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v12}, Lcn/nubia/calendar/deftcontroller/DayController;->access$200(Lcn/nubia/calendar/deftcontroller/DayController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v13}, Lcn/nubia/calendar/deftcontroller/DayController;->access$100(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 159
    .local v11, "time":Landroid/text/format/Time;
    const-wide/16 v8, 0x0

    .line 160
    .local v8, "startMillis":J
    if-eqz v10, :cond_2

    .line 161
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 164
    :cond_2
    if-eqz v5, :cond_3

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    .line 165
    invoke-virtual {v11, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 181
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v12}, Lcn/nubia/calendar/deftcontroller/DayController;->access$300(Lcn/nubia/calendar/deftcontroller/DayController;)Lcn/nubia/calendar/submodule_day/view/DayFragment;

    move-result-object v14

    .line 182
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v16, 0x1

    and-long v12, v12, v16

    const-wide/16 v16, 0x0

    cmp-long v12, v12, v16

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    .line 183
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x8

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    .line 181
    :goto_3
    invoke-virtual {v14, v5, v12, v13}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->goToTime(Landroid/text/format/Time;ZZ)V

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v12}, Lcn/nubia/calendar/deftcontroller/DayController;->access$200(Lcn/nubia/calendar/deftcontroller/DayController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-virtual {v12, v14, v15, v13}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v12}, Lcn/nubia/calendar/deftcontroller/DayController;->access$200(Lcn/nubia/calendar/deftcontroller/DayController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v12

    invoke-virtual {v12}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setUpdateTopBarTrigger()V

    goto/16 :goto_0

    .line 167
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-eqz v12, :cond_5

    .line 171
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 172
    .local v6, "mtimeMillis":J
    cmp-long v12, v6, v8

    if-ltz v12, :cond_4

    if-eqz v2, :cond_5

    const/4 v12, 0x0

    .line 174
    invoke-virtual {v2, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v12, v6, v12

    if-lez v12, :cond_5

    .line 175
    :cond_4
    invoke-virtual {v11, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 178
    .end local v6    # "mtimeMillis":J
    :cond_5
    move-object v5, v11

    goto :goto_1

    .line 182
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 183
    :cond_7
    const/4 v13, 0x0

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "outMsg":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    :cond_0
    return-void

    .line 113
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->doStartUi_Day()V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/DayController;->access$000(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfa2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 118
    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/DayController;->access$000(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfa9

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_4
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/DayController;->access$000(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfaa

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 126
    goto :goto_0

    .line 128
    :pswitch_5
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/DayController;->access$000(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfa4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 130
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 133
    :pswitch_6
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->this$0:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/DayController;->access$000(Lcn/nubia/calendar/deftcontroller/DayController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfab

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_7
    invoke-direct {p0, p1}, Lcn/nubia/calendar/deftcontroller/DayController$WorkHandler;->doWithUpdateGotoTime(Landroid/os/Message;)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0xfa2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
