.class public Lcn/nubia/calendar/CalendarSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field protected static final ALERT_TITLE:I = 0xb

.field private static final CODE_LOCATION_PERMISSION:I = 0x0

.field private static DEFAULT_REMINDER_TIME_TYPE:I = 0x0

.field public static final KEY_ALERT_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field public static final KEY_CALENDAR_VISBLE_SETTINGS:Ljava/lang/String; = "preferences_calendar_visible_settings"

.field public static final KEY_DEFAULT_REMINDERTIMER:Ljava/lang/String; = "preferences_default_reminder"

.field public static final KEY_MUSIC_RINGTONE:Ljava/lang/String; = "preferences_music_ringtone"

.field public static final KEY_MUSIC_SILENT:Ljava/lang/String; = "preferences_music_silent"

.field public static final KEY_POP_RENMINDER:Ljava/lang/String; = "preferences_pop_window"

.field public static final KEY_POP_SPORTSEVENTS:Ljava/lang/String; = "preferences_pop_window_sportsevents"

.field public static final KEY_POP_WEATHER:Ljava/lang/String; = "preferences_pop_window_weather"

.field public static final KEY_TIMEZONE_SETTINGS:Ljava/lang/String; = "preferences_timezone_settings"

.field public static final KEY_VIBRATE_TYPE:Ljava/lang/String; = "preferences_alerts_vibrate"

.field public static final KEY_WEEK_STARTDAY:Ljava/lang/String; = "preferences_week_start_day"

.field protected static final MUSIC_TITLE:I = 0xa

.field private static final REMINDER_TIME_REQUEST_CODE:I = 0x0

.field private static final REQUEST_CODE_MUSIC_PICK:I = 0x1

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"

.field private static final SILENT_ITEM:Ljava/lang/String; = "content://media/internal/audio/media/10000"

.field private static mReminderTimeEntriesId:I

.field public static mReminderTimeValuesId:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAlertRingTonePreference:Landroid/preference/RingtonePreference;

.field private mCalendarVisibleSettings:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

.field private mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

.field private mReminderTimeListPreference:Landroid/preference/PreferenceScreen;

.field private mRingtoneTitle:Ljava/lang/String;

.field private mSportsPreference:Landroid/preference/nubia/SwitchPreference;

.field private mTimeZoneSettings:Landroid/preference/PreferenceScreen;

.field private mVibratePreference:Landroid/preference/nubia/SwitchPreference;

.field private mWeatherPreference:Landroid/preference/nubia/SwitchPreference;

