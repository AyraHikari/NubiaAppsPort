.class Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper$EditDoneRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Done"
.end annotation


# instance fields
.field private mCode:I

.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .prologue
    .line 1048
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->mCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1059
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Z)Z

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    if-nez v2, :cond_0

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    const/4 v3, 0x3

    iput v3, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 1071
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->mCode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 1072
    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1200(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 1073
    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canRespond(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 1074
    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canModifyEvent(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mView:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->prepareForSave()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 1075
    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->isEmptyNewEvent()Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/CalendarEventModel;->normalizeReminders()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mHelper:Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v9, v9, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget v10, v10, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    .line 1076
    invoke-virtual {v2, v3, v9, v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->saveEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/model/CalendarEventModel;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1078
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 1079
    .local v20, "intent":Landroid/content/Intent;
    const-string v2, "ACTION_EVENTS_RELOAD"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1085
    const v21, 0x7f0c0084

    .line 1096
    .local v21, "stringResource":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, v21

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1097
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/CalendarEventModel;->getWrongFormatPhoneTip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/CalendarEventModel;->getWrongFormatPhoneTip()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1101
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1103
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/CalendarEventModel;->getWrongFormatEmailTip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v3, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-virtual {v3}, Lcn/nubia/calendar/model/CalendarEventModel;->getWrongFormatEmailTip()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1105
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1116
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v21    # "stringResource":I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->mCode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mOriginalModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 1117
    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->canModifyCalendar(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v4, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 1119
    .local v4, "begin":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v6, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 1120
    .local v6, "end":J
    const/16 v24, -0x1

    .line 1121
    .local v24, "which":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModification:I

    packed-switch v2, :pswitch_data_0

    .line 1132
    :goto_3
    move/from16 v8, v24

    .line 1133
    .local v8, "whichFlag":I
    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;JJI)V

    invoke-interface {v9, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1158
    .end local v4    # "begin":J
    .end local v6    # "end":J
    .end local v8    # "whichFlag":I
    .end local v24    # "which":I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->mCode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 1161
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->mCode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v12, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    .line 1164
    .local v12, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v6, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mEnd:J

    .line 1165
    .restart local v6    # "end":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    if-eqz v2, :cond_5

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v23

    .line 1169
    .local v23, "tz":Ljava/lang/String;
    new-instance v22, Landroid/text/format/Time;

    const-string v2, "UTC"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v22, "t":Landroid/text/format/Time;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 1171
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1172
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 1174
    const-string v2, "UTC"

    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1175
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1176
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1177
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1179
    .end local v22    # "t":Landroid/text/format/Time;
    .end local v23    # "tz":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v9

    const-wide/16 v10, -0x1

    const/16 v16, 0x0

    move-wide v14, v6

    .line 1180
    invoke-virtual/range {v9 .. v16}, Lcn/nubia/calendar/CalendarController;->launchViewEvent(JJJI)V

    .line 1184
    .end local v6    # "end":J
    .end local v12    # "start":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    .line 1185
    .local v17, "a":Landroid/app/Activity;
    if-eqz v17, :cond_7

    .line 1189
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v14, 0x3e8

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1400(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v2, v3, v10, v11, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v14, 0x44c

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1600(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v2, v3, v10, v11, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v14, 0x44c

    add-long/2addr v10, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    move-object/from16 v0, v17

    invoke-static {v9, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1700(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v2, v3, v10, v11, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1197
    :goto_4
    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->finish()V

    .line 1204
    .end local v17    # "a":Landroid/app/Activity;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v19

    .line 1205
    .local v19, "focusedView":Landroid/view/View;
    if-eqz v19, :cond_8

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 1207
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v9, 0x0

    .line 1206
    invoke-virtual {v2, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1208
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->clearFocus()V

    .line 1210
    :cond_8
    return-void

    .line 1060
    .end local v19    # "focusedView":Landroid/view/View;
    :catch_0
    move-exception v18

    .line 1061
    .local v18, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 1087
    .end local v18    # "e":Ljava/lang/InterruptedException;
    .restart local v20    # "intent":Landroid/content/Intent;
    :cond_9
    const v21, 0x7f0c0022

    .restart local v21    # "stringResource":I
    goto/16 :goto_1

    .line 1090
    .end local v21    # "stringResource":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v2, v2, Lcn/nubia/calendar/model/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1091
    const v21, 0x7f0c0083

    .restart local v21    # "stringResource":I
    goto/16 :goto_1

    .line 1093
    .end local v21    # "stringResource":I
    :cond_b
    const v21, 0x7f0c0021

    .restart local v21    # "stringResource":I
    goto/16 :goto_1

    .line 1109
    .end local v20    # "intent":Landroid/content/Intent;
    .end local v21    # "stringResource":I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->mCode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 1110
    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$1200(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c003a

    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1112
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 1123
    .restart local v4    # "begin":J
    .restart local v6    # "end":J
    .restart local v24    # "which":I
    :pswitch_0
    const/16 v24, 0x0

    .line 1124
    goto/16 :goto_3

    .line 1126
    :pswitch_1
    const/16 v24, 0x1

    .line 1127
    goto/16 :goto_3

    .line 1129
    :pswitch_2
    const/16 v24, 0x2

    goto/16 :goto_3

    .line 1192
    .end local v4    # "begin":J
    .end local v6    # "end":J
    .end local v24    # "which":I
    .restart local v17    # "a":Landroid/app/Activity;
    :catch_1
    move-exception v18

    .line 1193
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDoneCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 1052
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment$Done;->mCode:I

    .line 1053
    return-void
.end method
