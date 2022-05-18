.class public Lcn/nubia/music/repository/PlaylistRepository;
.super Ljava/lang/Object;
.source "PlaylistRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/repository/PlaylistRepository$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/music/repository/PlaylistRepository;


# instance fields
.field private mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-direct {v0, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    .line 22
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/repository/PlaylistRepository;
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcn/nubia/music/repository/PlaylistRepository;->sInstance:Lcn/nubia/music/repository/PlaylistRepository;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcn/nubia/music/repository/PlaylistRepository;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcn/nubia/music/repository/PlaylistRepository;->sInstance:Lcn/nubia/music/repository/PlaylistRepository;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository;

    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-direct {v0, v2}, Lcn/nubia/music/repository/PlaylistRepository;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/repository/PlaylistRepository;->sInstance:Lcn/nubia/music/repository/PlaylistRepository;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcn/nubia/music/repository/PlaylistRepository;->sInstance:Lcn/nubia/music/repository/PlaylistRepository;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAudioIdsToPlaylists([J[JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[J",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p3}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 74
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1, p2, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->addAudioIdsToPlaylists([J[JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 75
    return-object v0
.end method

.method public addPlayListsToNowPlaying([JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 110
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->addPlayListsToNowPlaying([J)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 111
    return-object v0
.end method

.method public deleteAllSongsFromHistory(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 104
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->deleteAllSongsFromHistory()Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 105
    return-object v0
.end method

.method public deleteSongsFromHistory(Ljava/util/List;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 98
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->deleteSongsFromHistory(Ljava/util/List;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 99
    return-object v0
.end method

.method public getAudioIdsOfPlaylists([JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcn/nubia/music/repository/Subscriber",
            "<[J>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 116
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getAudioIdsOfPlaylists([JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 117
    return-object v0
.end method

.method public getFavouriteList(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getFavouriteList(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 87
    return-object v0
.end method

.method public getNowPlayingList(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 92
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getNowPlayingList(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 93
    return-object v0
.end method

.method public getPlaylistById(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Lcn/nubia/music/online/model/PlaylistModel;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 56
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getPlaylistById(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 57
    return-object v0
.end method

.method public getPlaylistCoverByModel(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/online/model/MediaModel;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 50
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getPlaylistCoverByModel(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 51
    return-object v0
.end method

.method public getPlaylists(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 38
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getPlaylists(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 39
    return-object v0
.end method

.method public getPlaylistsCover(Ljava/util/List;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 44
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getPlaylistsCover(Ljava/util/List;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 45
    return-object v0
.end method

.method public getRecentPlayingList(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 80
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getRecentPlayingList(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 81
    return-object v0
.end method

.method public getSongListNotInPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 68
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getSongListNotInPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 69
    return-object v0
.end method

.method public getSongListOfPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcn/nubia/music/repository/PlaylistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/PlaylistRepository$a;-><init>(Lcn/nubia/music/repository/PlaylistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 62
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistRepository;->mLocalDataSource:Lcn/nubia/music/repository/PlaylistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/PlaylistLocalDataSource;->getSongListOfPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 63
    return-object v0
.end method
