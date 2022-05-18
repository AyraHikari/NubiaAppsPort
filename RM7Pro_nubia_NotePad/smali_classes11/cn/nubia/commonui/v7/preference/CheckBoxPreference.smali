.class public Lcn/nubia/commonui/v7/preference/CheckBoxPreference;
.super Lcn/nubia/commonui/v7/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    sget v0, Lcn/nubia/commonui/R$attr;->checkBoxPreferenceStyle:I

    const v1, 0x101008f

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v1, Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;-><init>(Lcn/nubia/commonui/v7/preference/CheckBoxPreference;Lcn/nubia/commonui/v7/preference/CheckBoxPreference$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->mListener:Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;

    .line 66
    sget-object v1, Lcn/nubia/commonui/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->CheckBoxPreference_summaryOn:I

    sget v2, Lcn/nubia/commonui/R$styleable;->CheckBoxPreference_android_summaryOn:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 72
    sget v1, Lcn/nubia/commonui/R$styleable;->CheckBoxPreference_summaryOff:I

    sget v2, Lcn/nubia/commonui/R$styleable;->CheckBoxPreference_android_summaryOff:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 75
    sget v1, Lcn/nubia/commonui/R$styleable;->CheckBoxPreference_disableDependentsState:I

    sget v2, Lcn/nubia/commonui/R$styleable;->CheckBoxPreference_android_disableDependentsState:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method private syncCheckboxView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 126
    check-cast v0, Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    :cond_0
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 129
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 131
    :cond_1
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_2

    .line 132
    check-cast p1, Landroid/widget/CompoundButton;

    .end local p1    # "view":Landroid/view/View;
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->mListener:Lcn/nubia/commonui/v7/preference/CheckBoxPreference$Listener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    :cond_2
    return-void
.end method

.method private syncViewIfAccessibilityEnabled(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 111
    .line 112
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 113
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    const v3, 0x1020001

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 118
    .local v1, "checkboxView":Landroid/view/View;
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 120
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 121
    .local v2, "summaryView":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;->onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 95
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->syncCheckboxView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->syncSummaryView(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 98
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/TwoStatePreference;->performClick(Landroid/view/View;)V

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/preference/CheckBoxPreference;->syncViewIfAccessibilityEnabled(Landroid/view/View;)V

    .line 108
    return-void
.end method
