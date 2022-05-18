.class public Lcn/nubia/music/repository/PlaylistLocalDataSource;
.super Ljava/lang/Object;
.source "PlaylistLocalDataSource.java"


# instance fields
.field private mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {}, Lcn/nubia/music/database/DAOAccessManager;->getInstance()Lcn/nubia/music/database/DAOAccessManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/repository/PlaylistLocalDataSource;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addAudioIdsToPlaylists([J[JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[J",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;

    invoke-direct {v0, p0, p3, p1, p2}, Lcn/nubia/music/repository/PlaylistLocalDataSource$12;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;[J[J)V

    .line 113
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 114
    return-object v0
.end method

.method public addPlayListsToNowPlaying([J)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$5;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;[J)V

    .line 182
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 183
    return-object v0
.end method

.method public deleteAllSongsFromHistory()Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$4;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;)V

    .line 171
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 172
    return-object v0
.end method

.method public deleteSongsFromHistory(Ljava/util/List;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$3;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/util/List;)V

    .line 160
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 161
    return-object v0
.end method

.method public getAudioIdsOfPlaylists([JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcn/nubia/music/database/AccessListener",
            "<[J>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$6;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$6;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;[J)V

    .line 193
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 194
    return-object v0
.end method

.method public getFavouriteList(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$14;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$14;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;)V

    .line 137
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 138
    return-object v0
.end method

.method public getNowPlayingList(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$2;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;)V

    .line 149
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 150
    return-object v0
.end method

.method public getPlaylistById(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Lcn/nubia/music/online/model/PlaylistModel;",
            ">;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Lcn/nubia/music/online/model/PlaylistModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$9;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$9;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 77
    return-object v0
.end method

.method public getPlaylistCoverByModel(Lcn/nubia/music/online/model/MediaModel;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/online/model/MediaModel;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$8;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$8;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Lcn/nubia/music/online/model/MediaModel;)V

    .line 64
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 65
    return-object v0
.end method

.method public getPlaylists(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$1;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;)V

    .line 40
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 41
    return-object v0
.end method

.method public getPlaylistsCover(Ljava/util/List;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$7;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$7;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/util/List;)V

    .line 52
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 53
    return-object v0
.end method

.method public getRecentPlayingList(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$13;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$13;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;)V

    .line 125
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 126
    return-object v0
.end method

.method public getSongListNotInPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$11;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$11;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 102
    return-object v0
.end method

.method public getSongListOfPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcn/nubia/music/repository/PlaylistLocalDataSource$10;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/PlaylistLocalDataSource$10;-><init>(Lcn/nubia/music/repository/PlaylistLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcn/nubia/music/repository/PlaylistLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 90
    return-object v0
.end method
