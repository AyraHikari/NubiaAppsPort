.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

.field final synthetic val$begin:J

.field final synthetic val$end:J

.field final synthetic val$whichFlag:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;JJI)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    .prologue
    .line 1133
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iput-wide p2, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->val$begin:J

    iput-wide p4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->val$end:J

    iput p6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->val$whichFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1136
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v4

    const-string v7, "android.permission.READ_CALENDAR"

    invoke-static {v4, v7}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1137
    new-instance v1, Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 1138
    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v7

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v8

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    invoke-direct {v1, v7, v8, v4}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 1139
    .local v1, "deleteHelper":Lcn/nubia/calendar/DeleteEventHelper;
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v1, v4}, Lcn/nubia/calendar/DeleteEventHelper;->isMoreEventsAfterDel(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v2

    .line 1140
    .local v2, "flagIsMoreEventsAfterDel":Z
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 1141
    .local v3, "message":Landroid/os/Message;
    if-eqz v2, :cond_2

    .line 1142
    iput v5, v3, Landroid/os/Message;->what:I

    .line 1146
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1147
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "begin"

    iget-wide v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->val$begin:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1148
    const-string v4, "end"

    iget-wide v6, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->val$end:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1149
    const-string v4, "which"

    iget v5, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->val$whichFlag:I

    int-to-long v6, v5

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1150
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1151
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1152
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;->this$1:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;

    iget-object v4, v4, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1154
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "deleteHelper":Lcn/nubia/calendar/DeleteEventHelper;
    .end local v2    # "flagIsMoreEventsAfterDel":Z
    .end local v3    # "message":Landroid/os/Message;
    :cond_0
    return-void

    :cond_1
    move v4, v6

    .line 1138
    goto :goto_0

    .line 1144
    .restart local v1    # "deleteHelper":Lcn/nubia/calendar/DeleteEventHelper;
    .restart local v2    # "flagIsMoreEventsAfterDel":Z
    .restart local v3    # "message":Landroid/os/Message;
    :cond_2
    iput v6, v3, Landroid/os/Message;->what:I

    goto :goto_1
.end method
