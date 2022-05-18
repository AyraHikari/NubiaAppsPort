.class public Lcn/nubia/commonui/preference/MultiSelectListPreference;
.super Lcn/nubia/commonui/preference/DialogPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/preference/MultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 54
    const-string v1, "MultiSelectListPreference"

    .line 55
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    .line 54
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "MultiSelectListPreference_entries"

    .line 58
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 59
    const-string v1, "MultiSelectListPreference_entryValues"

    .line 60
    invoke-static {v1}, Lcn/nubia/commonui/ReflectUtils;->getStyleable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/MultiSelectListPreference;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/commonui/preference/MultiSelectListPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/preference/MultiSelectListPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/commonui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/MultiSelectListPreference;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/preference/MultiSelectListPreference;

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getSelectedItems()[Z
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 201
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 202
    .local v1, "entryCount":I
    iget-object v4, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 203
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 205
    .local v3, "result":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 206
    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return-object v3
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 165
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onDialogClosed(Z)V

    .line 216
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 218
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 222
    .end local v0    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mPreferenceChanged:Z

    .line 223
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 227
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 228
    .local v0, "defaultValues":[Ljava/lang/CharSequence;
    array-length v3, v0

    .line 229
    .local v3, "valueCount":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 231
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 232
    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcn/nubia/commonui/app/AlertDialog$Builder;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcn/nubia/commonui/preference/DialogPreference;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 178
    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->getSelectedItems()[Z

    move-result-object v0

    .line 185
    .local v0, "checkedItems":[Z
    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;-><init>(Lcn/nubia/commonui/preference/MultiSelectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 195
    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 196
    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v2, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 197
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lcn/nubia/commonui/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 251
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 256
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 257
    .local v0, "myState":Lcn/nubia/commonui/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    .line 258
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 7
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 240
    const-string v1, "getPersistedStringSet"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    aput-object v0, v4, v3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v0, Ljava/util/Set;

    aput-object v0, v5, v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 243
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 246
    return-void

    .line 243
    .restart local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/Set;

    move-object v6, p2

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 88
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 115
    iput-object p1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 116
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 145
    const-string v1, "persistStringSet"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v0, Ljava/util/Set;

    aput-object v0, v5, v2

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 148
    return-void
.end method
