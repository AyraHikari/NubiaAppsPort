.class public Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;
.super Lcn/nubia/calendar/AbstractCalendarEditActivity;
.source "EditEventActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;


# static fields
.field private static final BUNDLE_KEY_EVENT_ID:Ljava/lang/String; = "key_event_id"

.field private static final CODE_READCALENDAR_EditEventFragment:I = 0x1

.field private static final CODE_WRITECALENDAR_EditEventFragment:I = 0x2

.field public static CREATE_EVENT_ACTION:Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field public static KEY_BEGIN_TIME_IN_MILLIS:Ljava/lang/String; = null

.field public static KEY_DESCRIPTION:Ljava/lang/String; = null

.field public static KEY_END_TIME_IN_MILLIS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EditEventActivity"

.field private static mIsMultipane:Z


# instance fields
.field private mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

.field private mEventInfo:Lcn/nubia/calendar/CalendarController$EventInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "cn.nubia.calendar.otherApp.CREATE_EVENT"

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->CREATE_EVENT_ACTION:Ljava/lang/String;

    .line 85
    const-string v0, "begin_time_in_millis"

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->KEY_BEGIN_TIME_IN_MILLIS:Ljava/lang/String;

    .line 86
    const-string v0, "end_time_in_millis"

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->KEY_END_TIME_IN_MILLIS:Ljava/lang/String;

    .line 87
    const-string v0, "description"

    sput-object v0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->KEY_DESCRIPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcn/nubia/calendar/AbstractCalendarEditActivity;-><init>()V

    .line 83
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialogList:Ljava/util/List;

    .line 142
    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method private getEventInfoFromIntent(Landroid/os/Bundle;)Lcn/nubia/calendar/CalendarController$EventInfo;
    .locals 18
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 202
    new-instance v12, Lcn/nubia/calendar/CalendarController$EventInfo;

    invoke-direct {v12}, Lcn/nubia/calendar/CalendarController$EventInfo;-><init>()V

    .line 203
    .local v12, "info":Lcn/nubia/calendar/CalendarController$EventInfo;
    const-wide/16 v10, -0x1

    .line 204
    .local v10, "eventId":J
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 205
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 206
    .local v6, "data":Landroid/net/Uri;
    if-eqz v6, :cond_7

    .line 208
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 218
    :cond_0
    :goto_0
    const-string v15, "allDay"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 220
    .local v2, "allDay":Z
    const-string v15, "beginTime"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 221
    .local v4, "begin":J
    sget-object v15, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->CREATE_EVENT_ACTION:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 223
    sget-object v15, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->KEY_BEGIN_TIME_IN_MILLIS:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "beginTime":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 225
    invoke-static {v3}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->getBeginMillisByTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 226
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 227
    .local v14, "time":Landroid/text/format/Time;
    invoke-virtual {v14, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 228
    iget v15, v14, Landroid/text/format/Time;->hour:I

    if-nez v15, :cond_1

    iget v15, v14, Landroid/text/format/Time;->minute:I

    if-nez v15, :cond_1

    .line 229
    const/4 v2, 0x1

    .line 233
    .end local v3    # "beginTime":Ljava/lang/String;
    .end local v14    # "time":Landroid/text/format/Time;
    :cond_1
    const-string v15, "endTime"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 234
    .local v8, "end":J
    sget-object v15, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->CREATE_EVENT_ACTION:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 236
    sget-object v15, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->KEY_END_TIME_IN_MILLIS:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .local v7, "endTime":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 238
    invoke-static {v7}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->getBeginMillisByTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 241
    .end local v7    # "endTime":Ljava/lang/String;
    :cond_2
    const-wide/16 v16, -0x1

    cmp-long v15, v8, v16

    if-eqz v15, :cond_4

    .line 242
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    iput-object v15, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 243
    if-eqz v2, :cond_3

    .line 244
    iget-object v15, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const-string v16, "UTC"

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 246
    :cond_3
    iget-object v15, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v15, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 248
    :cond_4
    const-wide/16 v16, -0x1

    cmp-long v15, v4, v16

    if-eqz v15, :cond_6

    .line 249
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    iput-object v15, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 250
    if-eqz v2, :cond_5

    .line 251
    iget-object v15, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const-string v16, "UTC"

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 253
    :cond_5
    iget-object v15, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v15, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 255
    :cond_6
    iput-wide v10, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    .line 257
    if-eqz v2, :cond_8

    .line 258
    const-wide/16 v16, 0x10

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    .line 262
    :goto_1
    return-object v12

    .line 214
    .end local v2    # "allDay":Z
    .end local v4    # "begin":J
    .end local v8    # "end":J
    :cond_7
    if-eqz p1, :cond_0

    const-string v15, "key_event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 215
    const-string v15, "key_event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    goto/16 :goto_0

    .line 260
    .restart local v2    # "allDay":Z
    .restart local v4    # "begin":J
    .restart local v8    # "end":J
    :cond_8
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcn/nubia/calendar/CalendarController$EventInfo;->extraLong:J

    goto :goto_1

    .line 209
    .end local v2    # "allDay":Z
    .end local v4    # "begin":J
    .end local v8    # "end":J
    :catch_0
    move-exception v15

    goto/16 :goto_0
.end method

.method private showDialogWhenEditAgendaOnBack()V
    .locals 4

    .prologue
    .line 289
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c020f

    .line 290
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity$1;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity$1;-><init>(Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;)V

    .line 291
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 297
    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 298
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 299
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialogList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 199
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 200
    return-void
.end method


# virtual methods
.method public OnNegativeButtonClick()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->saveButtonClick()V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public OnPositiveButtonClick()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->cancelButtonClick()V

    .line 179
    :cond_0
    return-void
.end method

.method public checkAndRequestPermissions()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 116
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    if-nez v2, :cond_2

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEventInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v2, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    :cond_0
    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEventInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    invoke-direct {v2, v3, v6, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;-><init>(Lcn/nubia/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 125
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "editMode"

    .line 126
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 128
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-boolean v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    if-nez v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 133
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f110167

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 134
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 135
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 140
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 138
    :cond_3
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v2, v6

    invoke-static {p0, v2, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/calendar/AbstractCalendarEditActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    return-void
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarEditActivity;->onBackPressed()V

    .line 286
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->getEditEventView()Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->isEmptyEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->onBack()V

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->showDialogWhenEditAgendaOnBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcn/nubia/calendar/AbstractCalendarEditActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->setContentView(I)V

    .line 98
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 99
    invoke-virtual {p0, p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V

    .line 100
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getEventInfoFromIntent(Landroid/os/Bundle;)Lcn/nubia/calendar/CalendarController$EventInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEventInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    .line 101
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f110167

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 103
    const v0, 0x7f0f0007

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mIsMultipane:Z

    .line 104
    new-instance v0, Lcn/nubia/calendar/util/CtaUtils;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/util/CtaUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/util/CtaUtils;->ctaDialogdisPlay(Landroid/content/Context;)V

    .line 110
    :cond_0
    invoke-static {p0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->checkAndRequestPermissions()V

    .line 113
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarEditActivity;->onDestroy()V

    .line 320
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 322
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 327
    .end local v0    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialogList:Ljava/util/List;

    .line 328
    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 329
    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEventInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    .line 331
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    invoke-virtual {v1}, Lcn/nubia/calendar/util/CtaUtils;->release()V

    .line 332
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 334
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 336
    iput-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 338
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 305
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 306
    const/4 v1, 0x1

    .line 313
    :goto_0
    return v1

    .line 308
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    .line 310
    .local v0, "dialog":Landroid/content/DialogInterface;
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 313
    .end local v0    # "dialog":Landroid/content/DialogInterface;
    :cond_1
    invoke-super {p0, p1}, Lcn/nubia/calendar/AbstractCalendarEditActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v6, 0x0

    .line 146
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 147
    aget v2, p3, v6

    if-nez v2, :cond_3

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEventInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    iget-wide v2, v2, Lcn/nubia/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    :cond_0
    new-instance v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEventInfo:Lcn/nubia/calendar/CalendarController$EventInfo;

    invoke-direct {v2, v3, v6, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;-><init>(Lcn/nubia/calendar/CalendarController$EventInfo;ZLandroid/content/Intent;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    .line 155
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "editMode"

    .line 156
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    .line 158
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    iget-boolean v2, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;->mShowModifyDialogOnLaunch:Z

    if-nez v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 163
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v2, 0x7f110167

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 164
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->mEditFragment:Lcn/nubia/calendar/submodule_agenda/view/EditEventFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 165
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 171
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/activity/EditEventActivity;->showPermissionDialog()V

    goto :goto_0
.end method
