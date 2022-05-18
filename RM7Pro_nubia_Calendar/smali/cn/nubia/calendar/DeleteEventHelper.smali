.class public Lcn/nubia/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;
    }
.end annotation


# static fields
.field public static final DELETE_ALL:I = 0x2

.field public static final DELETE_ALL_FOLLOWING:I = 0x1

.field public static final DELETE_SELECTED:I


# instance fields
.field private mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeleteStartedListener:Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEndMillis:J

.field private mExitWhenDone:Z

.field private mModel:Lcn/nubia/calendar/model/CalendarEventModel;

.field private final mParent:Landroid/app/Activity;

.field private mService:Lcn/nubia/calendar/AsyncQueryService;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichDelete:I

.field private mWhichIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentActivity"    # Landroid/app/Activity;
    .param p3, "exitWhenDone"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;

    .line 149
    new-instance v0, Lcn/nubia/calendar/DeleteEventHelper$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/DeleteEventHelper$2;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    new-instance v0, Lcn/nubia/calendar/DeleteEventHelper$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/DeleteEventHelper$3;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteExceptionDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 185
    new-instance v0, Lcn/nubia/calendar/DeleteEventHelper$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/DeleteEventHelper$4;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    new-instance v0, Lcn/nubia/calendar/DeleteEventHelper$5;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/DeleteEventHelper$5;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteRepeatingDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentActivity is required to exit when done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcn/nubia/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 121
    new-instance v0, Lcn/nubia/calendar/DeleteEventHelper$1;

    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/DeleteEventHelper$1;-><init>(Lcn/nubia/calendar/DeleteEventHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    .line 139
    iput-boolean p3, p0, Lcn/nubia/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/DeleteEventHelper;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-wide v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/DeleteEventHelper;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-wide v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/DeleteEventHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/DeleteEventHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/DeleteEventHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/calendar/DeleteEventHelper;->deleteEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/calendar/DeleteEventHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mWhichDelete:I

    return v0
.end method

.method static synthetic access$202(Lcn/nubia/calendar/DeleteEventHelper;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mWhichDelete:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/calendar/DeleteEventHelper;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcn/nubia/calendar/DeleteEventHelper;->deleteStarted()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/model/CalendarEventModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/AsyncQueryService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/DeleteEventHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/DeleteEventHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mExitWhenDone:Z

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/DeleteEventHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/DeleteEventHelper;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 73
    invoke-direct {p0}, Lcn/nubia/calendar/DeleteEventHelper;->deleteExceptionEvent()V

    return-void
.end method

.method private deleteEvent(Ljava/lang/String;)V
    .locals 12
    .param p1, "originalEvent"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 422
    if-nez p1, :cond_3

    .line 424
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    long-to-int v10, v0

    .line 425
    .local v10, "mEventId":I
    if-eq v10, v4, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 427
    .local v11, "nm":Landroid/app/NotificationManager;
    const-string v0, "ticker_notification"

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 431
    .end local v11    # "nm":Landroid/app/NotificationManager;
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/DeleteEventHelper;->deleteStarted()V

    .line 432
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 433
    .local v8, "id":J
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 435
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 437
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 440
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mExitWhenDone:Z

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 459
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "id":J
    :cond_2
    :goto_0
    return-void

    .line 444
    .end local v10    # "mEventId":I
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    long-to-int v10, v0

    .line 445
    .restart local v10    # "mEventId":I
    if-eq v10, v4, :cond_4

    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 447
    .restart local v11    # "nm":Landroid/app/NotificationManager;
    const-string v0, "ticker_notification"

    invoke-virtual {v11, v0, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 450
    .end local v11    # "nm":Landroid/app/NotificationManager;
    :cond_4
    invoke-direct {p0}, Lcn/nubia/calendar/DeleteEventHelper;->deleteStarted()V

    .line 451
    invoke-direct {p0}, Lcn/nubia/calendar/DeleteEventHelper;->deleteExceptionEvent()V

    .line 452
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 455
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mExitWhenDone:Z

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private deleteExceptionEvent()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 654
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v10, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 657
    .local v10, "id":J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v5, "values":Landroid/content/ContentValues;
    const-string v0, "eventStatus"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 660
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 662
    .local v4, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v2

    const-wide/16 v8, 0x0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 664
    return-void
.end method

.method private deleteRepeatingEvent(I)V
    .locals 28
    .param p1, "which"    # I

    .prologue
    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v0, v3, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 668
    .local v23, "rRule":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-boolean v2, v3, Lcn/nubia/calendar/model/CalendarEventModel;->mAllDay:Z

    .line 669
    .local v2, "allDay":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v3, Lcn/nubia/calendar/model/CalendarEventModel;->mStart:J

    move-wide/from16 v20, v0

    .line 670
    .local v20, "dtstart":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v3, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    move-wide/from16 v24, v0

    .line 672
    .local v24, "id":J
    packed-switch p1, :pswitch_data_0

    .line 751
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 754
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mExitWhenDone:Z

    if-eqz v3, :cond_1

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 757
    :cond_1
    return-void

    .line 677
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    cmp-long v3, v20, v4

    if-nez v3, :cond_2

    .line 683
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 687
    .local v7, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v0, v3, Lcn/nubia/calendar/model/CalendarEventModel;->mTitle:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 688
    .local v27, "title":Ljava/lang/String;
    const-string v3, "title"

    move-object/from16 v0, v27

    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-object v0, v3, Lcn/nubia/calendar/model/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 691
    .local v26, "timezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    iget-wide v0, v3, Lcn/nubia/calendar/model/CalendarEventModel;->mCalendarId:J

    move-wide/from16 v18, v0

    .line 692
    .local v18, "calendarId":J
    const-string v3, "eventTimezone"

    move-object/from16 v0, v26

    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v4, "allDay"

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v4, "originalAllDay"

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string v3, "calendar_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 696
    const-string v3, "dtstart"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 697
    const-string v3, "dtend"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mEndMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 698
    const-string v3, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v3, "original_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 700
    const-string v3, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 701
    const-string v3, "eventStatus"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v4}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcn/nubia/calendar/AsyncQueryService;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    goto/16 :goto_0

    .line 693
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 694
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 708
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v18    # "calendarId":J
    .end local v26    # "timezone":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    :pswitch_1
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 710
    .local v11, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v3}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v8 .. v15}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 717
    .end local v11    # "uri":Landroid/net/Uri;
    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    cmp-long v3, v20, v4

    if-nez v3, :cond_5

    .line 718
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 720
    .restart local v11    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v3}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v8 .. v15}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 726
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_5
    new-instance v22, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct/range {v22 .. v22}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 727
    .local v22, "eventRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    invoke-virtual/range {v22 .. v23}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 728
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 729
    .local v17, "date":Landroid/text/format/Time;
    if-eqz v2, :cond_6

    .line 730
    const-string v3, "UTC"

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 732
    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 733
    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->second:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v17

    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 734
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 738
    const-string v3, "UTC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 739
    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    iput-object v3, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    .line 741
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 742
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v3, "dtstart"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 743
    const-string v3, "rrule"

    invoke-virtual/range {v22 .. v22}, Lcn/nubia/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 746
    .restart local v11    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v3}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v9

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v16}, Lcn/nubia/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private deleteStarted()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;

    invoke-interface {v0}, Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;->onDeleteStarted()V

    .line 767
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(JJJI)V
    .locals 11
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "eventId"    # J
    .param p7, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 232
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p5

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 234
    .local v5, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    iget-object v3, p0, Lcn/nubia/calendar/DeleteEventHelper;->mService:Lcn/nubia/calendar/AsyncQueryService;

    invoke-virtual {v3}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v3

    sget-object v6, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v7, v4

    move-object v8, v4

    move-object v9, v4

    invoke-virtual/range {v2 .. v9}, Lcn/nubia/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iput-wide p1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    .line 237
    iput-wide p3, p0, Lcn/nubia/calendar/DeleteEventHelper;->mEndMillis:J

    .line 238
    move/from16 v0, p7

    iput v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 239
    return-void
