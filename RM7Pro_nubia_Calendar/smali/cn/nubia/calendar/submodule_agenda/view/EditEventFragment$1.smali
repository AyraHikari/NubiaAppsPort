.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 166
    :goto_0
    const/4 v8, 0x0

    return v8

    .line 144
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcn/nubia/calendar/DeleteEventHelper;

    .line 145
    .local v3, "deleteHelper":Lcn/nubia/calendar/DeleteEventHelper;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v19

    .line 146
    .local v19, "data":Landroid/os/Bundle;
    const-string v8, "data"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 147
    .local v4, "begin":J
    const-string v8, "end"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 148
    .local v6, "end":J
    const-string v8, "which"

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 149
    .local v9, "which":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v8, v8, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJLcn/nubia/calendar/model/CalendarEventModel;IZ)V

    goto :goto_0

    .line 152
    .end local v3    # "deleteHelper":Lcn/nubia/calendar/DeleteEventHelper;
    .end local v4    # "begin":J
    .end local v6    # "end":J
    .end local v9    # "which":I
    .end local v19    # "data":Landroid/os/Bundle;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcn/nubia/calendar/DeleteEventHelper;

    .line 153
    .local v11, "deleteHelper2":Lcn/nubia/calendar/DeleteEventHelper;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v20

    .line 154
    .local v20, "data2":Landroid/os/Bundle;
    const-string v8, "data"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 155
    .local v12, "begin2":J
    const-string v8, "end"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 156
    .local v14, "end2":J
    const-string v8, "which"

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 157
    .local v17, "which2":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v0, v8, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v16, v0

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJLcn/nubia/calendar/model/CalendarEventModel;IZ)V

    goto :goto_0

    .line 160
    .end local v11    # "deleteHelper2":Lcn/nubia/calendar/DeleteEventHelper;
    .end local v12    # "begin2":J
    .end local v14    # "end2":J
    .end local v17    # "which2":I
    .end local v20    # "data2":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 161
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "queryType"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 162
    .local v22, "queryType":I
    const-string v8, "flagIsMoreEventsAfterDel"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 163
    .local v21, "flagIsMoreEventsAfterDel":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$1;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v8, v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;IZ)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
