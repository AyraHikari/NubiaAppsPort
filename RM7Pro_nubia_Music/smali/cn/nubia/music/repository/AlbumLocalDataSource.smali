.class public Lcn/nubia/music/repository/AlbumLocalDataSource;
.super Ljava/lang/Object;
.source "AlbumLocalDataSource.java"


# instance fields
.field private mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {}, Lcn/nubia/music/database/DAOAccessManager;->getInstance()Lcn/nubia/music/database/DAOAccessManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/repository/AlbumLocalDataSource;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public addAlbumToPlaylist(Ljava/lang/String;Ljava/lang/String;[JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J",
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
    .line 87
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource$6;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/music/repository/AlbumLocalDataSource$6;-><init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;Ljava/lang/String;[J)V

    .line 94
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 95
    return-object v0
.end method

.method public deleteAlbumFromPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 99
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource$7;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/AlbumLocalDataSource$7;-><init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 107
    return-object v0
.end method

.method public getAlbumById(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Lcn/nubia/music/online/model/AlbumModel;",
            ">;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Lcn/nubia/music/online/model/AlbumModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/AlbumLocalDataSource$2;-><init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 47
    return-object v0
.end method

.method public getAllAlbum(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/AlbumLocalDataSource$1;-><init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;)V

    .line 34
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 35
    return-object v0
.end method

.method public getSongListOfAlbum(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
    .line 51
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource$3;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/AlbumLocalDataSource$3;-><init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 59
    return-object v0
.end method

.method public queryAlbumIsInPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 75
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource$5;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/AlbumLocalDataSource$5;-><init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 83
    return-object v0
.end method

.method public searchAlbum(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
    .line 63
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource$4;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/AlbumLocalDataSource$4;-><init>(Lcn/nubia/music/repository/AlbumLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 71
    return-object v0
.end method
