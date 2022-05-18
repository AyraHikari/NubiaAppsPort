.class public Lcn/nubia/calendar/submodule_alerts/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;,
        Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final ALARM_TIME:I = 0x1d4c0

.field private static final CLOSE_ALERT_DIALOG_ACTION:Ljava/lang/String; = "CLOSE_ALERT_DIALOG_ACTION"

.field private static final CODE_WRITECALENDAR_PERMISSION:I = 0x0

.field private static final DEFAULT_ALARM_TIME:I = 0xea60

.field private static final DEFAULT_ALARM_TIMEOUT:I = 0x2

.field private static final EVENT_PLAY_RINGTONE_AND_VIBRATOR:I = 0x1

.field private static final EVENT_REFINE_NOTE_DATA:I = 0x0

.field private static final EVENT_STOP_RINGTONE_AND_VIBRATOR:I = 0x2

.field private static final FOCUSCHANGE:I = 0x3

.field public static final INDEX_ACCOUNT_TYPE:I = 0xd

.field public static final INDEX_ALARM_TIME:I = 0xb

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x4

.field public static final INDEX_CALENDAR_DISPLAYNAME:I = 0xe

.field public static final INDEX_COLOR:I = 0x7

.field public static final INDEX_DESCRIPTION:I = 0xc

.field public static final INDEX_END:I = 0x5

.field public static final INDEX_EVENT_ID:I = 0x6

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x9

.field public static final INDEX_ROW_ID:I = 0x0

.field public static final INDEX_RRULE:I = 0x8

.field public static final INDEX_STATE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final KEY_MESSAGE_PROMPT:Ljava/lang/String; = "message_prompts"

.field private static final KEY_MUSIC_RINGTONE:Ljava/lang/String; = "preferences_music_ringtone"

.field private static final KEY_MUSIC_SILENT:Ljava/lang/String; = "preferences_music_silent"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field private static final SELECTION:Ljava/lang/String; = "state=?"

.field private static final SELECTIONARG:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AlertActivity"

