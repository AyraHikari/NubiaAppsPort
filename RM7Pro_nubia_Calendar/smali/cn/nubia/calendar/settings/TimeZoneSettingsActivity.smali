.class public Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "TimeZoneSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final KEY_HOME_CITY:Ljava/lang/String; = "preferences_home_city"

.field static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled_1"


# instance fields
.field private lastTimeZone:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field private mContext:Landroid/content/Context;

.field private mHomeTZ:Landroid/preference/PreferenceScreen;

.field private mTimezones:[[Ljava/lang/CharSequence;

.field private mUseHomeTZ:Landroid/preference/nubia/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    iput-object v0, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 133
    iput-object v0, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->lastTimeZone:Ljava/lang/String;

    return-void
.end method

.method private showHomeTZCity()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 136
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->getTimeZoneModel()Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    move-result-object v4

    if-nez v4, :cond_0

    .line 137
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v4, p0}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->init(Landroid/content/Context;)V

    .line 139
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->getHomeTZ()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "tempTZ":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v4}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->getHomeTZCity()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "tempCity":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 142
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v5, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "homeTZStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 144
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mHomeTZ:Landroid/preference/PreferenceScreen;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mHomeTZ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->addPreferencesFromResource(I)V

    .line 58
    const v4, 0x7f030018

    invoke-virtual {p0, v4}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->setContentView(I)V

    .line 59
    iput-object p0, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 61
    .local v3, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-static {p0, v7}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 62
    const-string v4, "preferences_home_tz_enabled_1"

    .line 63
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/nubia/SwitchPreference;

    iput-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mUseHomeTZ:Landroid/preference/nubia/SwitchPreference;

    .line 64
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mUseHomeTZ:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/nubia/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    const-string v4, "preferences_home_tz"

    .line 66
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mHomeTZ:Landroid/preference/PreferenceScreen;

    .line 67
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mHomeTZ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    invoke-static {p0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "preferences_home_tz_enabled_1"

    .line 69
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 70
    .local v2, "checked":Z
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mUseHomeTZ:Landroid/preference/nubia/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/nubia/SwitchPreference;->setChecked(Z)V

    .line 71
    if-eqz v2, :cond_0

    .line 72
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mHomeTZ:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 75
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_1

    .line 76
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v8}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 79
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 84
    iget-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->show()V

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/CalendarApplication;

    .line 87
    .local v1, "app":Lcn/nubia/calendar/CalendarApplication;
    invoke-virtual {v1}, Lcn/nubia/calendar/CalendarApplication;->getConfigModel()Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 88
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 90
    const v4, 0x7f110063

    invoke-virtual {p0, v4}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;

    .line 91
    .local v0, "actionBarView":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;
    invoke-virtual {v0, v8}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 94
    const v4, 0x7f0c0093

    invoke-virtual {p0, v4}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v4, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity$1;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity$1;-><init>(Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;)V

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarView;->setOnBack(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->finish()V

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mUseHomeTZ:Landroid/preference/nubia/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mHomeTZ:Landroid/preference/PreferenceScreen;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSwitchInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requerstSportsMatchesData(Landroid/content/Context;)V

    .line 121
    :cond_0
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 130
    invoke-direct {p0}, Lcn/nubia/calendar/settings/TimeZoneSettingsActivity;->showHomeTZCity()V

    .line 132
    return-void
.end method
