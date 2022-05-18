.class public Lcn/nubia/calendar/QuickResponseSettings;
.super Landroid/preference/PreferenceFragment;
.source "QuickResponseSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickResponseSettings"


# instance fields
.field mEditTextPrefs:[Landroid/preference/EditTextPreference;

.field mResponses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcn/nubia/calendar/QuickResponseSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    .line 48
    invoke-virtual {p0}, Lcn/nubia/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 47
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 49
    .local v3, "ps":Landroid/preference/PreferenceScreen;
    const v5, 0x7f0c007c

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcn/nubia/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/calendar/util/Utils;->getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    .line 53
    iget-object v5, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 54
    iget-object v5, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Landroid/preference/EditTextPreference;

    iput-object v5, p0, Lcn/nubia/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    .line 56
    iget-object v5, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "i":I
    iget-object v6, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 59
    .local v4, "response":Ljava/lang/String;
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcn/nubia/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "et":Landroid/preference/EditTextPreference;
    const v8, 0x7f0c007a

    invoke-virtual {v0, v8}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 61
    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    iget-object v8, p0, Lcn/nubia/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aput-object v0, v8, v2

    .line 65
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 58
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 70
    .end local v0    # "et":Landroid/preference/EditTextPreference;
    .end local v2    # "i":I
    .end local v4    # "response":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v3}, Lcn/nubia/calendar/QuickResponseSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 71
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 98
    iget-object v1, p0, Lcn/nubia/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    aput-object p2, v1, v0

    .line 101
    iget-object v1, p0, Lcn/nubia/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcn/nubia/calendar/QuickResponseSettings;->mEditTextPrefs:[Landroid/preference/EditTextPreference;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcn/nubia/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "preferences_quick_responses"

    iget-object v3, p0, Lcn/nubia/calendar/QuickResponseSettings;->mResponses:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcn/nubia/calendar/util/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    :cond_0
    const/4 v1, 0x1

    .line 109
    :goto_1
    return v1

    .line 97
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 81
    invoke-virtual {p0}, Lcn/nubia/calendar/QuickResponseSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/CalendarSettingsActivity;

    .line 82
    .local v0, "activity":Lcn/nubia/calendar/CalendarSettingsActivity;
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarSettingsActivity;->isMultiPane()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const v2, 0x7f0c007c

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/CalendarSettingsActivity;->setTitle(I)V

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 86
    .local v1, "mActionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 87
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 90
    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 92
    :cond_1
    return-void
.end method
