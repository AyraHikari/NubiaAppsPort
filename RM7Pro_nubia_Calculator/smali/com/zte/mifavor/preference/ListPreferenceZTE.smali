.class public Lcom/zte/mifavor/preference/ListPreferenceZTE;
.super Landroid/preference/ListPreference;
.source "ListPreferenceZTE.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListPreferenceZTE"


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

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mEnabled:Z

    .line 43
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mContext:Landroid/content/Context;

    const-string p1, ""

    .line 44
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010091

    .line 37
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mEnabled:Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/ListPreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 23
    iput p3, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mEnabled:Z

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/ListPreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, -0x1

    .line 23
    iput p3, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatusWidth:I

    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mEnabled:Z

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/preference/ListPreferenceZTE;->initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initPrefrenceStatus(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mContext:Landroid/content/Context;

    .line 50
    sget-object v0, Lcom/zte/extres/R$styleable;->PreferenceZTE:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Lcom/zte/extres/R$styleable;->PreferenceZTE_status:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/CharSequence;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    .line 108
    sget v0, Lcom/zte/extres/R$id;->status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    .line 109
    iget-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreferenceZTE;->getStatus()Ljava/lang/CharSequence;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p1, -0x1

    .line 116
    iget v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatusWidth:I

    if-eq p1, v0, :cond_2

    .line 117
    iget-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 118
    iget v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatusWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 119
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "ListPreferenceZTE"

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindView the width of statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string p1, "ListPreferenceZTE"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindView statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

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

    .line 98
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mEnabled:Z

    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatus:Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreferenceZTE;->notifyChanged()V

    return-void
.end method

.method public setStatusViewWidth(I)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 87
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    iget-object p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "ListPreferenceZTE"

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusViewWidth the width of statusView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "ListPreferenceZTE"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusViewWidth statusView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput p1, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mStatusWidth:I

    :goto_0
    return-void
.end method

.method public setSummary(I)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setSummary(I)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreferenceZTE;->summaryView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
