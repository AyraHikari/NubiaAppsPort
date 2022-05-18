.class public Lcom/android/common/ui/k;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/common/ui/b;

.field protected b:Lcom/android/common/ui/k$a;

.field protected c:Lcom/android/preference/IconListPreference;

.field protected d:I

.field protected e:I

.field protected f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/android/common/ui/k;->b:Lcom/android/common/ui/k$a;

    .line 16
    iput-object p1, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/android/common/ui/k;->d:I

    .line 18
    iput p1, p0, Lcom/android/common/ui/k;->e:I

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/common/ui/k;->setClickable(Z)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/common/ui/k;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/android/common/ui/k;->b()V

    .line 96
    iget-object v0, p0, Lcom/android/common/ui/k;->b:Lcom/android/common/ui/k$a;

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/android/common/ui/k$a;->a()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    return-void
.end method

.method public a(Lcom/android/preference/IconListPreference;)V
    .locals 1

    .line 62
    iput-object p1, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/common/ui/k;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/common/ui/k;->setEnabled(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->g()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/k;->f:[I

    .line 67
    iget-object p1, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->d()I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/k;->e:I

    .line 68
    iget-object p1, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/k;->d:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/common/ui/k;->f:[I

    array-length p1, p1

    if-eqz p1, :cond_0

    const-string p1, "ZtemtSwitcherButton"

    const-string v0, "findIndexOfValue return -1, set to 0!"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/android/common/ui/k;->d:I

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/k;->f:[I

    iget v0, p0, Lcom/android/common/ui/k;->d:I

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/common/ui/k;->setImageResource(I)V

    .line 74
    invoke-virtual {p0, p0}, Lcom/android/common/ui/k;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/android/preference/PreferenceGroup;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    check-cast p1, Lcom/android/preference/IconListPreference;

    iput-object p1, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    .line 55
    invoke-virtual {p1}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->f()[I

    move-result-object v0

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/common/ui/k;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 3

    .line 124
    iget v0, p0, Lcom/android/common/ui/k;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/preference/IconListPreference;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/k;->d:I

    add-int/2addr v0, v1

    .line 126
    iput v0, p0, Lcom/android/common/ui/k;->d:I

    .line 127
    iget v1, p0, Lcom/android/common/ui/k;->e:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/k;->d:I

    .line 128
    iget-object v1, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    if-eqz v1, :cond_2

    .line 129
    invoke-virtual {v1, v0}, Lcom/android/preference/IconListPreference;->a(I)V

    .line 130
    iget-object v0, p0, Lcom/android/common/ui/k;->f:[I

    if-eqz v0, :cond_1

    .line 131
    iget v1, p0, Lcom/android/common/ui/k;->d:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/k;->setImageResource(I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/k;->setImageResource(I)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/android/common/ui/k;->f:[I

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/k;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/common/ui/k;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/k;->a:Lcom/android/common/ui/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/common/ui/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ZtemtSwitcherButton"

    const-string v0, "The click has been interrupted, no action for this click"

    .line 88
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/ui/k;->a()V

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/common/ui/RotateImageView;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/common/ui/k;->c:Lcom/android/preference/IconListPreference;

    if-eqz v0, :cond_0

    .line 117
    invoke-super {p0, p1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/android/common/ui/RotateImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setOnClickInterruptedListener(Lcom/android/common/ui/b;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/common/ui/k;->a:Lcom/android/common/ui/b;

    return-void
.end method

.method public setSwitcherListener(Lcom/android/common/ui/k$a;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/common/ui/k;->b:Lcom/android/common/ui/k$a;

    return-void
.end method
