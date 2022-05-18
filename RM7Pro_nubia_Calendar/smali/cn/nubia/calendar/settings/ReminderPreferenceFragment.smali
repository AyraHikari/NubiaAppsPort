.class public Lcn/nubia/calendar/settings/ReminderPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ReminderPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ALARM_RENMINDER:Ljava/lang/String; = "preferences_alarm_reminder"

.field private static final KEY_ALERT_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field private static final KEY_NOTIFICATION_RENMINDER:Ljava/lang/String; = "preference_notification_reminder"

.field private static final KEY_NO_RENMINDER:Ljava/lang/String; = "preference_no_reminder"

.field private static final KEY_POP_RENMINDER:Ljava/lang/String; = "preferences_pop_reminder"

.field private static final KEY_VIBRATE_TYPE:Ljava/lang/String; = "preferences_alerts_vibrateWhen"

.field private static final TAG:Ljava/lang/String; = "psq"


# instance fields
.field private mAlarmReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

.field private mAlertRingTonePreference:Lcn/nubia/calendar/CalendarRingtonePreference;

.field private mNoReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

.field private mNoticationReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

.field private mPopReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

.field private mVibratePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "preferences_alerts_vibrateWhen"

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    .line 38
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 41
    const-string v0, "preferences_alerts_ringtone"

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/CalendarRingtonePreference;

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlertRingTonePreference:Lcn/nubia/calendar/CalendarRingtonePreference;

    .line 42
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlertRingTonePreference:Lcn/nubia/calendar/CalendarRingtonePreference;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/CalendarRingtonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    const-string v0, "preferences_alarm_reminder"

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlarmReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    .line 45
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlarmReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 47
    const-string v0, "preference_notification_reminder"

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mNoticationReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    .line 50
    const-string v0, "preferences_pop_reminder"

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mPopReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    .line 53
    const-string v0, "preference_no_reminder"

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    iput-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mNoReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    .line 56
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlertRingTonePreference:Lcn/nubia/calendar/CalendarRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->addPreferencesFromResource(I)V

    .line 33
    invoke-direct {p0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->initPreference()V

    .line 34
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 62
    iget-object v1, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mVibratePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlarmReminderTypePreference:Lcn/nubia/calendar/settings/CalendarReminderTypePreference;

    if-ne p1, v0, :cond_1

    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlertRingTonePreference:Lcn/nubia/calendar/CalendarRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/ReminderPreferenceFragment;->mAlertRingTonePreference:Lcn/nubia/calendar/CalendarRingtonePreference;

    .line 70
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
