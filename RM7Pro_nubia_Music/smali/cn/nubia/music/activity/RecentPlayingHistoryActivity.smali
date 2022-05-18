.class public Lcn/nubia/music/activity/RecentPlayingHistoryActivity;
.super Lcn/nubia/music/activity/BaseMoreListActivity;
.source "RecentPlayingHistoryActivity.java"


# instance fields
.field protected mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;-><init>()V

    .line 30
    new-instance v0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity$1;-><init>(Lcn/nubia/music/activity/RecentPlayingHistoryActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    return-void
.end method


# virtual methods
.method protected configActionbar()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->configActionbar()V

    .line 47
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    const v1, 0x7f090010

    iget-object v2, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setItems(ILcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;)V

    .line 48
    return-void
.end method

.method protected getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mPresenter:Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;->loadData()V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseMoreListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;

    const v1, 0x7f0b00d4

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_0
    new-instance v0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;-><init>(Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;)V

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->setPresenter(Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;)V

    .line 25
    invoke-virtual {p0}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/playhistory"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mDataSetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    return-void
.end method

.method protected setLocalNodata()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcn/nubia/music/activity/BaseMoreListActivity;->setLocalNodata()V

    .line 58
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    const v1, 0x7f0b00b1

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setEmptyTipText(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->setMusicEmptyView()V

    .line 60
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideRefreshButton()V

    .line 61
    iget-object v0, p0, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->mEmptyView:Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MusicListDetailEmptyViewLayout;->hideAddSongBtn()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/RecentPlayingHistoryActivity;->setMoreButtonClick(Z)V

    .line 63
    return-void
.end method
