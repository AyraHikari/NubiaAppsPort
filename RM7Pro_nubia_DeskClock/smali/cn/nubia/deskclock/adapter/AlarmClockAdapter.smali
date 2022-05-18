.class public Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "AlarmClockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ALARM_SETTING_CLICK:Ljava/lang/String; = "alarmsetting_click"

.field private static final OPEN_ALARM_KEY_UMENG:Ljava/lang/String; = "open_alarm"

.field private static final TAG:Ljava/lang/String; = "AlarmClockAdapter"


# instance fields
.field private deskClockWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/DeskClock;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsInActionMode:Z

.field private mSelection:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    .line 56
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Lcn/nubia/deskclock/DeskClock;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    .line 57
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/commonui/app/AlertDialog;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p1, "x1"    # Lcn/nubia/commonui/app/AlertDialog;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p1, "x1"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->createChoseCloseDialog(Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;ZLcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->updateAlarm(ZLcn/nubia/deskclock/model/Alarm;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;ZLcn/nubia/deskclock/ui/DigitalClock;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcn/nubia/deskclock/ui/DigitalClock;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->setAlarmEnableColor(ZLcn/nubia/deskclock/ui/DigitalClock;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->sendDisableAlertBroadcast()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->updateRecentAlarmTime(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;IZ)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->enableAlarm(Landroid/content/Context;IZ)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;J)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/AlarmClockAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->popAlarmSetToast(Landroid/content/Context;J)V

    return-void
.end method

