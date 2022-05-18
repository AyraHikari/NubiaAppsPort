.class public Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;
.super Ljava/lang/Object;
.source "MyPlaylistPresenter.java"

# interfaces
.implements Lcn/nubia/music/fragment/presenter/MyPlaylistContract$Presenter;


# instance fields
.field protected mRepository:Lcn/nubia/music/repository/PlaylistRepository;

.field protected mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mView:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mView:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;

    .line 23
    invoke-static {}, Lcn/nubia/music/repository/PlaylistRepository;->getInstance()Lcn/nubia/music/repository/PlaylistRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    .line 24
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;)Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mView:Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;

    return-object v0
.end method


# virtual methods
.method public addPlayListToAnother([J)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$2;-><init>(Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getAudioIdsOfPlaylists([JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 69
    return-void
.end method

.method public addPlayListsToNowPlaying([J)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/PlaylistRepository;->addPlayListsToNowPlaying([JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 75
    return-void
.end method

.method public loadPlaylist()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$1;-><init>(Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getPlaylists(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 52
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
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 35
    return-void
.end method
