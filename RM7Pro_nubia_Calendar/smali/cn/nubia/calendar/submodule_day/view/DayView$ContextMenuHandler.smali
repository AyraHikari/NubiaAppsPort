.class Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0

    .prologue
    .line 5783
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/submodule_day/view/DayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayView;
    .param p2, "x1"    # Lcn/nubia/calendar/submodule_day/view/DayView$1;

    .prologue
    .line 5783
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;-><init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 22
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 5786
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5850
    :pswitch_0
    const/4 v3, 0x0

    .line 5853
    :goto_0
    return v3

    .line 5788
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    move-object/from16 v18, v0

    new-instance v3, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 5790
    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v4

    iget-wide v4, v4, Lcn/nubia/calendar/model/Event;->id:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v10}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v10

    iget-wide v6, v10, Lcn/nubia/calendar/model/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 5791
    invoke-static {v10}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v10

    iget-wide v8, v10, Lcn/nubia/calendar/model/Event;->endMillis:J

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    .line 5789
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3400(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    .line 5853
    :cond_0
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 5796
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    move-object/from16 v18, v0

    new-instance v3, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 5798
    invoke-static {v10}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v10

    iget-wide v6, v10, Lcn/nubia/calendar/model/Event;->startMillis:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 5799
    invoke-static {v10}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v10

    iget-wide v8, v10, Lcn/nubia/calendar/model/Event;->endMillis:J

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    .line 5797
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3500(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    goto :goto_1

    .line 5804
    :pswitch_3
    new-instance v2, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    invoke-direct {v2}, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;-><init>()V

    .line 5805
    .local v2, "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->startTime:Landroid/text/format/Time;

    .line 5807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1500(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xfa7

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 5809
    .local v20, "msg":Landroid/os/Message;
    if-eqz v20, :cond_0

    .line 5810
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 5818
    .end local v2    # "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    .end local v20    # "msg":Landroid/os/Message;
    :pswitch_4
    new-instance v2, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;

    invoke-direct {v2}, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;-><init>()V

    .line 5819
    .restart local v2    # "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v3

    iput-object v3, v2, Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;->startTime:Landroid/text/format/Time;

    .line 5821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$1500(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xfa7

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 5823
    .restart local v20    # "msg":Landroid/os/Message;
    if-eqz v20, :cond_0

    .line 5824
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 5832
    .end local v2    # "ei":Lcn/nubia/calendar/deftcontroller/DayController$GotoEventInfo;
    .end local v20    # "msg":Landroid/os/Message;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v6

    .line 5833
    .local v6, "startMillis":J
    const-wide/32 v4, 0x36ee80

    add-long v8, v6, v4

    .line 5834
    .local v8, "endMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    move-object/from16 v18, v0

    new-instance v3, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3600(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    goto/16 :goto_1

    .line 5839
    .end local v6    # "startMillis":J
    .end local v8    # "endMillis":J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v21

    .line 5841
    .local v21, "selectedEvent":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, v21

    iget-wide v14, v0, Lcn/nubia/calendar/model/Event;->startMillis:J

    .line 5842
    .local v14, "begin":J
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcn/nubia/calendar/model/Event;->endMillis:J

    move-wide/from16 v16, v0

    .line 5843
    .local v16, "end":J
    move-object/from16 v0, v21

    iget-wide v12, v0, Lcn/nubia/calendar/model/Event;->id:J

    .line 5844
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_day/view/DayView$ContextMenuHandler;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    new-instance v11, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    const-wide/16 v18, 0x0

    invoke-direct/range {v11 .. v19}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    invoke-static {v3, v11}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$3700(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    goto/16 :goto_1

    .line 5786
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
