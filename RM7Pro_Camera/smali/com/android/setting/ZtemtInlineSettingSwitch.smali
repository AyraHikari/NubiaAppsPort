.class public Lcom/android/setting/ZtemtInlineSettingSwitch;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setting/ZtemtInlineSettingSwitch$b;,
        Lcom/android/setting/ZtemtInlineSettingSwitch$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/android/common/ui/MySwitch;

.field private d:Lcom/android/preference/ListPreference;

.field private e:Lcom/android/setting/ZtemtInlineSettingSwitch$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->a:Landroid/widget/TextView;

    .line 26
    iput-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->b:Landroid/widget/TextView;

    .line 27
    iput-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    .line 29
    iput-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->e:Lcom/android/setting/ZtemtInlineSettingSwitch$a;

    return-void
.end method

.method static synthetic a(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/preference/ListPreference;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->d:Lcom/android/preference/ListPreference;

    return-object p0
.end method

.method static synthetic b(Lcom/android/setting/ZtemtInlineSettingSwitch;)Lcom/android/setting/ZtemtInlineSettingSwitch$a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->e:Lcom/android/setting/ZtemtInlineSettingSwitch$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/preference/ListPreference;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->d:Lcom/android/preference/ListPreference;

    .line 56
    iget-object v0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    instance-of v0, p1, Lcom/android/preference/ExtraListPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->b:Landroid/widget/TextView;

    check-cast p1, Lcom/android/preference/ExtraListPreference;

    invoke-virtual {p1}, Lcom/android/preference/ExtraListPreference;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :goto_0
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/MySwitch;->setClickable(Z)V

    .line 64
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    iget-object v2, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->d:Lcom/android/preference/ListPreference;

    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    .line 65
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    new-instance v0, Lcom/android/setting/ZtemtInlineSettingSwitch$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/setting/ZtemtInlineSettingSwitch$b;-><init>(Lcom/android/setting/ZtemtInlineSettingSwitch;Lcom/android/setting/ZtemtInlineSettingSwitch$1;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/MySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/setting/ZtemtInlineSettingSwitch;->setEnabled(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 46
    sget v0, Lcom/android/setting/f$e;->y:I

    invoke-virtual {p0, v0}, Lcom/android/setting/ZtemtInlineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->a:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/android/setting/f$e;->z:I

    invoke-virtual {p0, v0}, Lcom/android/setting/ZtemtInlineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->b:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/android/setting/f$e;->w:I

    invoke-virtual {p0, v0}, Lcom/android/setting/ZtemtInlineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MySwitch;

    iput-object v0, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->a:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 111
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/MySwitch;->setAlpha(F)V

    .line 112
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/MySwitch;->setClickable(Z)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->a:Landroid/widget/TextView;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 116
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/MySwitch;->setAlpha(F)V

    .line 117
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 118
    iget-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->c:Lcom/android/common/ui/MySwitch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/MySwitch;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/setting/ZtemtInlineSettingSwitch$a;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/setting/ZtemtInlineSettingSwitch;->e:Lcom/android/setting/ZtemtInlineSettingSwitch$a;

    return-void
.end method
