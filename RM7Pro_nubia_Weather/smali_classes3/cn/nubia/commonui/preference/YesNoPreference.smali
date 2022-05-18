.class public Lcn/nubia/commonui/preference/YesNoPreference;
.super Lcn/nubia/commonui/preference/DialogPreference;
.source "YesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/YesNoPreference$SavedState;
    }
.end annotation


# instance fields
.field private mWasPositiveResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const v0, 0x1010090

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/YesNoPreference;->mWasPositiveResult:Z

    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onDialogClosed(Z)V

    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/YesNoPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/YesNoPreference;->setValue(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 84
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
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 122
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 119
    check-cast v0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;

    .line 120
    .local v0, "myState":Lcn/nubia/commonui/preference/YesNoPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 121
    iget-boolean v1, v0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/preference/YesNoPreference;->setValue(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 101
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/YesNoPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 106
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 107
    .local v0, "myState":Lcn/nubia/commonui/preference/YesNoPreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/YesNoPreference;->getValue()Z

    move-result v2

    iput-boolean v2, v0, Lcn/nubia/commonui/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    move-object v1, v0

    .line 108
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/preference/YesNoPreference;->mWasPositiveResult:Z

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/YesNoPreference;->getPersistedBoolean(Z)Z

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/YesNoPreference;->setValue(Z)V

    .line 91
    return-void

    .line 89
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 90
    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcn/nubia/commonui/preference/YesNoPreference;->mWasPositiveResult:Z

    .line 68
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/YesNoPreference;->persistBoolean(Z)Z

    .line 70
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/YesNoPreference;->notifyDependencyChange(Z)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/YesNoPreference;->mWasPositiveResult:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
