.class public Lcn/nubia/commonui/v7/preference/EditTextPreference;
.super Lcn/nubia/commonui/v7/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    sget v0, Lcn/nubia/commonui/R$attr;->editTextPreferenceStyle:I

    sget v1, Lcn/nubia/commonui/v7/preference/AndroidResources;->ANDROID_R_EDITTEXT_PREFERENCE_STYLE:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 125
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 122
    check-cast v0, Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;

    .line 123
    .local v0, "myState":Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcn/nubia/commonui/v7/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 124
    iget-object v1, v0, Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 103
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 104
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 109
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 110
    .local v0, "myState":Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/v7/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    move-object v1, v0

    .line 111
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 94
    return-void

    .line 93
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    .line 67
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    .line 72
    .local v0, "isBlocking":Z
    if-eq v0, v1, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/EditTextPreference;->notifyDependencyChange(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->shouldDisableDependents()Z

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
