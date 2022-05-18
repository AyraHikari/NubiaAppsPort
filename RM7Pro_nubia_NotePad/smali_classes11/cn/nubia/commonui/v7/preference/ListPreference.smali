.class public Lcn/nubia/commonui/v7/preference/ListPreference;
.super Lcn/nubia/commonui/v7/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    sget v0, Lcn/nubia/commonui/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget-object v1, Lcn/nubia/commonui/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->ListPreference_entries:I

    sget v2, Lcn/nubia/commonui/R$styleable;->ListPreference_android_entries:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 56
    sget v1, Lcn/nubia/commonui/R$styleable;->ListPreference_entryValues:I

    sget v2, Lcn/nubia/commonui/R$styleable;->ListPreference_android_entryValues:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    sget-object v1, Lcn/nubia/commonui/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_summary:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_summary:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 239
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 241
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 240
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 246
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 229
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 176
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    .end local v0    # "entry":Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .restart local v0    # "entry":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "entry":Ljava/lang/CharSequence;
    :cond_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 255
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 287
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 284
    check-cast v0, Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;

    .line 285
    .local v0, "myState":Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcn/nubia/commonui/v7/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 286
    iget-object v1, v0, Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 265
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 266
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 271
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 272
    .local v0, "myState":Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/v7/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 273
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 260
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 261
    return-void

    .line 260
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 97
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 98
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 125
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 126
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 154
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 155
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mValueSet:Z

    .line 157
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 158
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->notifyChanged()V

    .line 162
    :cond_1
    return-void

    .line 153
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method
