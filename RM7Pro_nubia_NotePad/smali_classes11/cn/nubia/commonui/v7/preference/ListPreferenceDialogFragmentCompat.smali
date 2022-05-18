.class public Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;
.super Lcn/nubia/commonui/v7/preference/PreferenceDialogFragmentCompat;
.source "ListPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "ListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "ListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_INDEX:Ljava/lang/String; = "ListPreferenceDialogFragment.index"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private static getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .param p0, "in"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "stored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getListPreference()Lcn/nubia/commonui/v7/preference/ListPreference;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->getPreference()Lcn/nubia/commonui/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/ListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v1, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;

    invoke-direct {v1}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    .line 40
    .local v1, "fragment":Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method private static putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "out"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 76
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v1, "stored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p2, v2

    .line 79
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 49
    if-nez p1, :cond_2

    .line 50
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Lcn/nubia/commonui/v7/preference/ListPreference;

    move-result-object v0

    .line 52
    .local v0, "preference":Lcn/nubia/commonui/v7/preference/ListPreference;
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 58
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    .line 65
    .end local v0    # "preference":Lcn/nubia/commonui/v7/preference/ListPreference;
    :goto_0
    return-void

    .line 61
    :cond_2
    const-string v1, "ListPreferenceDialogFragment.index"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    .line 62
    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    .line 63
    const-string v1, "ListPreferenceDialogFragment.entryValues"

    invoke-static {p1, v1}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->getCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 125
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->getListPreference()Lcn/nubia/commonui/v7/preference/ListPreference;

    move-result-object v0

    .line 126
    .local v0, "preference":Lcn/nubia/commonui/v7/preference/ListPreference;
    if-eqz p1, :cond_0

    iget v2, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    iget v3, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 132
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcn/nubia/commonui/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 99
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    new-instance v2, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat$1;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat$1;-><init>(Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;)V

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 120
    invoke-virtual {p1, v3, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 121
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntries:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 72
    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lcn/nubia/commonui/v7/preference/ListPreferenceDialogFragmentCompat;->putCharSequenceArray(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
