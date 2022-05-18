.class public Lcn/nubia/calendar/settings/CalendarReminderTypePreference;
.super Landroid/preference/Preference;
.source "CalendarReminderTypePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSendAccessibilityEventViewClickedType:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 31
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    const v2, 0x7f110258

    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 54
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 55
    iget-boolean v2, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mSendAccessibilityEventViewClickedType:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 56
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mSendAccessibilityEventViewClickedType:Z

    .line 60
    const/4 v1, 0x1

    .line 62
    .local v1, "eventType":I
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    .end local v1    # "eventType":I
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 70
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 71
    .local v0, "newValue":Z
    :goto_0
    iput-boolean v1, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mSendAccessibilityEventViewClickedType:Z

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    iget-boolean v1, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    if-eq v1, v0, :cond_0

    .line 74
    iput-boolean v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    .line 75
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->persistBoolean(Z)Z

    .line 76
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->notifyDependencyChange(Z)V

    .line 77
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->notifyChanged()V

    .line 83
    :cond_0
    :goto_1
    return-void

    .line 70
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 231
    check-cast v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;

    .line 232
    .local v0, "myState":Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 233
    iget-boolean v1, v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 213
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 218
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 219
    .local v0, "myState":Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference$SavedState;->checked:Z

    move-object v1, v0

    .line 220
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 206
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->setChecked(Z)V

    .line 208
    return-void

    .line 206
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 207
    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 92
    iget-boolean v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 93
    iput-boolean p1, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    .line 94
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->persistBoolean(Z)Z

    .line 95
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->notifyDependencyChange(Z)V

    .line 96
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->notifyChanged()V

    .line 98
    :cond_0
    return-void
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mDisableDependentsState:Z

    .line 197
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->notifyChanged()V

    .line 157
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->notifyChanged()V

    .line 126
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    iget-boolean v3, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    .line 112
    .local v0, "shouldDisable":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 111
    .end local v0    # "shouldDisable":Z
    :cond_2
    iget-boolean v3, p0, Lcn/nubia/calendar/settings/CalendarReminderTypePreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
