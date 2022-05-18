.class public Landroid/preference/nubia/SwitchPreference;
.super Landroid/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/nubia/SwitchPreference$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/preference/nubia/SwitchPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/nubia/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    new-instance v0, Landroid/preference/nubia/SwitchPreference$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/preference/nubia/SwitchPreference$a;-><init>(Landroid/preference/nubia/SwitchPreference;Landroid/preference/nubia/SwitchPreference$1;)V

    iput-object v0, p0, Landroid/preference/nubia/SwitchPreference;->a:Landroid/preference/nubia/SwitchPreference$a;

    .line 31
    return-void
.end method

.method static synthetic a(Landroid/preference/nubia/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Landroid/preference/nubia/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 49
    sget v0, Lcn/nubia/commonui/R$id;->nubia_switchWidget:I

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 52
    instance-of v0, v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 53
    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 54
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    move-object v0, v1

    .line 56
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroid/preference/nubia/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 57
    instance-of v0, v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v0, :cond_1

    .line 58
    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 59
    iget-object v0, p0, Landroid/preference/nubia/SwitchPreference;->a:Landroid/preference/nubia/SwitchPreference$a;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    :cond_1
    return-void
.end method
