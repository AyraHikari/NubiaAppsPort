.class public Lcn/nubia/calendar/deftcontroller/UserActionController;
.super Lcn/nubia/deftmachanism/DeftController;
.source "UserActionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/UserActionController$WorkHandler;,
        Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;,
        Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;
    }
.end annotation


# static fields
.field private static final ATTENDEE_STATUS_ACCEPTED_MASK:I = 0x2

.field private static final ATTENDEE_STATUS_DECLINED_MASK:I = 0x4

.field private static final ATTENDEE_STATUS_NONE_MASK:I = 0x1

.field private static final ATTENDEE_STATUS_TENTATIVE_MASK:I = 0x8

.field private static final ATTENTEE_STATUS_MASK:J = 0xffL

.field private static final BUNDLE_KEY_DEFAULT_TIME:Ljava/lang/String; = "key_default_time"

.field public static final EVENT_EDIT_ON_LAUNCH:Ljava/lang/String; = "editMode"

.field public static final EXTRA_CREATE_ALL_DAY:J = 0x10L

.field public static final FROM_AGENDA_LSIT:I = 0x1

.field public static final NOT_FROM_AGENDA_LSIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UserActionController"

.field public static final USER_ACTION_CMD_ADD_ACTION:I = 0x64

.field public static final USER_ACTION_CMD_DELETE_ACTION:I = 0x69

.field public static final USER_ACTION_CMD_EDIT_ACTION:I = 0x67

.field public static final USER_ACTION_CMD_LIST_ACTION:I = 0x65

.field public static final USER_ACTION_CMD_SHOW_ACTION_DETAIL:I = 0x66

.field public static final USER_ACTION_CMD_SHOW_ACTION_INFO:I = 0x68

.field public static final USER_ACT_MSG_REFRESH:I = 0xbc3


# instance fields
.field private mOutterHandler:Landroid/os/Handler;

.field private mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcn/nubia/deftmachanism/DeftController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 241
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 242
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 243
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mOutterHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method private addAction(JJZ)V
    .locals 3
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "allDayEvent"    # Z

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 150
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    const-string v1, "allDay"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method private convertToResponse(J)I
    .locals 5
    .param p1, "extraLong"    # J

    .prologue
    const/4 v1, 0x1

    .line 203
    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 204
    .local v0, "response":I
    packed-switch v0, :pswitch_data_0

    .line 214
    :pswitch_0
    const-string v2, "UserActionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attendee response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    :pswitch_1
    return v1

    .line 206
    :pswitch_2
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 212
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private deleteAction(JJJ)V
    .locals 9
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "eventId"    # J

    .prologue
    .line 142
    new-instance v1, Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 144
    .local v1, "deleteEventHelper":Lcn/nubia/calendar/DeleteEventHelper;
    const/4 v8, -0x1

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 145
    return-void
.end method

.method private eidtAction(JJJ)V
    .locals 9
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "eventId"    # J

    .prologue
    .line 161
    const/4 v8, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcn/nubia/calendar/deftcontroller/UserActionController;->launchAction(JJJZ)V

    .line 162
    return-void
.end method