.end method

.method public delete(JJJILjava/lang/Runnable;)V
    .locals 1
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "eventId"    # J
    .param p7, "which"    # I
    .param p8, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 243
    invoke-virtual/range {p0 .. p7}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 244
    iput-object p8, p0, Lcn/nubia/calendar/DeleteEventHelper;->mCallback:Ljava/lang/Runnable;

    .line 245
    return-void
.end method

.method public delete(JJLcn/nubia/calendar/model/CalendarEventModel;I)V
    .locals 19
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p6, "which"    # I

    .prologue
    .line 284
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 285
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    .line 286
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/DeleteEventHelper;->mEndMillis:J

    .line 287
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 288
    move-object/from16 v0, p5

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 293
    move-object/from16 v0, p5

    iget-object v12, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 294
    .local v12, "rRule":Ljava/lang/String;
    move-object/from16 v0, p5

    iget-object v11, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 295
    .local v11, "originalEvent":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 296
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper;->isMoreEventsAfterDel(Lcn/nubia/calendar/model/CalendarEventModel;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 298
    :cond_0
    new-instance v16, Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x7f0c002a

    .line 299
    invoke-virtual/range {v16 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x104000a

    new-instance v18, Lcn/nubia/calendar/DeleteEventHelper$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcn/nubia/calendar/DeleteEventHelper$6;-><init>(Lcn/nubia/calendar/DeleteEventHelper;Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {v16 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    const/high16 v17, 0x1040000

    const/16 v18, 0x0

    .line 306
    invoke-virtual/range {v16 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    .line 308
    .local v5, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 309
    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 310
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0153

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 309
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 314
    :try_start_0
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 419
    .end local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    :cond_1
    :goto_1
    return-void

    .line 315
    .restart local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    :catch_0
    move-exception v6

    .line 317
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 325
    .local v13, "res":Landroid/content/res/Resources;
    new-instance v7, Ljava/util/ArrayList;

    const v16, 0x7f0a0003

    .line 327
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 326
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 329
    .local v7, "labelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v16, 0x7f0a001f

    .line 330
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 331
    .local v9, "labelValues":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v8, "labelIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget v14, v9, v16

    .line 333
    .local v14, "val":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 336
    .end local v14    # "val":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    .line 338
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 339
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 343
    :cond_4
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 344
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 353
    :cond_5
    :goto_3
    const/16 v16, -0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 355
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p6

    .line 357
    :cond_6
    const/16 v16, -0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 358
    const/16 p6, 0x0

    .line 360
    :cond_7
    move-object/from16 v0, p0

    iput-object v8, v0, Lcn/nubia/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "layout_inflater"

    .line 362
    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 364
    .local v10, "layoutInflater":Landroid/view/LayoutInflater;
    const v16, 0x7f030052

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 366
    .local v15, "view":Landroid/view/View;
    const v16, 0x7f110169

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 367
    .local v3, "btn1":Landroid/widget/Button;
    const v16, 0x7f11016a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 368
    .local v4, "btn2":Landroid/widget/Button;
    new-instance v16, Lcn/nubia/calendar/DeleteEventHelper$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper$7;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 382
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 383
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 384
    new-instance v16, Lcn/nubia/calendar/DeleteEventHelper$8;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper$8;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/Activity;

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->isFinishing()Z

    move-result v16

    if-nez v16, :cond_1

    .line 403
    :cond_8
    new-instance v16, Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    const/high16 v17, 0x1040000

    const/16 v18, 0x0

    .line 406
    invoke-virtual/range {v16 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    .line 407
    .restart local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto/16 :goto_1

    .line 346
    .end local v3    # "btn1":Landroid/widget/Button;
    .end local v4    # "btn2":Landroid/widget/Button;
    .end local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    .end local v10    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v15    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 349
    :cond_a
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 397
    .restart local v3    # "btn1":Landroid/widget/Button;
    .restart local v4    # "btn2":Landroid/widget/Button;
    .restart local v10    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v15    # "view":Landroid/view/View;
    :cond_b
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 398
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public delete(JJLcn/nubia/calendar/model/CalendarEventModel;IZ)V
    .locals 19
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;
    .param p6, "which"    # I
    .param p7, "flagisMoreEventsAfterDel"    # Z

    .prologue
    .line 462
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/calendar/DeleteEventHelper;->mWhichDelete:I

    .line 463
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/DeleteEventHelper;->mStartMillis:J

    .line 464
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcn/nubia/calendar/DeleteEventHelper;->mEndMillis:J

    .line 465
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/DeleteEventHelper;->mModel:Lcn/nubia/calendar/model/CalendarEventModel;

    .line 466
    move-object/from16 v0, p5

    iget-object v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 471
    move-object/from16 v0, p5

    iget-object v12, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 472
    .local v12, "rRule":Ljava/lang/String;
    move-object/from16 v0, p5

    iget-object v11, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 473
    .local v11, "originalEvent":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 474
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    if-nez p7, :cond_2

    .line 476
    :cond_0
    new-instance v16, Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x7f0c002a

    .line 477
    invoke-virtual/range {v16 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x104000a

    new-instance v18, Lcn/nubia/calendar/DeleteEventHelper$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcn/nubia/calendar/DeleteEventHelper$9;-><init>(Lcn/nubia/calendar/DeleteEventHelper;Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {v16 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    const/high16 v17, 0x1040000

    const/16 v18, 0x0

    .line 484
    invoke-virtual/range {v16 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    .line 485
    .local v5, "dialog":Lcn/nubia/commonui/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 486
    const/16 v16, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 487
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0153

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 486
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 491
    :try_start_0
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 596
    .end local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    :cond_1
    :goto_1
    return-void

    .line 492
    .restart local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    :catch_0
    move-exception v6

    .line 494
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 501
    .end local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 502
    .local v13, "res":Landroid/content/res/Resources;
    new-instance v7, Ljava/util/ArrayList;

    const v16, 0x7f0a0003

    .line 504
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 503
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 506
    .local v7, "labelArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v16, 0x7f0a001f

    .line 507
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    .line 508
    .local v9, "labelValues":[I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v8, "labelIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v0, v9

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget v14, v9, v16

    .line 510
    .local v14, "val":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 513
    .end local v14    # "val":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    .line 515
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 516
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 517
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 520
    :cond_4
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 521
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 530
    :cond_5
    :goto_3
    const/16 v16, -0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 532
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p6

    .line 534
    :cond_6
    const/16 v16, -0x1

    move/from16 v0, p6

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 535
    const/16 p6, 0x0

    .line 537
    :cond_7
    move-object/from16 v0, p0

    iput-object v8, v0, Lcn/nubia/calendar/DeleteEventHelper;->mWhichIndex:Ljava/util/ArrayList;

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "layout_inflater"

    .line 539
    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 541
    .local v10, "layoutInflater":Landroid/view/LayoutInflater;
    const v16, 0x7f030052

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 543
    .local v15, "view":Landroid/view/View;
    const v16, 0x7f110169

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 544
    .local v3, "btn1":Landroid/widget/Button;
    const v16, 0x7f11016a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 545
    .local v4, "btn2":Landroid/widget/Button;
    new-instance v16, Lcn/nubia/calendar/DeleteEventHelper$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper$10;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 559
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 560
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 561
    new-instance v16, Lcn/nubia/calendar/DeleteEventHelper$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper$11;-><init>(Lcn/nubia/calendar/DeleteEventHelper;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 577
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/Activity;

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->isFinishing()Z

    move-result v16

    if-nez v16, :cond_1

    .line 580
    :cond_8
    new-instance v16, Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    const/high16 v17, 0x1040000

    const/16 v18, 0x0

    .line 583
    invoke-virtual/range {v16 .. v18}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    .line 584
    .restart local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 585
    move-object/from16 v0, p0

    iput-object v5, v0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteListListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto/16 :goto_1

    .line 523
    .end local v3    # "btn1":Landroid/widget/Button;
    .end local v4    # "btn2":Landroid/widget/Button;
    .end local v5    # "dialog":Lcn/nubia/commonui/app/AlertDialog;
    .end local v10    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v15    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsOrganizer:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mIsFirstEventInSeries:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 526
    :cond_a
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 527
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 574
    .restart local v3    # "btn1":Landroid/widget/Button;
    .restart local v4    # "btn2":Landroid/widget/Button;
    .restart local v10    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v15    # "view":Landroid/view/View;
    :cond_b
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 575
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public dismissAlertDialog()V
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 779
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isMoreEventsAfterDel(Lcn/nubia/calendar/model/CalendarEventModel;)Z
    .locals 20
    .param p1, "model"    # Lcn/nubia/calendar/model/CalendarEventModel;

    .prologue
    .line 605
    const-wide/16 v16, 0x0

    .line 606
    .local v16, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "lastDate"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "dtstart"

    aput-object v6, v4, v5

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    move-wide/from16 v18, v0

    .line 609
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    .line 606
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 611
    .local v9, "eventCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 612
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 613
    .local v14, "lastDate":J
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 615
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-nez v2, :cond_0

    .line 616
    const/4 v2, 0x1

    .line 648
    .end local v14    # "lastDate":J
    :goto_0
    return v2

    .line 618
    .restart local v14    # "lastDate":J
    :cond_0
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 619
    .local v8, "builder":Landroid/net/Uri$Builder;
    move-wide/from16 v0, v16

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 620
    const-wide/32 v2, 0x3f4a4800

    add-long v10, v16, v2

    .line 621
    .local v10, "end":J
    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/DeleteEventHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 623
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "event_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    move-wide/from16 v18, v0

    .line 624
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v6, v7

    const/4 v7, 0x0

    .line 622
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 625
    .local v12, "instancesCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/4 v13, 0x1

    .line 626
    .local v13, "instancesNumFlag":Z
    :goto_1
    if-eqz v12, :cond_1

    .line 627
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 628
    const/4 v12, 0x0

    .line 631
    :cond_1
    if-eqz v9, :cond_2

    .line 632
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 633
    const/4 v9, 0x0

    .line 635
    :cond_2
    if-eqz v13, :cond_4

    .line 636
    const/4 v2, 0x1

    goto :goto_0

    .line 625
    .end local v13    # "instancesNumFlag":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 638
    .restart local v13    # "instancesNumFlag":Z
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mRrule:Ljava/lang/String;

    const-string v3, "UNTIL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 639
    const/4 v2, 0x1

    goto :goto_0

    .line 644
    .end local v8    # "builder":Landroid/net/Uri$Builder;
    .end local v10    # "end":J
    .end local v12    # "instancesCursor":Landroid/database/Cursor;
    .end local v13    # "instancesNumFlag":Z
    .end local v14    # "lastDate":J
    :cond_5
    if-eqz v9, :cond_6

    .line 645
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 646
    const/4 v9, 0x0

    .line 648
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDeleteNotificationListener(Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;

    .prologue
    .line 760
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDeleteStartedListener:Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;

    .line 761
    return-void
.end method

.method public setExitWhenDone(Z)V
    .locals 0
    .param p1, "exitWhenDone"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 144
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 770
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 773
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 774
    return-void
.end method
