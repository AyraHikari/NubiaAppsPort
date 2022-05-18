.class public Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;
.super Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;
.source "MultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

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
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    sget v0, Lcn/nubia/commonui/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 54
    sget-object v1, Lcn/nubia/commonui/R$styleable;->MultiSelectListPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->MultiSelectListPreference_entries:I

    sget v2, Lcn/nubia/commonui/R$styleable;->MultiSelectListPreference_android_entries:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 62
    sget v1, Lcn/nubia/commonui/R$styleable;->MultiSelectListPreference_entryValues:I

    sget v2, Lcn/nubia/commonui/R$styleable;->MultiSelectListPreference_android_entryValues:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 174
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getSelectedItems()[Z
    .locals 6

    .prologue
    .line 184
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 185
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 186
    .local v1, "entryCount":I
    iget-object v4, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 187
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 189
    .local v3, "result":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 190
    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v3
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
    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 198
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 199
    .local v1, "defaultValues":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 202
    .local v0, "defaultValue":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    return-object v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 238
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 235
    check-cast v0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;

    .line 236
    .local v0, "myState":Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 237
    iget-object v1, v0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 216
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 217
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 222
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 223
    .local v0, "myState":Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    .line 224
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 211
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 212
    return-void

    .line 211
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 94
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 131
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 123
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 124
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
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
    .line 152
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 155
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 156
    return-void
.end method
