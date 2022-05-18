.class public Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;
.super Ljava/lang/Object;
.source "AddMusicToPlaylistPresenter.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;


# instance fields
.field mRepository:Lcn/nubia/music/repository/PlaylistRepository;

.field mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field mView:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mView:Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$View;

    .line 21
    invoke-static {}, Lcn/nubia/music/repository/PlaylistRepository;->getInstance()Lcn/nubia/music/repository/PlaylistRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    .line 22
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 23
    return-void
.end method


# virtual methods
.method public addAudioIdsToPlaylists([J[J)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$3;-><init>(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Lcn/nubia/music/repository/PlaylistRepository;->addAudioIdsToPlaylists([J[JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 86
    return-void
.end method

.method public loadPlaylists()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$2;-><init>(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getPlaylists(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 67
    return-void
.end method

.method public loadSongListNotInPlaylist(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter$1;-><init>(Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getSongListNotInPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 50
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AddMusicToPlaylistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 33
    return-void
.end method
