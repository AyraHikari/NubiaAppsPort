.class public Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;
.super Landroid/widget/RelativeLayout;
.source "MusicListDetailEmptyViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;,
        Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;
    }
.end annotation


# instance fields
.field private mAddSongBtn:Landroid/widget/RelativeLayout;

.field private mAddSongClickListener:Landroid/view/View$OnClickListener;

.field private mAddSongListener:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;

.field private mAlbumImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEmptyProgressBar:Landroid/widget/ProgressBar;

.field private mEmptyText:Landroid/widget/TextView;

.field private mEmptyTipText:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mRefresh:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;

.field private mRefreshImageView:Landroid/widget/ImageView;

.field private mRefreshListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAlbumImageView:Landroid/widget/ImageView;

    .line 180
    new-instance v0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$1;-><init>(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshListener:Landroid/view/View$OnClickListener;

    .line 190
    new-instance v0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$2;-><init>(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongClickListener:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "layout_inflater"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    const v1, 0x7f03002c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    invoke-direct {p0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->initView()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;)Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefresh:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;)Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongListener:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f10009b

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyProgressBar:Landroid/widget/ProgressBar;

    .line 52
    const v0, 0x7f10009e

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f10009d

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyTipText:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f10009f

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongBtn:Landroid/widget/RelativeLayout;

    .line 55
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongBtn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f100034

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mImage:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f100037

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f10009a

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAlbumImageView:Landroid/widget/ImageView;

    .line 63
    return-void
.end method


# virtual methods
.method public hideAddSongBtn()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongBtn:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongBtn:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public hideArtistAlbums()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAlbumImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAlbumImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public hideRefreshButton()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public hideRefreshImageview()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public setAddSongListener(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongListener:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$AddSongListener;

    .line 178
    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setEmptyTipText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyTipText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyTipText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyTipText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setMusicEmptyView()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setRefreshListener(Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefresh:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout$RefreshClickListener;

    .line 174
    return-void
.end method

.method public showAddSongBtn()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongBtn:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mImage:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAddSongBtn:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public showArtistAlbums()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAlbumImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mAlbumImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    iget-object v1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 97
    const v1, 0x7f0d0137

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 100
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public showRefreshButton()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mEmptyText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public showRefreshImageview()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->mRefreshImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    :cond_0
    return-void
.end method
