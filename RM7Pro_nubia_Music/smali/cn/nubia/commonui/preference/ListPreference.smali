.class public Lcn/nubia/commonui/preference/ListPreference;
.super Lcn/nubia/commonui/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 76
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    const-string v0, "ListPreference"

    .line 51
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 50
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    const-string v0, "ListPreference_entries"

    .line 54
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 55
    const-string v0, "ListPreference_entryValues"

    .line 56
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    const-string v0, "Preference"

    .line 63
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 62
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 65
    const-string v0, "Preference_summary"

    .line 66
    invoke-static {v0}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_right_summary_preference:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setLayoutResource(I)V

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/commonui/preference/ListPreference;I)I
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 236
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 238
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    :goto_1
    return v0

    .line 237
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lcn/nubia/commonui/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 226
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 173
    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onDialogClosed(Z)V

    .line 286
    if-eqz p1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    iget-object v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 260
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcn/nubia/commonui/preference/ListPreference$1;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/preference/ListPreference$1;-><init>(Lcn/nubia/commonui/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 279
    invoke-virtual {p1, v3, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 280
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 322
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcn/nubia/commonui/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_1
    check-cast p1, Lcn/nubia/commonui/preference/ListPreference$SavedState;

    .line 329
    invoke-virtual {p1}, Lcn/nubia/commonui/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcn/nubia/commonui/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    iget-object v0, p1, Lcn/nubia/commonui/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 309
    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    :goto_0
    return-object v0

    .line 315
    :cond_0
    new-instance v1, Lcn/nubia/commonui/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Lcn/nubia/commonui/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 316
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/commonui/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    .line 317
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 304
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    return-void

    .line 304
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 123
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 150
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 151
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/nubia/commonui/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 152
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 153
    iput-boolean v1, p0, Lcn/nubia/commonui/preference/ListPreference;->mValueSet:Z

    .line 154
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/ListPreference;->notifyChanged()V

    .line 159
    :cond_1
    return-void

    .line 150
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/commonui/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method
