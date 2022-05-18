.class public Lcn/nubia/calendar/GeneralPreferences;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ALERT_TYPE_ALERTS:Ljava/lang/String; = "0"

.field private static final ALERT_TYPE_OFF:Ljava/lang/String; = "2"

.field private static final ALERT_TYPE_STATUS_BAR:Ljava/lang/String; = "1"

.field public static final DEFAULT_DETAILED_VIEW:I = 0x2

.field public static final DEFAULT_SHOW_WEEK_NUM:Z = false

.field public static final DEFAULT_START_VIEW:I = 0x4

.field public static final EVENTMODEL_REMINDER_DEFAULT:Ljava/lang/String; = "15"

.field public static final KEY_ALERTS:Ljava/lang/String; = "preferences_alerts"

.field public static final KEY_ALERTS_AUTOMATIC_SYNCHRONIZE:Ljava/lang/String; = "preferences_automatic_synchronize"

.field public static final KEY_ALERTS_CATEGORY:Ljava/lang/String; = "preferences_alerts_category"

.field public static final KEY_ALERTS_POPUP:Ljava/lang/String; = "preferences_alerts_popup"

.field public static final KEY_ALERTS_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field private static final KEY_ALERTS_TYPE:Ljava/lang/String; = "preferences_alerts_type"

.field public static final KEY_ALERTS_VIBRATE:Ljava/lang/String; = "preferences_alerts_vibrate"

.field public static final KEY_ALERTS_VIBRATE_WHEN:Ljava/lang/String; = "preferences_alerts_vibrateWhen"

.field public static final KEY_CALENDAR_EVENT_REMINDER:Ljava/lang/String; = "preferences_calendar_event_reminder"

.field public static final KEY_CALERAR_VIEW_SETTINGS:Ljava/lang/String; = "preferences_view_settings"

.field public static final KEY_CLEAR_SEARCH_HISTORY:Ljava/lang/String; = "preferences_clear_search_history"

.field public static final KEY_DAYS_PER_WEEK:Ljava/lang/String; = "preferences_days_per_week"

.field public static final KEY_DEFAULT_CALENDAR:Ljava/lang/String; = "preference_defaultCalendar"

.field public static final KEY_DEFAULT_CELL_HEIGHT:Ljava/lang/String; = "preferences_default_cell_height"

.field public static final KEY_DEFAULT_REMINDER:Ljava/lang/String; = "preferences_default_reminder"

.field public static final KEY_DETAILED_VIEW:Ljava/lang/String; = "preferred_detailedView"

.field public static final KEY_HIDE_DECLINED:Ljava/lang/String; = "preferences_hide_declined"

.field static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled"

.field public static final KEY_SHOW_CONTROLS:Ljava/lang/String; = "preferences_show_controls"

.field public static final KEY_SHOW_WEEK_NUM:Ljava/lang/String; = "preferences_show_week_num"

.field public static final KEY_SKIP_SETUP:Ljava/lang/String; = "preferences_skip_setup"

.field public static final KEY_START_VIEW:Ljava/lang/String; = "preferred_startView"

.field public static final KEY_WEEK_START_DAY:Ljava/lang/String; = "preferences_week_start_day"

.field public static final NO_REMINDER:I = -0x1

.field public static final NO_REMINDER_STRING:Ljava/lang/String; = "-1"

.field public static final REMINDER_DEFAULT_TIME:I = 0xf

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"

.field public static final WEEK_START_DEFAULT:Ljava/lang/String; = "-1"

.field public static final WEEK_START_MONDAY:Ljava/lang/String; = "2"

.field public static final WEEK_START_SATURDAY:Ljava/lang/String; = "7"

.field public static final WEEK_START_SUNDAY:Ljava/lang/String; = "1"


# instance fields
.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field mAlert:Landroid/preference/CheckBoxPreference;

.field mAutomaticSynchronize:Landroid/preference/CheckBoxPreference;

.field mCalendarEventReminder:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field mDefaultReminder:Landroid/preference/ListPreference;

.field mHideDeclined:Landroid/preference/CheckBoxPreference;

.field mHomeTZ:Landroid/preference/ListPreference;

.field private mOrientation:I

