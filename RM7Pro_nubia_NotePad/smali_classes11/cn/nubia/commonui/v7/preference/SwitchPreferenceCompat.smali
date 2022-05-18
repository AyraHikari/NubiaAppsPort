.class public Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;
.super Lcn/nubia/commonui/v7/preference/TwoStatePreference;
.source "SwitchPreferenceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    sget v0, Lcn/nubia/commonui/R$attr;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v1, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat$Listener;-><init>(Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mListener:Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat$Listener;

    .line 82
    sget-object v1, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_summaryOn:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_android_summaryOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 88
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_summaryOff:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_android_summaryOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 91
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_switchTextOn:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_android_switchTextOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 95
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_switchTextOff:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_android_switchTextOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 99
    sget v1, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_disableDependentsState:I

    sget v2, Lcn/nubia/commonui/R$styleable;->SwitchPreferenceCompat_android_disableDependentsState:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->setDisableDependentsState(Z)V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    return-void
.end method

.method private syncSwitchView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    instance-of v1, p1, Lcn/nubia/commonui/v7/widget/SwitchCompat;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lcn/nubia/commonui/v7/widget/SwitchCompat;

    .line 229
    .local v0, "switchView":Lcn/nubia/commonui/v7/widget/SwitchCompat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 231
    .end local v0    # "switchView":Lcn/nubia/commonui/v7/widget/SwitchCompat;
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 232
    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 234
    :cond_1
    instance-of v1, p1, Lcn/nubia/commonui/v7/widget/SwitchCompat;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 235
    check-cast v0, Lcn/nubia/commonui/v7/widget/SwitchCompat;

    .line 236
    .restart local v0    # "switchView":Lcn/nubia/commonui/v7/widget/SwitchCompat;
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mListener:Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat$Listener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    .end local v0    # "switchView":Lcn/nubia/commonui/v7/widget/SwitchCompat;
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 213
    .line 214
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 215
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_0
    sget v3, Lcn/nubia/commonui/R$id;->switchWidget:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 220
    .local v2, "switchView":Landroid/view/View;
    invoke-direct {p0, v2}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 222
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->syncSummaryView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;->onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 141
    sget v1, Lcn/nubia/commonui/R$id;->switchWidget:I

    invoke-virtual {p1, v1}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "switchView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->syncSwitchView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->syncSummaryView(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 144
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 209
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 210
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mSwitchOff:Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->notifyChanged()V

    .line 166
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->mSwitchOn:Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/SwitchPreferenceCompat;->notifyChanged()V

    .line 155
    return-void
.end method
