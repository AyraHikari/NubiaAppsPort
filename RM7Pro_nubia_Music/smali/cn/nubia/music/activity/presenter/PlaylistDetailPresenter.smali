.class public Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;
.super Ljava/lang/Object;
.source "PlaylistDetailPresenter.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/PlaylistDetailContract$Presenter;


# instance fields
.field private mRepository:Lcn/nubia/music/repository/PlaylistRepository;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mView:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mView:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;

    .line 22
    invoke-static {}, Lcn/nubia/music/repository/PlaylistRepository;->getInstance()Lcn/nubia/music/repository/PlaylistRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    .line 23
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;)Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mView:Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;

    return-object v0
.end method


# virtual methods
.method public loadSongList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$2;-><init>(Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getSongListOfPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 71
    return-void
.end method

.method public loadSummaryInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$1;-><init>(Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getPlaylistById(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 54
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 35
    return-void
.end method