.field mPopup:Landroid/preference/CheckBoxPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field private mTimezones:[[Ljava/lang/CharSequence;

.field mUseHomeTZ:Landroid/preference/CheckBoxPreference;

.field mVibrateWhen:Landroid/preference/ListPreference;

.field mWeekStart:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 166
    new-instance v0, Lcn/nubia/calendar/GeneralPreferences$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/GeneralPreferences$1;-><init>(Lcn/nubia/calendar/GeneralPreferences;)V

    iput-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mActionBarListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/GeneralPreferences;

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    .line 186
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cn.nubia.calendar.preset_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method private migrateOldPreferences(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 526
    const-string v2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "preferences_alerts_vibrate"

    .line 527
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    const-string v2, "preferences_alerts_vibrate"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f0c025f

    .line 530
    .local v0, "stringId":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 533
    .end local v0    # "stringId":I
    :cond_0
    const-string v2, "preferences_alerts"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "preferences_alerts_type"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 534
    const-string v2, "preferences_alerts_type"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "type":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 537
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 538
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 539
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 550
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preferences_alerts_type"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 552
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 528
    :cond_3
    const v0, 0x7f0c025e

    goto :goto_0

    .line 540
    .restart local v1    # "type":Ljava/lang/String;
    :cond_4
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 541
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 542
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 543
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 544
    :cond_5
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 546
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 547
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string v0, "cn.nubia.calendar.preset_preferences"

    const v1, 0x7f070004

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 195
    return-void
.end method

.method private setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 365
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 369
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, p1}, Landroid/preference/RingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 375
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mAutomaticSynchronize:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 377
    return-void
.end method

.method private setRingtoneLabel(Landroid/content/Context;Landroid/preference/RingtonePreference;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mRingtone"    # Landroid/preference/RingtonePreference;

    .prologue
    .line 345
    invoke-static {p1}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 346
    .local v2, "mSharedPreferences":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 347
    const-string v4, "preferences_alerts_ringtone"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "mUri":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0213

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "mRingtoneTitle":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/preference/RingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    .end local v0    # "mRingtoneTitle":Ljava/lang/String;
    .end local v3    # "mUri":Ljava/lang/String;
    :cond_0
    return-void

    .line 353
    .restart local v3    # "mUri":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 352
    invoke-static {p1, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 354
    .local v1, "mSeleRingtone":Landroid/media/Ringtone;
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mRingtoneTitle":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateChildPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 560
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v2}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mCalendarEventReminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 579
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 572
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 573
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mCalendarEventReminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateEventReminderChildPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 583
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mCalendarEventReminder:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v2}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 591
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 588
    iget-object v0, p0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 202
    .local v2, "activity":Landroid/app/Activity;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    .line 203
    move-object/from16 v0, p0

    iput-object v2, v0, Lcn/nubia/calendar/GeneralPreferences;->mActivity:Landroid/app/Activity;

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    .line 209
    .local v7, "preferenceManager":Landroid/preference/PreferenceManager;
    invoke-static {v2}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 210
    .local v10, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v14, "cn.nubia.calendar.preset_preferences"

    invoke-virtual {v7, v14}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 216
    .local v8, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const-string v14, "preferences_alerts"

    .line 217
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    .line 218
    const-string v14, "preferences_alerts_vibrateWhen"

    .line 219
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    .line 220
    const-string v14, "vibrator"

    .line 221
    invoke-virtual {v2, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 222
    .local v13, "vibrator":Landroid/os/Vibrator;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v14

    if-nez v14, :cond_6

    .line 223
    :cond_0
    const-string v14, "preferences_alerts_category"

    .line 224
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 225
    .local v6, "mAlertGroup":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v6, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    .end local v6    # "mAlertGroup":Landroid/preference/PreferenceCategory;
    :goto_0
    const-string v14, "preferences_alerts_ringtone"

    .line 231
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/RingtonePreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    .line 232
    const-string v14, "preferences_alerts_popup"

    .line 233
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mPopup:Landroid/preference/CheckBoxPreference;

    .line 234
    const-string v14, "preferences_home_tz_enabled"

    .line 235
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v14, "preferences_hide_declined"

    .line 237
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHideDeclined:Landroid/preference/CheckBoxPreference;

    .line 238
    const-string v14, "preferences_week_start_day"

    .line 239
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    .line 240
    const-string v14, "preferences_default_reminder"

    .line 241
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    .line 242
    const-string v14, "preferences_home_tz"

    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    .line 244
    const-string v14, "preferences_automatic_synchronize"

    .line 245
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mAutomaticSynchronize:Landroid/preference/CheckBoxPreference;

    .line 249
    const-string v14, "preferences_calendar_event_reminder"

    .line 250
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mCalendarEventReminder:Landroid/preference/CheckBoxPreference;

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcn/nubia/calendar/util/Utils;->hasDefaultHomeTimezone(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0263

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 258
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "tz":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    if-nez v14, :cond_2

    .line 264
    new-instance v14, Lcn/nubia/calendar/TimezoneAdapter;

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v14, v2, v11, v0, v1}, Lcn/nubia/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v14}, Lcn/nubia/calendar/TimezoneAdapter;->getAllTimezones()[[Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/GeneralPreferences;->mTimezones:[[Ljava/lang/CharSequence;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v12

    .line 271
    .local v12, "tzName":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 272
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    .line 275
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v14, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcn/nubia/calendar/GeneralPreferences;->migrateOldPreferences(Landroid/content/SharedPreferences;)V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 281
    invoke-direct/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->updateEventReminderChildPreferences()V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget-object v14, v14, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 285
    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "language":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "custom_calendar"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 288
    .local v9, "prefs1":Landroid/content/SharedPreferences;
    const-string v14, "is_holiday_visible"

    const/4 v15, 0x1

    .line 289
    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 290
    .local v4, "isHolidayVisible":Z
    if-eqz v4, :cond_4

    const-string v14, "zh"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 297
    :cond_4
    const-string v14, "preferences_view_settings"

    .line 298
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 299
    .local v3, "calendarViewSettingsGroup":Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mAutomaticSynchronize:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v14}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 304
    .end local v3    # "calendarViewSettingsGroup":Landroid/preference/PreferenceCategory;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mOrientation:I

    .line 305
    return-void

    .line 227
    .end local v4    # "isHolidayVisible":Z
    .end local v5    # "language":Ljava/lang/String;
    .end local v9    # "prefs1":Landroid/content/SharedPreferences;
    .end local v11    # "tz":Ljava/lang/String;
    .end local v12    # "tzName":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v15}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    const v2, 0x7f030060

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f110057

    .line 312
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 313
    .local v0, "rLayout":Landroid/widget/RelativeLayout;
    iget v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 314
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 316
    :cond_0
    const v2, 0x7f110058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/GeneralPreferences;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 382
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 383
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 384
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 385
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 421
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mUseHomeTZ:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    .line 422
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "tz":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/nubia/calendar/util/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    move v2, v3

    .line 514
    .end local v1    # "tz":Ljava/lang/String;
    :cond_0
    :goto_1
    return v2

    .line 425
    :cond_1
    const-string v1, "auto"

    .restart local v1    # "tz":Ljava/lang/String;
    goto :goto_0

    .line 438
    .end local v1    # "tz":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_3

    move-object v1, p2

    .line 439
    check-cast v1, Ljava/lang/String;

    .line 441
    .restart local v1    # "tz":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcn/nubia/calendar/GeneralPreferences;->mHomeTZ:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcn/nubia/calendar/util/Utils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/calendar/util/Utils;->hasDefaultHomeTimezone(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 446
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcn/nubia/calendar/util/Utils;->setDefaultHomeTimezone(Landroid/content/Context;Z)V

    goto :goto_1

    .line 448
    .end local v1    # "tz":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mWeekStart:Landroid/preference/ListPreference;

    if-eq p1, v4, :cond_0

    .line 451
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_4

    .line 452
    iget-object v3, p0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mDefaultReminder:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 454
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    if-ne p1, v4, :cond_5

    move v2, v3

    .line 456
    goto :goto_1

    .line 457
    :cond_5
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 458
    iget-object v3, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mVibrateWhen:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 462
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mAutomaticSynchronize:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_a

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "prefs1":Landroid/content/SharedPreferences;
    sget-object v4, Lcn/nubia/calendar/util/Utils;->prefs6:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_8

    .line 465
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs6:Landroid/content/SharedPreferences;

    .line 470
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "is_auto_sync"

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 471
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 472
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mAutomaticSynchronize:Landroid/preference/CheckBoxPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 473
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 474
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/calendar/util/Utils;->isConnectingToInternet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 475
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcn/nubia/calendar/GeneralPreferences$2;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/GeneralPreferences$2;-><init>(Lcn/nubia/calendar/GeneralPreferences;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 500
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_7
    :goto_3
    move v2, v3

    .line 508
    goto/16 :goto_1

    .line 467
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    const-string v5, "pres"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_2

    .line 502
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mContext:Landroid/content/Context;

    .line 503
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0159

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x5dc

    .line 502
    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 504
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .end local v0    # "prefs1":Landroid/content/SharedPreferences;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_a
    move v2, v3

    .line 512
    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 598
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "key":Ljava/lang/String;
    const-string v3, "preferences_clear_search_history"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 600
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    .line 601
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/calendar/util/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 603
    .local v1, "suggestions":Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v1}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 604
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0086

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 605
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 608
    .end local v1    # "suggestions":Landroid/provider/SearchRecentSuggestions;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 323
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 324
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 325
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 326
    invoke-direct {p0, p0}, Lcn/nubia/calendar/GeneralPreferences;->setPreferenceListeners(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    iget v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 330
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 331
    .local v0, "customView":Landroid/view/View;
    const v2, 0x7f11004b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 332
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f0c004e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 335
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "title":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/GeneralPreferences;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-direct {p0, v2, v3}, Lcn/nubia/calendar/GeneralPreferences;->setRingtoneLabel(Landroid/content/Context;Landroid/preference/RingtonePreference;)V

    .line 336
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcn/nubia/calendar/GeneralPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 391
    .local v0, "a":Landroid/app/Activity;
    const-string v2, "preferences_alerts"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-direct {p0}, Lcn/nubia/calendar/GeneralPreferences;->updateChildPreferences()V

    .line 393
    if-eqz v0, :cond_0

    .line 394
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 395
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 396
    iget-object v2, p0, Lcn/nubia/calendar/GeneralPreferences;->mAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    const-string v2, "removeOldReminders"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "preferences_calendar_event_reminder"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    invoke-direct {p0}, Lcn/nubia/calendar/GeneralPreferences;->updateEventReminderChildPreferences()V

    .line 410
    :cond_1
    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 413
    :cond_2
    return-void

    .line 399
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
