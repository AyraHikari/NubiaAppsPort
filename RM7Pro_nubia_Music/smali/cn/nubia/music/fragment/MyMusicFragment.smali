.class public Lcn/nubia/music/fragment/MyMusicFragment;
.super Lcn/nubia/music/fragment/BaseLetterListFragment;
.source "MyMusicFragment.java"


# static fields
.field public static final SORT_BY_LETTER:Ljava/lang/String; = "sort_by_letter"

.field public static final SORT_BY_TIME:Ljava/lang/String; = "sort_by_time"

.field public static final SORT_TYPE:Ljava/lang/String; = "sort_type"


# instance fields
.field private mDeleteItem:Ljava/lang/Integer;

.field private mMoreListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field private mUseAsRingtone:Ljava/lang/Integer;

.field private shuffPlayListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;-><init>()V

    .line 37
    new-instance v0, Lcn/nubia/music/fragment/MyMusicFragment$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/MyMusicFragment$1;-><init>(Lcn/nubia/music/fragment/MyMusicFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->shuffPlayListener:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcn/nubia/music/fragment/MyMusicFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/MyMusicFragment$2;-><init>(Lcn/nubia/music/fragment/MyMusicFragment;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mMoreListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/MyMusicFragment;)[J
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyMusicFragment;->getSongListFromAdapter()[J

    move-result-object v0

    return-object v0
.end method

.method private getSongListFromAdapter()[J
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 108
    if-gtz v3, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    .line 111
    :cond_0
    new-array v1, v3, [J

    .line 112
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 113
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    aput-wide v4, v1, v2

    .line 112
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 115
    goto :goto_0
.end method

.method public static newInstance()Lcn/nubia/music/fragment/MyMusicFragment;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    new-instance v1, Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-direct {v1}, Lcn/nubia/music/fragment/MyMusicFragment;-><init>()V

    .line 123
    invoke-virtual {v1, v0}, Lcn/nubia/music/fragment/MyMusicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    return-object v1
.end method

.method private showActionbarAddFavoriteItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    if-eqz p1, :cond_0

    .line 200
    const/16 v0, 0x10

    const v1, 0x7f0b000d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020073

    .line 201
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 202
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 205
    :cond_0
    return-void
.end method

.method private showActionbarAddPlayingItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    if-eqz p1, :cond_0

    .line 221
    const/16 v0, 0x1a

    const v1, 0x7f0b008a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    .line 222
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 223
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 226
    :cond_0
    return-void
.end method

.method private showActionbarAddPlaylistItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    const v0, 0x7f0b000c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    .line 212
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 213
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 217
    :cond_0
    return-void
.end method

.method private showActionbarMoreItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/16 v2, 0x19

    const/4 v1, 0x0

    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    const v0, 0x7f0b007b

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006d

    .line 233
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 234
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFragmentType()Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_MUSIC:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    return-object v0
.end method

.method protected getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const-string v0, ""

    .line 92
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    invoke-virtual {v0, v1}, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "title_letter"

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    const-string v0, "_id DESC"

    goto :goto_0
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-class v0, Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-class v0, Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActionMode()Z
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mMap:Ljava/util/ArrayList;

    .line 63
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mDeleteItem:Ljava/lang/Integer;

    .line 64
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mUseAsRingtone:Ljava/lang/Integer;

    .line 65
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mMap:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mDeleteItem:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mMap:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mUseAsRingtone:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyMusicFragment;->registContentObserver(Landroid/net/Uri;)V

    .line 68
    const/4 v0, 0x0

    const-string v1, "sort_type"

    const-string v2, "sort_by_letter"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "sort_by_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_TIME:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    .line 76
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->shuffPlayListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyMusicFragment;->setShuffPlayListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Lcn/nubia/music/fragment/presenter/MyMusicPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/presenter/MyMusicPresenter;-><init>(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyMusicFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;)V

    .line 78
    return-void

    .line 74
    :cond_0
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mSortedType:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/fragment/MyMusicFragment;->getSongListFromAdapter()[J

    move-result-object v0

    invoke-static {v0, p2}, Lcn/nubia/music/app/MusicPlayer;->playAll([JI)V

    goto :goto_0
.end method

.method protected showActionbarItems(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyMusicFragment;->showActionbarAddFavoriteItem(Landroid/view/Menu;)V

    .line 131
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyMusicFragment;->showActionbarAddPlaylistItem(Landroid/view/Menu;)V

    .line 132
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyMusicFragment;->showActionbarAddPlayingItem(Landroid/view/Menu;)V

    .line 133
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyMusicFragment;->showActionbarMoreItem(Landroid/view/Menu;)V

    .line 134
    return-void
.end method

.method public showActionbarMorePopup()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 158
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090018

    iget-object v2, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mMoreListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mNubiaMorePopup:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 164
    :cond_0
    return-void
.end method

.method protected showActionbarMultiChooseItem(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mResetActionMenuFlag:Z

    .line 138
    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    .line 142
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    .line 144
    const v0, 0x7f0b0044

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    .line 145
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 146
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    :cond_1
    return-void
.end method

.method protected showActionbarSingleChooseItem(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/16 v5, 0x19

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    iput-boolean v2, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mResetActionMenuFlag:Z

    .line 178
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mMap:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mUseAsRingtone:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mMap:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mUseAsRingtone:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 182
    :cond_0
    if-eqz p1, :cond_2

    .line 183
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 187
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 188
    if-nez v0, :cond_2

    .line 189
    iput-boolean v2, p0, Lcn/nubia/music/fragment/MyMusicFragment;->mResetActionMenuFlag:Z

    .line 190
    const v0, 0x7f0b007b

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006d

    .line 191
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 192
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 196
    :cond_2
    return-void
.end method
