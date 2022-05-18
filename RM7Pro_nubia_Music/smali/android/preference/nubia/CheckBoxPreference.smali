.class public Landroid/preference/nubia/CheckBoxPreference;
.super Landroid/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/nubia/CheckBoxPreference$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/preference/nubia/CheckBoxPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/nubia/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    new-instance v0, Landroid/preference/nubia/CheckBoxPreference$a;

    invoke-direct {v0, p0}, Landroid/preference/nubia/CheckBoxPreference$a;-><init>(Landroid/preference/nubia/CheckBoxPreference;)V

    iput-object v0, p0, Landroid/preference/nubia/CheckBoxPreference;->a:Landroid/preference/nubia/CheckBoxPreference$a;

    .line 25
    return-void
.end method

.method static synthetic a(Landroid/preference/nubia/CheckBoxPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Landroid/preference/nubia/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 39
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    .line 41
    instance-of v0, v1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    instance-of v0, v1, Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 43
    check-cast v0, Landroid/widget/CompoundButton;

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 46
    iget-object v1, p0, Landroid/preference/nubia/CheckBoxPreference;->a:Landroid/preference/nubia/CheckBoxPreference$a;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    check-cast v1, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/nubia/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method
