.class public Lcom/android/setting/SettingsHeader;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/android/setting/SettingsHeader;->a:Landroid/widget/TextView;

    .line 18
    iput-object p1, p0, Lcom/android/setting/SettingsHeader;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/android/setting/SettingsHeader;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/android/preference/ListPreference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/setting/SettingsHeader;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    sget v0, Lcom/android/setting/f$e;->m:I

    invoke-virtual {p0, v0}, Lcom/android/setting/SettingsHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/SettingsHeader;->a:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/android/setting/f$e;->s:I

    invoke-virtual {p0, v0}, Lcom/android/setting/SettingsHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setting/SettingsHeader;->b:Landroid/view/View;

    return-void
.end method
