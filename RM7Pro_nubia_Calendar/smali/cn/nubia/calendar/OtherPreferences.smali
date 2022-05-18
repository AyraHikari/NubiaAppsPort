.class public Lcn/nubia/calendar/OtherPreferences;
.super Landroid/preference/PreferenceFragment;
.source "OtherPreferences.java"


# static fields
.field public static final KEY_OTHER_1:Ljava/lang/String; = "preferences_tardis_1"

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"


# instance fields
.field private mCopyDb:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcn/nubia/calendar/OtherPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "cn.nubia.calendar.preset_preferences"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 44
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/OtherPreferences;->addPreferencesFromResource(I)V

    .line 45
    const-string v0, "preferences_copy_db"

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/OtherPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/OtherPreferences;->mCopyDb:Landroid/preference/Preference;

    .line 46
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 51
    iget-object v1, p0, Lcn/nubia/calendar/OtherPreferences;->mCopyDb:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.calendar"

    const-string v3, "com.android.providers.calendar.CalendarDebugActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/OtherPreferences;->startActivity(Landroid/content/Intent;)V

    .line 60
    const/4 v1, 0x1

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
