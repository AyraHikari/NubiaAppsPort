.class public Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;
.super Landroid/app/Activity;
.source "AlertInCaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final CODE_WRITECALENDAR_PERMISSION:I = 0x0

.field public static final INDEX_ALARM_TIME:I = 0xb

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x4

.field public static final INDEX_COLOR:I = 0x7

.field public static final INDEX_END:I = 0x5

.field public static final INDEX_EVENT_ID:I = 0x6

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x9

.field public static final INDEX_ROW_ID:I = 0x0

.field public static final INDEX_RRULE:I = 0x8

.field public static final INDEX_STATE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROPERTY_NAME:Ljava/lang/String; = "persist.sys.smartface.type"

.field private static final SELECTION:Ljava/lang/String; = "state=?"

.field private static final SELECTIONARG:[Ljava/lang/String;

.field public static final SMART_FACE_FAR:I = 0x2

.field public static final SMART_FACE_NEAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlertActivity"


# instance fields
.field private final listener:Landroid/hardware/SensorEventListener;

.field private mCursor:Landroid/database/Cursor;

.field private mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

.field private mEventId:I

.field private mHallSensor:Landroid/hardware/Sensor;

.field private mImage:Landroid/widget/ImageView;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;

.field private mReminderClose:Landroid/widget/Button;

.field private mReminderTime:Landroid/widget/TextView;

.field private mReminderWhat:Landroid/widget/TextView;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field final pictureHandler:Landroid/os/Handler;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->PROJECTION:[Ljava/lang/String;

    .line 109
    new-array v0, v3, [Ljava/lang/String;

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->SELECTIONARG:[Ljava/lang/String;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 135
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$1;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->pictureHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$2;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->listener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;

    .prologue
    .line 74
    iget v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;
    .param p1, "x1"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->dismissAlarm(J)V

    return-void
.end method

.method private dismissAlarm(J)V
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 148
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;

    const/4 v2, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v8, 0x0

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 152
    return-void
.end method

.method private sendSmartFaceBroadcast(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nubia.smartface.state.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packageName"

    const-string v2, "cn.nubia.calendar"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v1, "display"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 399
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 403
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 405
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 406
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x1

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->requestWindowFeature(I)Z

    .line 217
    const-string v9, "keyguard"

    .line 218
    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 219
    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v10, "unlock"

    invoke-virtual {v9, v10}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v5

    .line 220
    .local v5, "lock":Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v5}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 221
    const-string v9, "power"

    .line 222
    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 223
    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mPowerManager:Landroid/os/PowerManager;

    const v10, 0x10000006

    const-string v11, "bright"

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->wl:Landroid/os/PowerManager$WakeLock;

    .line 225
    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 231
    const-string v8, "default"

    .line 234
    .local v8, "type":Ljava/lang/String;
    :try_start_0
    const-string v9, "android.os.SystemProperties"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 236
    .local v1, "c":Ljava/lang/Class;
    const-string v9, "get"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 239
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "persist.sys.smartface.type"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "default"

    aput-object v11, v9, v10

    invoke-virtual {v6, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v1    # "c":Ljava/lang/Class;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alert_in_case_layout_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, "layoutName":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "layout"

    const-string v11, "cn.nubia.calendar.preset"

    invoke-virtual {v9, v4, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 250
    .local v3, "layoutId":I
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 253
    .local v7, "rootView":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->setContentView(Landroid/view/View;)V

    .line 258
    const v9, 0x7f11009a

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mReminderTime:Landroid/widget/TextView;

    .line 259
    const v9, 0x7f11009b

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mReminderWhat:Landroid/widget/TextView;

    .line 260
    const v9, 0x7f11009c

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mReminderClose:Landroid/widget/Button;

    .line 262
    const v9, 0x7f110047

    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mImage:Landroid/widget/ImageView;

    .line 264
    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mReminderClose:Landroid/widget/Button;

    new-instance v10, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;

    invoke-direct {v10, p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$3;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    new-instance v9, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;

    invoke-direct {v9, p0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;Landroid/content/Context;)V

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;

    .line 279
    const-string v9, "sensor"

    .line 280
    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 281
    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x16

    .line 282
    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mHallSensor:Landroid/hardware/Sensor;

    .line 283
    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mHallSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_0

    .line 284
    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->listener:Landroid/hardware/SensorEventListener;

    iget-object v11, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mHallSensor:Landroid/hardware/Sensor;

    invoke-virtual {v9, v10, v11, v13}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 289
    :cond_0
    return-void

    .line 242
    .end local v3    # "layoutId":I
    .end local v4    # "layoutName":Ljava/lang/String;
    .end local v7    # "rootView":Landroid/view/View;
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 456
    iget v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 457
    iget v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->dismissAlarm(J)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mHallSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 464
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 465
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mHallSensor:Landroid/hardware/Sensor;

    .line 467
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 470
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 471
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 472
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 474
    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 478
    packed-switch p1, :pswitch_data_0

    .line 482
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 480
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 361
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 362
    iget v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    if-eq v0, v2, :cond_0

    .line 363
    iget v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->dismissAlarm(J)V

    .line 364
    iput v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    .line 366
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    .line 369
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->sendSmartFaceBroadcast(Z)V

    .line 441
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 410
    if-nez p1, :cond_1

    .line 411
    const/4 v8, 0x0

    .line 412
    .local v8, "flagPermission":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, p3

    if-ge v9, v0, :cond_0

    .line 413
    aget v0, p3, v9

    if-eqz v0, :cond_2

    .line 414
    const/4 v8, 0x1

    .line 418
    :cond_0
    if-eqz v8, :cond_3

    .line 419
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->showPermissionDialog()V

    .line 435
    .end local v8    # "flagPermission":Z
    .end local v9    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 412
    .restart local v8    # "flagPermission":Z
    .restart local v9    # "i":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 422
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 423
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 427
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 430
    iput-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 378
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 380
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 381
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;

    sget-object v4, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-direct {p0, v8}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->sendSmartFaceBroadcast(Z)V

    .line 396
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 388
    iput-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 392
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 446
    invoke-static {p0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 448
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 451
    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    .line 299
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 300
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mEventId:I

    .line 301
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    .line 302
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "eventName":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    .line 304
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, "location":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 306
    .local v6, "startMillis":J
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 307
    .local v2, "endMillis":J
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_1

    .line 311
    .local v0, "allDay":Z
    :goto_0
    invoke-static {p0, v6, v7, v0}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->formatTime(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "summaryText":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mReminderTime:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;->mReminderWhat:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;

    invoke-direct {v9, p0}, Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity$4;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertInCaseActivity;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 355
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 357
    .end local v0    # "allDay":Z
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v2    # "endMillis":J
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "summaryText":Ljava/lang/String;
    .end local v6    # "startMillis":J
    :cond_0
    return-void

    .line 307
    .restart local v1    # "eventName":Ljava/lang/String;
    .restart local v2    # "endMillis":J
    .restart local v4    # "location":Ljava/lang/String;
    .restart local v6    # "startMillis":J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
