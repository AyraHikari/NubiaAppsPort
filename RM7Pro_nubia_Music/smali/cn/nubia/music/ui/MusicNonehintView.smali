.class public Lcn/nubia/music/ui/MusicNonehintView;
.super Landroid/widget/LinearLayout;
.source "MusicNonehintView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIcon:Landroid/widget/ImageView;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mNoSongsView:Landroid/view/View;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/MusicNonehintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/MusicNonehintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mListener:Landroid/view/View$OnClickListener;

    .line 30
    const-string v0, "layout_inflater"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 32
    const v1, 0x7f030038

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicNonehintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f100037

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicNonehintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mIcon:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicNonehintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mButton:Landroid/widget/Button;

    .line 36
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicNonehintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mProgress:Landroid/widget/ProgressBar;

    .line 37
    const v0, 0x7f10009c

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicNonehintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mEmptyView:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicNonehintView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mNoSongsView:Landroid/view/View;

    .line 39
    sget-object v0, Lcn/nubia/music/preset/R$styleable;->Nonehint:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v1, :cond_0

    .line 46
    iget-object v2, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    if-eqz v0, :cond_1

    .line 49
    iget-object v1, p0, Lcn/nubia/music/ui/MusicNonehintView;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method


# virtual methods
.method public hideEmptyView()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public hideNoSongsView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mNoSongsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mNoSongsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/MusicNonehintView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setButtonGone()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    :cond_0
    return-void
.end method

.method public setEmptyText(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setEmptyTextRes(I)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public setEmptyTextRes(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setEmptyViewClickable(Z)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 154
    :cond_1
    return-void
.end method

.method public setEmptyViewText(I)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnClickListener mListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcn/nubia/music/ui/MusicNonehintView;->mListener:Landroid/view/View$OnClickListener;

    .line 136
    return-void
.end method

.method public showEmptyView()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public showNoSongsView()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mNoSongsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mNoSongsView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/music/ui/MusicNonehintView;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    :cond_0
    return-void
.end method
