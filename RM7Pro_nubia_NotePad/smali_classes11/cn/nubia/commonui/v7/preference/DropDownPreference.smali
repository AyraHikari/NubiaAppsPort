.class public Lcn/nubia/commonui/v7/preference/DropDownPreference;
.super Lcn/nubia/commonui/v7/preference/ListPreference;
.source "DropDownPreference.java"


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    sget v0, Lcn/nubia/commonui/R$attr;->dropdownPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    new-instance v0, Lcn/nubia/commonui/v7/preference/DropDownPreference$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference$1;-><init>(Lcn/nubia/commonui/v7/preference/DropDownPreference;)V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 58
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 61
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->updateEntries()V

    .line 62
    return-void
.end method

.method private updateEntries()V
    .locals 6

    .prologue
    .line 90
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 93
    .local v0, "c":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "c":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public findSpinnerIndexOfValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    .local v0, "entryValues":[Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 110
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 111
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 110
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/ListPreference;->notifyChanged()V

    .line 122
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    .prologue
    .line 127
    iget-object v0, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcn/nubia/commonui/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 128
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->findSpinnerIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/ListPreference;->onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 132
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 67
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 72
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->updateEntries()V

    .line 73
    return-void
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 100
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 101
    return-void
.end method