.field private static final mVibratePattern:[J


# instance fields
.field private final listener:Landroid/hardware/SensorEventListener;

.field private mAdapter:Lcn/nubia/calendar/submodule_alerts/AlertAdapter;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mCloseAlertReceiver:Landroid/content/BroadcastReceiver;

.field private final mCloseScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mCursor:Landroid/database/Cursor;

.field private mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mHallSensor:Landroid/hardware/Sensor;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayFinish:Ljava/lang/Boolean;

.field private mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

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

    const/16 v1, 0xc

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    .line 126
    new-array v0, v3, [Ljava/lang/String;

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    .line 148
    new-array v0, v5, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibratePattern:[J

    return-void

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 162
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mPlayFinish:Ljava/lang/Boolean;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 233
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$1;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 266
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$2;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->listener:Landroid/hardware/SensorEventListener;

    .line 568
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    .line 716
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$4;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 769
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseAlertReceiver:Landroid/content/BroadcastReceiver;

    .line 787
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$6;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 823
    new-instance v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$7;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$7;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCallStateChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 89
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Lcn/nubia/calendar/submodule_alerts/AlertAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAdapter:Lcn/nubia/calendar/submodule_alerts/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 89
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mPlayFinish:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopRing()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopVibrator()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_alerts/AlertActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;
    .param p1, "x1"    # J

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->dismissFiredAlarms()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->vibrator()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->playRing()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopPlayAfterCustomTime()V

    return-void
.end method

.method private dismissAlarm(J)V
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 179
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 180
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;

    const/4 v2, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v8, 0x0

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 184
    return-void
.end method

.method private dismissFiredAlarms()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 169
    const-string v0, "AlertActivity"

    const-string v1, "dismissFiredAlarms  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v5, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 171
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v6, "state=1"

    .line 174
    .local v6, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;

    const/4 v2, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v8, 0x0

    move-object v7, v3

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 176
    return-void
.end method

.method private playRing()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x4

    .line 652
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v7, :cond_0

    .line 653
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 655
    :cond_0
    const-string v7, "AlertActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is playing = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 657
    .local v3, "ringMode":I
    if-eqz v3, :cond_1

    if-eq v11, v3, :cond_1

    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 658
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 714
    :cond_1
    :goto_0
    return-void

    .line 662
    :cond_2
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v7, v8, v10, v12}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 666
    const/4 v1, 0x0

    .line 668
    .local v1, "defaultRingToneString":Ljava/lang/String;
    const/4 v7, 0x4

    .line 669
    :try_start_0
    invoke-static {p0, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 670
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 675
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "preferences_music_ringtone"

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 678
    .local v4, "ringToneString":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "preferences_music_silent"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 677
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 680
    .local v5, "silent":Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 681
    .local v0, "alertUri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 682
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    .line 683
    .local v6, "telephonyStatue":I
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/Utils;->CalendarMusicFileExists(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 684
    const/4 v7, 0x4

    .line 685
    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 687
    :cond_3
    if-eq v6, v12, :cond_4

    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 688
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 689
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->isPlayAlarmWhenCalling()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 690
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopRing()V

    .line 691
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopVibrator()V

    .line 692
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    .line 694
    :try_start_2
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 698
    :cond_5
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->dismissFiredAlarms()V

    .line 699
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->finish()V

    .line 706
    :cond_6
    :goto_3
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 707
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 708
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 709
    .end local v0    # "alertUri":Landroid/net/Uri;
    .end local v4    # "ringToneString":Ljava/lang/String;
    .end local v5    # "silent":Ljava/lang/Boolean;
    .end local v6    # "telephonyStatue":I
    :catch_0
    move-exception v2

    .line 710
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopRing()V

    .line 711
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopVibrator()V

    .line 712
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 671
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 672
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 702
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "alertUri":Landroid/net/Uri;
    .restart local v4    # "ringToneString":Ljava/lang/String;
    .restart local v5    # "silent":Ljava/lang/Boolean;
    .restart local v6    # "telephonyStatue":I
    :cond_7
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 703
    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 695
    :catch_2
    move-exception v7

    goto :goto_2
.end method

.method private setDataSourceFromResource(Landroid/media/MediaPlayer;I)V
    .locals 7
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 644
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 645
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 646
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    .line 645
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 647
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 649
    :cond_0
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 405
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 409
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 411
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 412
    return-void
.end method

.method private stopPlayAfterCustomTime()V
    .locals 4

    .prologue
    .line 759
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 760
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    .line 759
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 762
    return-void
.end method

.method private stopRing()V
    .locals 2

    .prologue
    .line 723
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 728
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 729
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopVibrator()V
    .locals 2

    .prologue
    .line 749
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 751
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private vibrator()V
    .locals 4

    .prologue
    .line 738
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    .line 739
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;

    .line 741
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibratePattern:[J

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 445
    const-string v0, "AlertActivity"

    const-string v1, " finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopRing()V

    .line 447
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopVibrator()V

    .line 448
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 451
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 452
    return-void
.end method

.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 541
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 542
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 543
    const/4 v1, 0x0

    .line 545
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayAlarmWhenCalling()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 632
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "message_prompts"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 634
    .local v0, "messagePrompts":I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    .line 637
    :cond_1
    return v1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 520
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 521
    const-string v1, "AlertActivity"

    const-string v2, "onClick finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopRing()V

    .line 523
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopVibrator()V

    .line 524
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 525
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 526
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->dismissFiredAlarms()V

    .line 527
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->finish()V

    .line 534
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 300
    .local v4, "win":Landroid/view/Window;
    const/high16 v5, 0x80000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 301
    invoke-virtual {p0, v8}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->requestWindowFeature(I)Z

    .line 302
    const v5, 0x7f030023

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->setContentView(I)V

    .line 303
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 305
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 307
    new-instance v5, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;

    invoke-direct {v5, p0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;

    .line 308
    new-instance v5, Lcn/nubia/calendar/submodule_alerts/AlertAdapter;

    const v6, 0x7f030029

    invoke-direct {v5, p0, v6}, Lcn/nubia/calendar/submodule_alerts/AlertAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAdapter:Lcn/nubia/calendar/submodule_alerts/AlertAdapter;

    .line 310
    const v5, 0x7f110096

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 311
    const v5, 0x7f110098

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    .line 312
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 313
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAdapter:Lcn/nubia/calendar/submodule_alerts/AlertAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 316
    const v5, 0x7f110099

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    .line 317
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    const-string v5, "sensor"

    .line 324
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 325
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v6, 0x16

    .line 326
    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHallSensor:Landroid/hardware/Sensor;

    .line 327
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHallSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_0

    .line 328
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->listener:Landroid/hardware/SensorEventListener;

    iget-object v7, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHallSensor:Landroid/hardware/Sensor;

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 332
    :cond_0
    const-string v5, "power"

    .line 333
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 334
    .local v3, "pm":Landroid/os/PowerManager;
    const v5, 0x10000006

    const-string v6, "bright"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 336
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 337
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 339
    invoke-virtual {p0, v9}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->setFinishOnTouchOutside(Z)V

    .line 340
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mVibrator:Landroid/os/Vibrator;

    .line 341
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 342
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .local v1, "mCloseAlertfilter":Landroid/content/IntentFilter;
    const-string v5, "CLOSE_ALERT_DIALOG_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v2, "mCloseScreenfilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v0, "mCallStateChangedfilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    iget-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCallStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 353
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;

    invoke-direct {v6, p0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Landroid/content/Context;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 465
    const-string v0, "AlertActivity"

    const-string v1, " onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 468
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    .line 470
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 472
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 473
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 474
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 480
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 483
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->listener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHallSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 485
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 486
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mHallSensor:Landroid/hardware/Sensor;

    .line 490
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 492
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    .line 497
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 499
    :cond_5
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopRing()V

    .line 500
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->stopVibrator()V

    .line 501
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseAlertReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseAlertReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 504
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseScreenReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 505
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCloseScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 507
    :cond_7
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCallStateChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    .line 508
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCallStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 510
    :cond_8
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 512
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 513
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 514
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 516
    :cond_9
    return-void

    .line 476
    :cond_a
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 477
    iput-object v3, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 359
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 364
    .local v1, "win":Landroid/view/Window;
    const/high16 v2, 0x480000

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 366
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->requestWindowFeature(I)Z

    .line 367
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->setContentView(I)V

    .line 368
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 370
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 378
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;

    invoke-direct {v3, p0, p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$TaskForGetNoteData;-><init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 766
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 767
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v2, 0x0

    .line 416
    if-nez p1, :cond_1

    .line 417
    const/4 v8, 0x0

    .line 418
    .local v8, "flagPermission":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, p3

    if-ge v9, v0, :cond_0

    .line 419
    aget v0, p3, v9

    if-eqz v0, :cond_2

    .line 420
    const/4 v8, 0x1

    .line 424
    :cond_0
    if-eqz v8, :cond_3

    .line 425
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->showPermissionDialog()V

    .line 440
    .end local v8    # "flagPermission":Z
    .end local v9    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 418
    .restart local v8    # "flagPermission":Z
    .restart local v9    # "i":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 427
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 428
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 429
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 433
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 435
    iput-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 384
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 387
    :cond_0
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 388
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 389
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 390
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mQueryHandler:Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;

    sget-object v4, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/submodule_alerts/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 394
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 396
    iput-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 400
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v4, "android.permission.WRITE_CALENDAR"

    aput-object v4, v0, v2

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 458
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 461
    :cond_0
    return-void
.end method