.field private mWeekStartDayListPreference:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0a0030

    sput v0, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeValuesId:I

    .line 99
    const v0, 0x7f0a0007

    sput v0, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeEntriesId:I

    .line 100
    const/4 v0, 0x5

    sput v0, Lcn/nubia/calendar/CalendarSettingsActivity;->DEFAULT_REMINDER_TIME_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 106
    iput-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    .line 107
    new-instance v0, Lcn/nubia/calendar/CalendarSettingsActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/CalendarSettingsActivity$1;-><init>(Lcn/nubia/calendar/CalendarSettingsActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 195
    iput-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/CalendarSettingsActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/preference/RingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/CalendarSettingsActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mAlertRingTonePreference:Landroid/preference/RingtonePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/CalendarSettingsActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/CalendarSettingsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/CalendarSettingsActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getReminderTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_default_reminder"

    const-string v2, "-2"

    .line 402
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 574
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 575
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    .line 577
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cn.nubia.calendar.preset_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method private getYunSdkCountPopReminder()V
    .locals 4

    .prologue
    .line 506
    :try_start_0
    const-string v1, "AlarmReminder"

    invoke-static {v1}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "yunsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 434
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 435
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 436
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 437
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeatherPreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 438
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mSportsPreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/nubia/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    return-void
.end method

.method private setReminderTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 408
    .line 409
    :try_start_0
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_default_reminder"

    .line 411
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setRingtoneLabel(Landroid/content/Context;Landroid/preference/RingtonePreference;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mRingtone"    # Landroid/preference/RingtonePreference;

    .prologue
    .line 582
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 583
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 584
    const-string v2, "preferences_alerts_ringtone"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "uri":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 586
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0213

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 603
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 589
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/nubia/calendar/CalendarSettingsActivity$5;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/CalendarSettingsActivity$5;-><init>(Lcn/nubia/calendar/CalendarSettingsActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 599
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateReminderChildPreferences(Z)V
    .locals 3
    .param p1, "bReminder"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 493
    if-eqz p1, :cond_0

    .line 494
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/nubia/SwitchPreference;->setEnabled(Z)V

    .line 495
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 501
    :goto_0
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/nubia/SwitchPreference;->setEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndRequestPermissions()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method protected getReminderTimeSummaryByTime(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 538
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeEntriesId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 540
    .local v0, "reminderTimeEntries":[Ljava/lang/CharSequence;
    const-string v1, ""

    .line 541
    .local v1, "summary":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_0

    .line 570
    :goto_0
    return-object v1

    .line 543
    :sswitch_0
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 544
    goto :goto_0

    .line 546
    :sswitch_1
    const/4 v2, 0x1

    aget-object v1, v0, v2

    .line 547
    goto :goto_0

    .line 549
    :sswitch_2
    const/4 v2, 0x2

    aget-object v1, v0, v2

    .line 550
    goto :goto_0

    .line 552
    :sswitch_3
    const/4 v2, 0x3

    aget-object v1, v0, v2

    .line 553
    goto :goto_0

    .line 555
    :sswitch_4
    const/4 v2, 0x4

    aget-object v1, v0, v2

    .line 556
    goto :goto_0

    .line 558
    :sswitch_5
    const/4 v2, 0x5

    aget-object v1, v0, v2

    .line 559
    goto :goto_0

    .line 561
    :sswitch_6
    const/4 v2, 0x6

    aget-object v1, v0, v2

    .line 562
    goto :goto_0

    .line 564
    :sswitch_7
    const/4 v2, 0x7

    aget-object v1, v0, v2

    .line 565
    goto :goto_0

    .line 567
    :sswitch_8
    const/16 v2, 0x8

    aget-object v1, v0, v2

    goto :goto_0

    .line 541
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_3
        0xf -> :sswitch_4
        0x1e -> :sswitch_5
        0x3c -> :sswitch_6
        0x5a0 -> :sswitch_7
        0x2760 -> :sswitch_8
    .end sparse-switch
.end method

.method public initPrefrence(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    .line 216
    .local v6, "preferenceManager":Landroid/preference/PreferenceManager;
    const-string v10, "cn.nubia.calendar.preset_preferences"

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeValuesId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 222
    .local v8, "reminderTimeValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeEntriesId:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 225
    .local v7, "reminderTimeEntries":[Ljava/lang/CharSequence;
    const-string v10, "preferences_default_reminder"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeListPreference:Landroid/preference/PreferenceScreen;

    .line 226
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeListPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    const-string v10, "preferences_week_start_day"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    .line 229
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "preferences_week_start_day"

    const-string v12, "-1"

    .line 230
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, "str":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 232
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    .line 233
    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v11

    .line 232
    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    const-string v10, "preferences_alerts_vibrate"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/nubia/SwitchPreference;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    .line 238
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "preferences_alerts_vibrate"

    const/4 v12, 0x1

    .line 239
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 240
    .local v2, "bVibrate":Z
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v10, v2}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 241
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "preferences_alerts_vibrate"

    .line 242
    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 244
    const-string v10, "preferences_pop_window_weather"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/nubia/SwitchPreference;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeatherPreference:Landroid/preference/nubia/SwitchPreference;

    .line 245
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "preferences_pop_window_weather"

    const/4 v12, 0x0

    .line 246
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 247
    .local v3, "bWeather":Z
    const-string v10, "calendar_settings_general_setup"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;

    .line 248
    .local v4, "generalSetup":Lcn/nubia/commonui/widget/NubiaPreferenceCategory;
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeatherPreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v10, v3}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 250
    const-string v10, "preferences_pop_window_sportsevents"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/nubia/SwitchPreference;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mSportsPreference:Landroid/preference/nubia/SwitchPreference;

    .line 252
    const-string v10, "sports_SPORTSMATCH_status"

    invoke-static {p1, v10}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->getSportsMatchBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 253
    .local v5, "hasSportsMatch":Z
    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSWITCH_SPORTS()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v5, :cond_4

    .line 254
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "preferences_pop_window_sportsevents"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 255
    .local v1, "bSportsEvents":Z
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mSportsPreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v10, v1}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 260
    .end local v1    # "bSportsEvents":Z
    :goto_0
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    const-string v11, "cn.nubia.weather"

    invoke-static {v10, v11}, Lcn/nubia/calendar/util/WeatherUtils;->isExistWeatherApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 262
    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->isInternalVersion()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 263
    :cond_0
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeatherPreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v4, v10}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_1
    const-string v10, "preferences_pop_window"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/nubia/SwitchPreference;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

    .line 267
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "preferences_pop_window"

    const/4 v12, 0x1

    .line 268
    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 269
    .local v0, "bReminder":Z
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v10, v0}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 272
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-le v10, v11, :cond_2

    .line 273
    const/4 v0, 0x0

    .line 274
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v10, v0}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 275
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v4, v10}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    :cond_2
    invoke-static {p1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "preferences_pop_window"

    .line 279
    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 281
    const-string v10, "preferences_alerts_ringtone"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/CalendarRingtonePreference;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mAlertRingTonePreference:Landroid/preference/RingtonePreference;

    .line 283
    const-string v10, "preferences_music_ringtone"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    .line 285
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    new-instance v11, Lcn/nubia/calendar/CalendarSettingsActivity$3;

    invoke-direct {v11, p0}, Lcn/nubia/calendar/CalendarSettingsActivity$3;-><init>(Lcn/nubia/calendar/CalendarSettingsActivity;)V

    .line 286
    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 348
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcn/nubia/calendar/CalendarSettingsActivity$4;

    invoke-direct {v11, p0}, Lcn/nubia/calendar/CalendarSettingsActivity$4;-><init>(Lcn/nubia/calendar/CalendarSettingsActivity;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 383
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 384
    if-nez v0, :cond_3

    .line 387
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v4, v10}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v10}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 390
    :cond_3
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mAlertRingTonePreference:Landroid/preference/RingtonePreference;

    invoke-virtual {v4, v10}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    const-string v10, "preferences_calendar_visible_settings"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mCalendarVisibleSettings:Landroid/preference/PreferenceScreen;

    .line 393
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mCalendarVisibleSettings:Landroid/preference/PreferenceScreen;

    const v11, 0x7f03007e

    .line 394
    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 396
    const-string v10, "preferences_timezone_settings"

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mTimeZoneSettings:Landroid/preference/PreferenceScreen;

    .line 397
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mTimeZoneSettings:Landroid/preference/PreferenceScreen;

    const v11, 0x7f03007e

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setLayoutResource(I)V

    .line 398
    return-void

    .line 257
    .end local v0    # "bReminder":Z
    :cond_4
    iget-object v10, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mSportsPreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v4, v10}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 650
    packed-switch p1, :pswitch_data_0

    .line 684
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 685
    return-void

    .line 652
    :pswitch_0
    const/4 v1, 0x0

    .line 654
    .local v1, "ringtoneUri":Landroid/net/Uri;
    if-eqz p3, :cond_0

    .line 655
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 656
    if-nez v1, :cond_1

    .line 657
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0213

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mRingtoneTitle:Ljava/lang/String;

    .line 664
    :goto_1
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mRingtoneTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 665
    if-eqz v1, :cond_2

    .line 666
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    .line 667
    invoke-static {v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 668
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_music_ringtone"

    .line 670
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 669
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 670
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 672
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 673
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_music_silent"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 660
    :cond_1
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 662
    .local v0, "mSeleRingtone":Landroid/media/Ringtone;
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mRingtoneTitle:Ljava/lang/String;

    goto :goto_1

    .line 675
    .end local v0    # "mSeleRingtone":Landroid/media/Ringtone;
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 676
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_music_ringtone"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 677
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 678
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_music_silent"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 211
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xe

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    iput-object p0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    .line 132
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->addPreferencesFromResource(I)V

    .line 133
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->setContentView(I)V

    .line 134
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 135
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 139
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 146
    :cond_0
    new-instance v1, Lcn/nubia/calendar/util/CtaUtils;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/util/CtaUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    .line 147
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    invoke-virtual {v1, p0}, Lcn/nubia/calendar/util/CtaUtils;->ctaDialogdisPlay(Landroid/content/Context;)V

    .line 150
    :cond_1
    invoke-virtual {p0, p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->initPrefrence(Landroid/content/Context;)V

    .line 151
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 152
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 154
    invoke-static {p0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->checkAndRequestPermissions()V

    .line 157
    :cond_2
    const v1, 0x7f110063

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .line 158
    .local v0, "actionBarView":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 161
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v1, Lcn/nubia/calendar/CalendarSettingsActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/CalendarSettingsActivity$2;-><init>(Lcn/nubia/calendar/CalendarSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setOnBack(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 200
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 204
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 422
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 430
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 424
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->finish()V

    .line 427
    const/4 v0, 0x1

    goto :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 636
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 637
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/CalendarSettingsActivity;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 639
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 443
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeListPreference:Landroid/preference/PreferenceScreen;

    if-ne p1, v1, :cond_1

    .line 489
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 446
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 447
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeekStartDayListPreference:Landroid/preference/ListPreference;

    .line 449
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    .line 451
    invoke-static {v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 452
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_week_start_day"

    check-cast p2, Ljava/lang/String;

    .line 453
    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 454
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 455
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    if-ne v1, p1, :cond_3

    .line 456
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 457
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_alerts_vibrate"

    check-cast p2, Ljava/lang/Boolean;

    .line 458
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 459
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

    if-ne v1, p1, :cond_5

    .line 460
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getYunSdkCountPopReminder()V

    .line 461
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mPopReminderTypePreference:Landroid/preference/nubia/SwitchPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 462
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_pop_window"

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    .line 463
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 464
    const-string v1, "calendar_settings_general_setup"

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;

    .line 465
    .local v0, "generalSetup":Lcn/nubia/commonui/widget/NubiaPreferenceCategory;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 466
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/preference/nubia/SwitchPreference;->setOrder(I)V

    .line 467
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 468
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 469
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 471
    :cond_4
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mVibratePreference:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mMusicRingTonePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaPreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_alerts_vibrate"

    const/4 v3, 0x1

    .line 474
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 476
    .end local v0    # "generalSetup":Lcn/nubia/commonui/widget/NubiaPreferenceCategory;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mAlertRingTonePreference:Landroid/preference/RingtonePreference;

    if-ne v1, p1, :cond_6

    .line 477
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mAlertRingTonePreference:Landroid/preference/RingtonePreference;

    invoke-direct {p0, v1, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->setRingtoneLabel(Landroid/content/Context;Landroid/preference/RingtonePreference;)V

    goto/16 :goto_0

    .line 478
    :cond_6
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeatherPreference:Landroid/preference/nubia/SwitchPreference;

    if-ne v1, p1, :cond_7

    .line 479
    const-string v1, "WeatherSwitch"

    invoke-static {v1}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mWeatherPreference:Landroid/preference/nubia/SwitchPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 481
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_pop_window_weather"

    check-cast p2, Ljava/lang/Boolean;

    .line 482
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 483
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mSportsPreference:Landroid/preference/nubia/SwitchPreference;

    if-ne v1, p1, :cond_0

    .line 484
    const-string v1, "SportsEvents"

    invoke-static {v1}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 485
    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mSportsPreference:Landroid/preference/nubia/SwitchPreference;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 486
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_pop_window_sportsevents"

    check-cast p2, Ljava/lang/Boolean;

    .line 487
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->finish()V

    .line 193
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 516
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 518
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 519
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 520
    invoke-direct {p0, p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 522
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getReminderTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "temp":Ljava/lang/String;
    const-string v1, "-2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    const-string v2, "15"

    invoke-direct {p0, v1, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->setReminderTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 525
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeListPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    .line 527
    invoke-direct {p0, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getReminderTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 526
    invoke-virtual {p0, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getReminderTimeSummaryByTime(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mAlertRingTonePreference:Landroid/preference/RingtonePreference;

    invoke-direct {p0, v1, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->setRingtoneLabel(Landroid/content/Context;Landroid/preference/RingtonePreference;)V

    .line 534
    return-void

    .line 529
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mReminderTimeListPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarSettingsActivity;->mContext:Landroid/content/Context;

    .line 531
    invoke-direct {p0, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getReminderTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 530
    invoke-virtual {p0, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->getReminderTimeSummaryByTime(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 646
    return-void
.end method
