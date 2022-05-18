.class public Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;
.super Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;
.source "MultiSelectListPreferenceDialogFragment.java"


# static fields
.field private static final SAVE_STATE_CHANGED:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.changed"

.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "MultiSelectListPreferenceDialogFragment.values"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getListPreference()Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->getPreference()Lcn/nubia/commonui/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v1, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {v1}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;-><init>()V

    .line 48
    .local v1, "fragment":Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 49
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    if-nez p1, :cond_2

    .line 59
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    .line 61
    .local v0, "preference":Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 68
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    iput-boolean v3, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 70
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 79
    .end local v0    # "preference":Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 74
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 75
    const-string v1, "MultiSelectListPreferenceDialogFragment.changed"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 76
    const-string v1, "MultiSelectListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 77
    const-string v1, "MultiSelectListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 120
    invoke-direct {p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    .line 121
    .local v0, "preference":Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    if-eqz v2, :cond_0

    .line 122
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 123
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/internal/AbstractMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 127
    .end local v1    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 128
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcn/nubia/commonui/app/AlertDialog$Builder;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 98
    iget-object v3, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v3

    .line 99
    .local v1, "entryCount":I
    new-array v0, v1, [Z

    .line 100
    .local v0, "checkedItems":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 101
    iget-object v3, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    iget-object v4, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    new-instance v4, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment$1;-><init>(Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;)V

    invoke-virtual {p1, v3, v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 116
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcn/nubia/commonui/v14/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "MultiSelectListPreferenceDialogFragment.values"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    const-string v0, "MultiSelectListPreferenceDialogFragment.changed"

    iget-boolean v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string v0, "MultiSelectListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 87
    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
