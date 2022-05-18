.class public Lcn/nubia/music/fragment/MyAlbumFragment;
.super Lcn/nubia/music/fragment/BaseLetterListFragment;
.source "MyAlbumFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcn/nubia/music/fragment/BaseLetterListFragment;-><init>()V

    .line 44
    return-void
.end method

.method public static newInstance()Lcn/nubia/music/fragment/MyAlbumFragment;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    new-instance v1, Lcn/nubia/music/fragment/MyAlbumFragment;

    invoke-direct {v1}, Lcn/nubia/music/fragment/MyAlbumFragment;-><init>()V

    .line 51
    invoke-virtual {v1, v0}, Lcn/nubia/music/fragment/MyAlbumFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method

.method private showActionbarAddPlayingItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    const v0, 0x7f0b008a

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    .line 98
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 99
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    :cond_0
    return-void
.end method

.method private showActionbarAddPlaylistItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    const v0, 0x7f0b000c

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020064

    .line 86
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 87
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 91
    :cond_0
    return-void
.end method

.method private showActionbarDeleteItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    const v0, 0x7f0b0044

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    .line 74
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    .line 75
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFragmentType()Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    return-object v0
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-class v0, Lcn/nubia/music/fragment/MyAlbumFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcn/nubia/music/fragment/MyAlbumFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcn/nubia/music/fragment/BaseLetterListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyAlbumFragment;->registContentObserver(Landroid/net/Uri;)V

    .line 39
    new-instance v0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;-><init>(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/fragment/MyAlbumFragment;->setPresenter(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;)V

    .line 40
    return-void
.end method

.method protected onListItemClick(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlbumFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlbumFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlbumFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const-string v2, "albumid"

    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlbumFragment;->mAdapter:Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;

    iget-object v0, v0, Lcn/nubia/music/fragment/BaseLetterListFragment$DataBrowseAdapter;->mMediaModelList:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MediaModel;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v1}, Lcn/nubia/music/fragment/MyAlbumFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected showActionbarItems(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyAlbumFragment;->showActionbarDeleteItem(Landroid/view/Menu;)V

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyAlbumFragment;->showActionbarAddPlaylistItem(Landroid/view/Menu;)V

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/MyAlbumFragment;->showActionbarAddPlayingItem(Landroid/view/Menu;)V

    .line 59
    return-void
.end method

.method protected showActionbarMultiChooseItem(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method protected showActionbarSingleChooseItem(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
