.class public Lcn/nubia/commonui/v14/preference/SwitchPreference;
.super Lcn/nubia/commonui/v7/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    sget v0, Lcn/nubia/commonui/R$attr;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance v1, Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;-><init>(Lcn/nubia/commonui/v14/preference/SwitchPreference;Lcn/nubia/commonui/v14/preference/SwitchPreference$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mListener:Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;

    .line 85
    sget-object v1, Lcn/nubia/commonui/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreference_summaryOn:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreference_android_summaryOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 91
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreference_summaryOff:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreference_android_summaryOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 94
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreference_switchTextOn:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreference_android_switchTextOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 98
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreference_switchTextOff:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreference_android_switchTextOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 102
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreference_disableDependentsState:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreference_android_disableDependentsState:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 233
    instance-of v1, p1, Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 234
    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 235
    .local v0, "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    .end local v0    # "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 238
    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 240
    :cond_1
    instance-of v1, p1, Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 241
    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 242
    .restart local v0    # "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mListener:Lcn/nubia/commonui/v14/preference/SwitchPreference$Listener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 246
    .end local v0    # "switchView":Lcn/nubia/commonui/widget/NubiaSwitch;
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    const v2, 0x1020040

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, "switchView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->syncSwitchView(Landroid/view/View;)V

    .line 228
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .local v0, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 230
    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;->onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 146
    const v1, 0x1020040

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "switchView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->syncSwitchView(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->syncSummaryView(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 149
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 214
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 169
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->notifyChanged()V

    .line 171
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 158
    iput-object p1, p0, Lcn/nubia/commonui/v14/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {p0}, Lcn/nubia/commonui/v14/preference/SwitchPreference;->notifyChanged()V

    .line 160
    return-void
.end method
