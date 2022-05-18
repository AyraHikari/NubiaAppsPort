.class public Lcn/nubia/music/activity/MyFavoriteDetailActivity;
.super Lcn/nubia/music/activity/BaseMoreListActivity;
.source "MyFavoriteDetailActivity.java"


# static fields
.field public static final QUERY_FAVORITE_DETAIL:Ljava/lang/String; = "QueryFavoriteDetail"


# instance fields
.field protected mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;-><init>()V

    .line 68
    new-instance v0, Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MyFavoriteDetailActivity$1;-><init>(Lcn/nubia/music/activity/MyFavoriteDetailActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-void
.end method

.method private getFavUnion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v1, "SELECT audio_id FROM favoritesORDER BY _idDESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected configActionbar()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->configActionbar()V

    .line 65
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090010

    iget-object v2, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 66
    return-void
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mPresenter:Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;->loadData()V

    .line 40
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 19
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;

    const v1, 0x7f0b007a

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(I)V

    .line 25
    :cond_0
    new-instance v0, Lcn/nubia/music/activity/presenter/MyFavoritePresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/MyFavoritePresenter;-><init>(Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->setPresenter(Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;)V

    .line 26
    invoke-virtual {p0}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/favorites"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    invoke-virtual {p0}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 30
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setDelete(Z)V

    .line 32
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mActionModeManager:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-virtual {v0, v3}, Lcn/nubia/music/app/menu/MusicListActionModManager;->setIsFav(Z)V

    .line 34
    :cond_1
    return-void
.end method

.method protected setLocalNodata()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->setLocalNodata()V

    .line 47
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const v1, 0x7f0b00aa

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setEmptyTipText(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setMusicEmptyView()V

    .line 49
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshButton()V

    .line 50
    iget-object v0, p0, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideAddSongBtn()V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MyFavoriteDetailActivity;->setMoreButtonClick(Z)V

    .line 52
    return-void
.end method