.method private createChoseCloseDialog(Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 8
    .param p1, "alarm"    # Lcn/nubia/deskclock/model/Alarm;
    .param p2, "alarmInfo"    # Landroid/widget/TextView;
    .param p3, "alarmInfoString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 257
    :goto_0
    return-object v2

    .line 215
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    .line 216
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 217
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040023

    invoke-virtual {v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "dialogView":Landroid/view/View;
    const v5, 0x7f120090

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 219
    .local v3, "tv1":Landroid/widget/TextView;
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v5

    new-instance v6, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;

    invoke-direct {v6, p0, p1, v3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$3;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6, v2}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 229
    const v5, 0x7f120091

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 230
    .local v4, "tv2":Landroid/widget/TextView;
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d0031

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    new-instance v5, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;

    invoke-direct {v5, p0, p1, p2, p3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$4;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    new-instance v5, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$5;

    invoke-direct {v5, p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$5;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v5, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 250
    invoke-virtual {v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    new-instance v7, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;

    invoke-direct {v7, p0, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$6;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;)V

    .line 251
    invoke-virtual {v5, v6, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    .line 256
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    .line 257
    .local v2, "nAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    goto :goto_0
.end method

.method private deleteAlarm(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/deskclock/model/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private deleteAlarmRingtoneFromId(I)V
    .locals 4
    .param p1, "alarmId"    # I

    .prologue
    .line 428
    const-string v1, "AlarmClockAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAlarmRingtoneFromId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getAlarmRingtoneSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 430
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alarm_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    return-void
.end method

.method private enableAlarm(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "enabled"    # Z

    .prologue
    .line 316
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$8;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->deskClockWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private popAlarmSetToast(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "daysOfWeek"    # Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .param p5, "id"    # I
    .param p6, "isHoliday"    # Z

    .prologue
    .line 326
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v7

    new-instance v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$9;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)V

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method private popAlarmSetToast(Landroid/content/Context;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeInMillis"    # J

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-static {p1, p2, p3}, Lcn/nubia/deskclock/util/AlarmUtils;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "toastText":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 344
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mToast:Landroid/widget/Toast;

    .line 348
    :goto_0
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 349
    return-void

    .line 346
    :cond_0
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method private sendDisableAlertBroadcast()V
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "snoozeIntent":Landroid/content/Intent;
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setAlarmEnableColor(ZLcn/nubia/deskclock/ui/DigitalClock;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "digitalClock"    # Lcn/nubia/deskclock/ui/DigitalClock;
    .param p3, "tv"    # Landroid/widget/TextView;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const v2, 0x7f0f000d

    const v1, 0x7f0f000b

    .line 277
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 280
    :cond_0
    if-eqz p1, :cond_1

    .line 281
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000c

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 281
    invoke-virtual {p2, v0}, Lcn/nubia/deskclock/ui/DigitalClock;->setTimeDisplayTextColor(I)V

    .line 283
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 283
    invoke-virtual {p2, v0}, Lcn/nubia/deskclock/ui/DigitalClock;->setAmPmTextColor(I)V

    .line 285
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 287
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 287
    invoke-virtual {p2, v0}, Lcn/nubia/deskclock/ui/DigitalClock;->setTimeDisplayTextColor(I)V

    .line 289
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 289
    invoke-virtual {p2, v0}, Lcn/nubia/deskclock/ui/DigitalClock;->setAmPmTextColor(I)V

    .line 291
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private updateAlarm(ZLcn/nubia/deskclock/model/Alarm;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 304
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p2, Lcn/nubia/deskclock/model/Alarm;->id:I

    invoke-direct {p0, v0, v1, p1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->enableAlarm(Landroid/content/Context;IZ)V

    .line 308
    const-string v0, "AlarmClockAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAlarm  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz p1, :cond_0

    .line 310
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p2, Lcn/nubia/deskclock/model/Alarm;->hour:I

    iget v3, p2, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    iget-object v4, p2, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    iget v5, p2, Lcn/nubia/deskclock/model/Alarm;->id:I

    iget-boolean v6, p2, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->popAlarmSetToast(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;IZ)V

    goto :goto_0
.end method

.method private updateRecentAlarmTime(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 261
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$7;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method


# virtual methods
.method public addDeletedCity(J)V
    .locals 3
    .param p1, "alarmId"    # J

    .prologue
    .line 379
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 81
    const-string v11, "AlarmClockAdapter"

    const-string v12, "bindView"

    invoke-static {v11, v12}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v11

    if-nez v11, :cond_0

    .line 201
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v9, ""

    .line 86
    .local v9, "repeatLabel":Ljava/lang/String;
    const-string v3, ""

    .line 87
    .local v3, "alarmLabel":Ljava/lang/String;
    new-instance v2, Lcn/nubia/deskclock/model/Alarm;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-direct {v2, v0, v11}, Lcn/nubia/deskclock/model/Alarm;-><init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    .line 88
    .local v2, "alarm":Lcn/nubia/deskclock/model/Alarm;
    const-string v11, "AlarmClockAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " bindView alarm : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 90
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    .line 91
    .local v10, "viewHolder":Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;
    const v11, 0x7f12006b

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/nubia/deskclock/ui/DigitalClock;

    iput-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->digitalClock:Lcn/nubia/deskclock/ui/DigitalClock;

    .line 92
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->digitalClock:Lcn/nubia/deskclock/ui/DigitalClock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/deskclock/ui/DigitalClock;->setLive(Z)V

    .line 93
    const/16 v11, 0xb

    iget v12, v2, Lcn/nubia/deskclock/model/Alarm;->hour:I

    invoke-virtual {v6, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 94
    const/16 v11, 0xc

    iget v12, v2, Lcn/nubia/deskclock/model/Alarm;->minutes:I

    invoke-virtual {v6, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 95
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->digitalClock:Lcn/nubia/deskclock/ui/DigitalClock;

    invoke-virtual {v11, v6}, Lcn/nubia/deskclock/ui/DigitalClock;->updateTime(Ljava/util/Calendar;)V

    .line 97
    const-string v11, "AlarmClockAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isHolidayAlarm = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v2, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v11, v2, Lcn/nubia/deskclock/model/Alarm;->isHolidayAlarm:Z

    if-nez v11, :cond_3

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v9, v11, v12

    .line 106
    :goto_1
    iget-object v11, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 107
    const-string v11, "0"

    iget-object v12, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "1"

    iget-object v12, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "2"

    iget-object v12, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 108
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b000a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    iget-object v12, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v3, v11, v12

    .line 115
    :cond_2
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "normalAlarminfo":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0034

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "closeOnceAlarminfo":Ljava/lang/String;
    const v11, 0x7f120080

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    .line 118
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mIsInActionMode:Z

    if-eqz v11, :cond_7

    .line 121
    const v11, 0x7f120082

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 122
    const v11, 0x7f120083

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 123
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 124
    iget v11, v2, Lcn/nubia/deskclock/model/Alarm;->id:I

    int-to-long v4, v11

    .line 125
    .local v4, "alarmId":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 126
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 130
    :goto_3
    iget-boolean v11, v2, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    iget-object v12, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->digitalClock:Lcn/nubia/deskclock/ui/DigitalClock;

    iget-object v13, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->setAlarmEnableColor(ZLcn/nubia/deskclock/ui/DigitalClock;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 102
    .end local v4    # "alarmId":J
    .end local v7    # "closeOnceAlarminfo":Ljava/lang/String;
    .end local v8    # "normalAlarminfo":Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, v2, Lcn/nubia/deskclock/model/Alarm;->daysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 103
    invoke-virtual {v12}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v12

    .line 102
    invoke-static {v11, v12}, Lcn/nubia/deskclock/util/Utils;->updateWeekSelectAllDayView(Landroid/content/Context;[Z)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 109
    :cond_4
    iget-object v11, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    const-string v12, "isCustomLabel:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 110
    iget-object v11, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    const-string v12, "isCustomLabel:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 112
    :cond_5
    iget-object v3, v2, Lcn/nubia/deskclock/model/Alarm;->label:Ljava/lang/String;

    goto/16 :goto_2

    .line 128
    .restart local v4    # "alarmId":J
    .restart local v7    # "closeOnceAlarminfo":Ljava/lang/String;
    .restart local v8    # "normalAlarminfo":Ljava/lang/String;
    :cond_6
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 132
    .end local v4    # "alarmId":J
    :cond_7
    const v11, 0x7f120083

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v11, 0x7f120082

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 134
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/widget/NubiaSwitch;->setVisibility(I)V

    .line 135
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    const-string v11, "AlarmClockAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " bindView alarm.enabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v2, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-boolean v12, v2, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 138
    iget-boolean v11, v2, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    iget-object v12, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->digitalClock:Lcn/nubia/deskclock/ui/DigitalClock;

    iget-object v13, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->setAlarmEnableColor(ZLcn/nubia/deskclock/ui/DigitalClock;Landroid/widget/TextView;)V

    .line 139
    iget-boolean v11, v2, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    if-eqz v11, :cond_8

    .line 140
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_4
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v12, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v10, v2, v7}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;Lcn/nubia/deskclock/model/Alarm;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v12, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v2, v10, v1}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$2;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/model/Alarm;Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;Landroid/content/Context;)V

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 141
    :cond_8
    iget-wide v12, v2, Lcn/nubia/deskclock/model/Alarm;->enableRecentAlarm:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_9

    .line 142
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 144
    :cond_9
    iget-object v11, v10, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;->alarmInfo:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public confirmToDeleteSelection()V
    .locals 14

    .prologue
    .line 387
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_0

    .line 414
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v8, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 391
    .local v7, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v1, "enabledAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/deskclock/model/Alarm;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 393
    iget-object v8, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 394
    .local v2, "alarmId":J
    long-to-int v5, v2

    .line 395
    .local v5, "id":I
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v5}, Lcn/nubia/deskclock/model/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v0

    .line 396
    .local v0, "alarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-direct {p0, v5}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->deleteAlarmRingtoneFromId(I)V

    .line 397
    invoke-direct {p0, v5}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->deleteAlarm(I)V

    .line 398
    iget-boolean v8, v0, Lcn/nubia/deskclock/model/Alarm;->enabled:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 399
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    .end local v2    # "alarmId":J
    .end local v5    # "id":I
    :cond_2
    const/4 v6, 0x0

    .line 403
    .local v6, "mostRerentAlarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 404
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "mostRerentAlarm":Lcn/nubia/deskclock/model/Alarm;
    check-cast v6, Lcn/nubia/deskclock/model/Alarm;

    .line 405
    .restart local v6    # "mostRerentAlarm":Lcn/nubia/deskclock/model/Alarm;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/Alarm;

    .line 406
    .restart local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    iget-wide v10, v0, Lcn/nubia/deskclock/model/Alarm;->time:J

    iget-wide v12, v6, Lcn/nubia/deskclock/model/Alarm;->time:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    .line 407
    move-object v6, v0

    goto :goto_2

    .line 410
    .end local v0    # "alarm":Lcn/nubia/deskclock/model/Alarm;
    :cond_4
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v6}, Lcn/nubia/deskclock/model/Alarms;->cancelPowerOffAlarmAboveSdk26(Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 412
    :cond_5
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/deskclock/model/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 413
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->sendDisableAlertBroadcast()V

    goto :goto_0
.end method

.method public getSelectCount()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isSelectAll()Z
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 205
    new-instance v1, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/adapter/AlarmClockAdapter;Lcn/nubia/deskclock/adapter/AlarmClockAdapter$1;)V

    .line 206
    .local v1, "viewHolder":Lcn/nubia/deskclock/adapter/AlarmClockAdapter$ViewHolder;
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04001d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    return-object v0
.end method

.method public selectAll()V
    .locals 5

    .prologue
    .line 356
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 357
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 359
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    .line 362
    .local v2, "idl":J
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    .end local v2    # "idl":J
    :cond_1
    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .param p1, "isInActionMode"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mIsInActionMode:Z

    .line 376
    return-void
.end method

.method public unSelectall()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/AlarmClockAdapter;->mSelection:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    :cond_0
    return-void
.end method