.method private launchAction(JJJZ)V
    .locals 5
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "eventId"    # J
    .param p7, "canEidt"    # Z

    .prologue
    .line 166
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 167
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "beginTime"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    const-string v2, "endTime"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    const-string v2, "editMode"

    invoke-virtual {v0, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method

.method private listAction()V
    .locals 6

    .prologue
    .line 188
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    const-wide/16 v0, 0x0

    .line 190
    .local v0, "curSelTime":J
    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v3

    .line 192
    .local v3, "tmpTime":Landroid/text/format/Time;
    if-eqz v3, :cond_0

    .line 193
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 195
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    const-class v5, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    const-string v4, "key_default_time"

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const/high16 v4, 0x20020000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    iget-object v4, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method private showAction(JJJ)V
    .locals 9
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "eventId"    # J

    .prologue
    .line 157
    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcn/nubia/calendar/deftcontroller/UserActionController;->launchAction(JJJZ)V

    .line 158
    return-void
.end method


# virtual methods
.method public execCommand(ILandroid/os/Message;)V
    .locals 12
    .param p1, "cmd"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .line 93
    .local v0, "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    if-eqz v0, :cond_1

    .line 94
    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$000(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v2

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$100(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v4

    .line 95
    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$200(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v6

    const-wide/16 v8, 0x10

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    const/4 v6, 0x1

    :goto_1
    move-object v1, p0

    .line 94
    invoke-direct/range {v1 .. v6}, Lcn/nubia/calendar/deftcontroller/UserActionController;->addAction(JJZ)V

    goto :goto_0

    .line 95
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 97
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v11

    .line 98
    .local v11, "startTime":Landroid/text/format/Time;
    new-instance v10, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 99
    .local v10, "now":Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 100
    iget v1, v10, Landroid/text/format/Time;->minute:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_3

    .line 101
    iget v1, v10, Landroid/text/format/Time;->hour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v11, Landroid/text/format/Time;->hour:I

    .line 102
    const/4 v1, 0x0

    iput v1, v11, Landroid/text/format/Time;->minute:I

    .line 107
    :cond_2
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/calendar/deftcontroller/UserActionController;->addAction(JJZ)V

    goto :goto_0

    .line 103
    :cond_3
    iget v1, v10, Landroid/text/format/Time;->minute:I

    if-lez v1, :cond_2

    iget v1, v10, Landroid/text/format/Time;->minute:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    .line 104
    iget v1, v10, Landroid/text/format/Time;->hour:I

    iput v1, v11, Landroid/text/format/Time;->hour:I

    .line 105
    const/16 v1, 0x1e

    iput v1, v11, Landroid/text/format/Time;->minute:I

    goto :goto_2

    .line 112
    .end local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    .end local v10    # "now":Landroid/text/format/Time;
    .end local v11    # "startTime":Landroid/text/format/Time;
    :pswitch_1
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .line 113
    .restart local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$000(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v2

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$100(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v4

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$300(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/calendar/deftcontroller/UserActionController;->showAction(JJJ)V

    goto :goto_0

    .line 117
    .end local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    :pswitch_2
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .line 118
    .restart local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$000(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v2

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$100(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v4

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$300(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/calendar/deftcontroller/UserActionController;->eidtAction(JJJ)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/UserActionController;->listAction()V

    goto/16 :goto_0

    .line 125
    :pswitch_4
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .line 126
    .restart local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$000(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v2

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$100(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v4

    .line 127
    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$300(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v6

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$200(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcn/nubia/calendar/deftcontroller/UserActionController;->convertToResponse(J)I

    move-result v8

    iget v1, p2, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    const/4 v9, 0x1

    :goto_3
    move-object v1, p0

    .line 126
    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/deftcontroller/UserActionController;->launchViewActionInfo(JJJIZ)V

    goto/16 :goto_0

    .line 127
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 132
    .end local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    :pswitch_5
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    .line 133
    .restart local v0    # "data":Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;
    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$000(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v2

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$100(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v4

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;->access$300(Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/nubia/calendar/deftcontroller/UserActionController;->deleteAction(JJJ)V

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;)V
    .locals 2
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;

    .prologue
    .line 82
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 83
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->userActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 84
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->outterHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mOutterHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcn/nubia/calendar/deftcontroller/UserActionController$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/deftcontroller/UserActionController$WorkHandler;-><init>(Lcn/nubia/calendar/deftcontroller/UserActionController;Landroid/os/Looper;)V

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/deftcontroller/UserActionController;->setWorkHandler(Landroid/os/Handler;)V

    .line 87
    return-void
.end method

.method public launchViewActionInfo(JJJIZ)V
    .locals 5
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "eventId"    # J
    .param p7, "response"    # I
    .param p8, "isFromAgendaList"    # Z

    .prologue
    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 179
    .local v0, "eventUri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    const-class v3, Lcn/nubia/calendar/EventInfoActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 181
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 182
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 183
    const-string v2, "attendeeStatus"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object v2, p0, Lcn/nubia/calendar/deftcontroller/UserActionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
