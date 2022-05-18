.class public Lcom/zte/mifavor/androidx/preference/PreferenceZTE;
.super Landroidx/preference/Preference;
.source "PreferenceZTE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceZTEx"


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

    .line 45
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mIsShowIndicator:Z

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatusWidth:I

    .line 27
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mEnabled:Z

    .line 46
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 47
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    sget v0, Lcom/zte/extres/R$attr;->preferenceStyleMFS:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 25
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mIsShowIndicator:Z

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatusWidth:I

    .line 27
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mEnabled:Z

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 25
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mIsShowIndicator:Z

    const/4 p4, -0x1

    .line 26
    iput p4, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatusWidth:I

    .line 27
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mEnabled:Z

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mContext:Landroid/content/Context;

    .line 53
    sget-object v0, Lcom/zte/extres/R$styleable;->PreferenceZTE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget p2, Lcom/zte/extres/R$styleable;->PreferenceZTE_status:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/CharSequence;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 121
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 122
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    const v0, 0x1020018

    .line 124
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    .line 126
    sget v0, Lcom/zte/extres/R$id;->status:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mEnabled:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v0, -0x1

    .line 134
    iget v3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatusWidth:I

    if-eq v0, v3, :cond_2

    .line 135
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 136
    iget v3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatusWidth:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iget-object v3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "PreferenceZTEx"

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder the width of statusView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "PreferenceZTEx"

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder statusView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    :goto_0
    sget v0, Lcom/zte/extres/R$id;->indicator:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    .line 148
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 149
    iget-boolean p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mIsShowIndicator:Z

    if-eqz p1, :cond_3

    .line 150
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 152
    :cond_3
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string p1, "PreferenceZTEx"

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder indicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

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

    .line 101
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mEnabled:Z

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    .line 64
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->notifyChanged()V

    return-void
.end method

.method public setStatusViewWidth(I)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 90
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 91
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "PreferenceZTEx"

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusViewWidth the width of statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "PreferenceZTEx"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusViewWidth statusView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mStatusWidth:I

    :goto_0
    return-void
.end method

.method public setSummary(I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showIndicator(Z)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mIsShowIndicator:Z

    const-string v0, "PreferenceZTEx"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideIndicator out. indicator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->indicator:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsShowIndicator = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceZTE;->mIsShowIndicator:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
