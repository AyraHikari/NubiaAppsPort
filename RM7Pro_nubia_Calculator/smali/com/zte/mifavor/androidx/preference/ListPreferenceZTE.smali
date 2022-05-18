.class public Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;
.super Landroidx/preference/ListPreference;
.source "ListPreferenceZTE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPreferenceZTEx"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mStatus:Ljava/lang/CharSequence;

.field private mStatusWidth:I

.field private statusView:Landroid/widget/TextView;

.field private summaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mEnabled:Z

    .line 42
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    sget v0, Lcom/zte/extres/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mEnabled:Z

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 22
    iput p3, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mEnabled:Z

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    .line 22
    iput p3, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mEnabled:Z

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/CharSequence;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 104
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/zte/extres/R$id;->status:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    .line 106
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->getStatus()Ljava/lang/CharSequence;

    move-result-object p1

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p1, -0x1

    .line 113
    iget v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatusWidth:I

    if-eq p1, v0, :cond_2

    .line 114
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 115
    iget v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatusWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "ListPreferenceZTEx"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder the width of statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string p1, "ListPreferenceZTEx"

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mEnabled:Z

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    .line 58
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->notifyChanged()V

    return-void
.end method

.method public setStatusViewWidth(I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 84
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 85
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "ListPreferenceZTEx"

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusViewWidth the width of statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "ListPreferenceZTEx"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusViewWidth statusView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput p1, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mStatusWidth:I

    :goto_0
    return-void
.end method

.method public setSummary(I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setSummary(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
