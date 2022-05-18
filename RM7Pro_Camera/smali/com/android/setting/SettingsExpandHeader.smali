.class public Lcom/android/setting/SettingsExpandHeader;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->a:Landroid/widget/TextView;

    .line 23
    iput-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    .line 24
    iput-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->c:Landroid/widget/TextView;

    .line 25
    iput-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->d:Landroid/widget/ImageView;

    .line 26
    iput-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->e:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/preference/ListPreference;ZZ)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    instance-of v0, p1, Lcom/android/preference/ExtraListPreference;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 48
    move-object v0, p1

    check-cast v0, Lcom/android/preference/ExtraListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ExtraListPreference;->f()Ljava/lang/String;

    move-result-object v0

    .line 50
    instance-of v3, p1, Lcom/android/preference/ComplexListPreference;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 51
    move-object v3, p1

    check-cast v3, Lcom/android/preference/ComplexListPreference;

    invoke-virtual {v3}, Lcom/android/preference/ComplexListPreference;->e()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/preference/ComplexListPreference;->e()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 54
    iget-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 57
    iget-object v1, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 60
    :cond_4
    iget-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const-string v0, "pref_water_mark_custom_key"

    if-eqz p2, :cond_6

    .line 66
    iget-object p2, p0, Lcom/android/setting/SettingsExpandHeader;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 68
    :cond_6
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p2, :cond_7

    .line 71
    invoke-virtual {p0}, Lcom/android/setting/SettingsExpandHeader;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/setting/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 73
    :cond_7
    invoke-virtual {p1, p2}, Lcom/android/preference/ListPreference;->c(Ljava/lang/String;)V

    .line 76
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/setting/SettingsExpandHeader;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_9
    const-string p2, ""

    :goto_3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_4
    iget-object p2, p0, Lcom/android/setting/SettingsExpandHeader;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 81
    invoke-virtual {p0}, Lcom/android/setting/SettingsExpandHeader;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/setting/f$c;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_5

    .line 83
    :cond_a
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 85
    :goto_5
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {p0, p3}, Lcom/android/setting/SettingsExpandHeader;->setEnabled(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 35
    sget v0, Lcom/android/setting/f$e;->t:I

    invoke-virtual {p0, v0}, Lcom/android/setting/SettingsExpandHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->a:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/android/setting/f$e;->u:I

    invoke-virtual {p0, v0}, Lcom/android/setting/SettingsExpandHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/android/setting/f$e;->v:I

    invoke-virtual {p0, v0}, Lcom/android/setting/SettingsExpandHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->c:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/android/setting/f$e;->r:I

    invoke-virtual {p0, v0}, Lcom/android/setting/SettingsExpandHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->d:Landroid/widget/ImageView;

    .line 39
    sget v0, Lcom/android/setting/f$e;->x:I

    invoke-virtual {p0, v0}, Lcom/android/setting/SettingsExpandHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/setting/SettingsExpandHeader;->e:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->a:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 94
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 95
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 96
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->a:Landroid/widget/TextView;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 99
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 100
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 101
    iget-object p1, p0, Lcom/android/setting/SettingsExpandHeader;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method
