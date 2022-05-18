.class public Lcom/zte/mifavor/preference/PreferenceZTE;
.super Landroid/preference/Preference;
.source "PreferenceZTE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceZTE"


# instance fields
.field private indicator:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mIsShowIndicator:Z

.field private mStatus:Ljava/lang/CharSequence;

.field private mStatusWidth:I

.field private statusView:Landroid/widget/TextView;

.field private summaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mIsShowIndicator:Z

    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatusWidth:I

    .line 25
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mEnabled:Z

    .line 44
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 38
    sget v0, Lcom/zte/extres/R$attr;->preferenceStyleZTE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/PreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/PreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mIsShowIndicator:Z

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatusWidth:I

    .line 25
    iput-boolean p3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mEnabled:Z

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/PreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mIsShowIndicator:Z

    const/4 p4, -0x1

    .line 24
    iput p4, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatusWidth:I

    .line 25
    iput-boolean p3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mEnabled:Z

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/PreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mContext:Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/zte/extres/R$styleable;->PreferenceZTE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 52
    sget p2, Lcom/zte/extres/R$styleable;->PreferenceZTE_status:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/CharSequence;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    .line 119
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    const v0, 0x1020018

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 124
    sget v0, Lcom/zte/extres/R$id;->status:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceZTE;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mEnabled:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v0, -0x1

    .line 132
    iget v3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatusWidth:I

    if-eq v0, v3, :cond_2

    .line 133
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 134
    iget v3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatusWidth:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iget-object v3, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "PreferenceZTE"

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindView the width of statusView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "PreferenceZTE"

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindView statusView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2
    :goto_0
    sget v0, Lcom/zte/extres/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    .line 146
    iget-object p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 147
    iget-boolean p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mIsShowIndicator:Z

    if-eqz p1, :cond_3

    .line 148
    iget-object p0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object p0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string p1, "PreferenceZTE"

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindView indicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mEnabled:Z

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    .line 62
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceZTE;->notifyChanged()V

    return-void
.end method

.method public setStatusViewWidth(I)V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 88
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    iget-object p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "PreferenceZTE"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusViewWidth the width of statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "PreferenceZTE"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusViewWidth statusView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mStatusWidth:I

    :goto_0
    return-void
.end method

.method public setSummary(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showIndicator(Z)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mIsShowIndicator:Z

    const-string v0, "PreferenceZTE"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideIndicator out. indicator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->indicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsShowIndicator = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/preference/PreferenceZTE;->mIsShowIndicator:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
