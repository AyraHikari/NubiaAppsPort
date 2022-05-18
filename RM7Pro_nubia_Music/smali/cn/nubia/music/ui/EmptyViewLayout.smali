.class public Lcn/nubia/music/ui/EmptyViewLayout;
.super Landroid/widget/LinearLayout;
.source "EmptyViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;
    }
.end annotation


# instance fields
.field private mEmptyProgressView:Landroid/view/View;

.field private mEmptyTip:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mImageView:Landroid/widget/ImageView;

.field private mRefresh:Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

.field private mRefreshButton:Landroid/widget/TextView;

.field protected mRefreshListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/EmptyViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/EmptyViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance v0, Lcn/nubia/music/ui/EmptyViewLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/EmptyViewLayout$1;-><init>(Lcn/nubia/music/ui/EmptyViewLayout;)V

    iput-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 34
    const-string v0, "layout_inflater"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    const v1, 0x7f030041

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    invoke-direct {p0}, Lcn/nubia/music/ui/EmptyViewLayout;->initView()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/EmptyViewLayout;)Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefresh:Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/EmptyViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/EmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyProgressView:Landroid/view/View;

    .line 60
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/EmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mImageView:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/EmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyView:Landroid/view/View;

    .line 62
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/EmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyTip:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/EmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefreshButton:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefreshButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method


# virtual methods
.method public attachToView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_0
    return-void
.end method

.method public setEmptyImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setNetView()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyTip:Landroid/widget/TextView;

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 43
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefreshButton:Landroid/widget/TextView;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    return-void
.end method

.method public setNoSearchData()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyTip:Landroid/widget/TextView;

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefreshButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public setRefreshListener(Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mRefresh:Lcn/nubia/music/ui/EmptyViewLayout$RefreshClickListener;

    .line 96
    return-void
.end method

.method public showEmpty()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyProgressView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_1
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcn/nubia/music/ui/EmptyViewLayout;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_1
    return-void
.end method
