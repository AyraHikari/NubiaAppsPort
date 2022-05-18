.class public Lcn/nubia/music/fragment/MyArtistsFragment;
.super Lcn/nubia/music/fragment/BaseLetterListFragment;
.source "MyArtistsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;-><init>()V

    .line 45
    return-void
.end method

.method public static newInstance()Lcn/nubia/music/fragment/MyArtistsFragment;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    new-instance v1, Lcn/nubia/music/fragment/MyArtistsFragment;

    invoke-direct {v1}, Lcn/nubia/music/fragment/MyArtistsFragment;-><init>()V

    .line 52
    invoke-virtual {v1, v0}, Lcn/nubia/music/fragment/MyArtistsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method

.method private showActionbarAddPlayingItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    const v0, 0x7f0b008a

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    .line 106
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 107
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 111
    :cond_0
    return-void
.end method

.method private showActionbarAddPlaylistItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    const v0, 0x7f0b000c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    .line 94
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 95
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 99
    :cond_0
    return-void
.end method

.method private showActionbarDeleteItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    const v0, 0x7f0b0044

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    .line 82
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 83
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFragmentType()Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ARTIST:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    return-object v0
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lcn/nubia/music/fragment/MyArtistsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcn/nubia/music/fragment/MyArtistsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyArtistsFragment;->registContentObserver(Landroid/net/Uri;)V

    .line 40
    new-instance v0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;-><init>(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyArtistsFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;)V

    .line 41
    return-void
.end method

.method protected onListItemClick(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/music/fragment/MyArtistsFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/MyArtistsFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/music/fragment/MyArtistsFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/ArtistDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const-string v2, "artistid"

    iget-object v0, p0, Lcn/nubia/music/fragment/MyArtistsFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/MyArtistsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected showActionbarItems(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyArtistsFragment;->showActionbarDeleteItem(Landroid/view/Menu;)V

    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyArtistsFragment;->showActionbarAddPlaylistItem(Landroid/view/Menu;)V

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyArtistsFragment;->showActionbarAddPlayingItem(Landroid/view/Menu;)V

    .line 67
    return-void
.end method

.method protected showActionbarMoreItem(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 57
    if-eqz p1, :cond_0

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyArtistsFragment;->showActionbarDeleteItem(Landroid/view/Menu;)V

    .line 60
    :cond_0
    return-void
.end method

.method protected showActionbarMultiChooseItem(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected showActionbarSingleChooseItem(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
