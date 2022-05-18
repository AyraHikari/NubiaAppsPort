.class public Lcn/nubia/music/repository/AlbumRepository;
.super Ljava/lang/Object;
.source "AlbumRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/repository/AlbumRepository$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/music/repository/AlbumRepository;


# instance fields
.field private mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-direct {v0, p1}, Lcn/nubia/music/repository/AlbumLocalDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    .line 19
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/repository/AlbumRepository;
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcn/nubia/music/repository/AlbumRepository;->sInstance:Lcn/nubia/music/repository/AlbumRepository;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcn/nubia/music/repository/AlbumRepository;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcn/nubia/music/repository/AlbumRepository;->sInstance:Lcn/nubia/music/repository/AlbumRepository;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository;

    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-direct {v0, v2}, Lcn/nubia/music/repository/AlbumRepository;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/repository/AlbumRepository;->sInstance:Lcn/nubia/music/repository/AlbumRepository;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcn/nubia/music/repository/AlbumRepository;->sInstance:Lcn/nubia/music/repository/AlbumRepository;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAlbumToPlaylist(Ljava/lang/String;Ljava/lang/String;[JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[J",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository$a;

    invoke-direct {v0, p0, p4}, Lcn/nubia/music/repository/AlbumRepository$a;-><init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 59
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->addAlbumToPlaylist(Ljava/lang/String;Ljava/lang/String;[JLcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 60
    return-object v0
.end method

.method public deleteAlbumFromPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/AlbumRepository$a;-><init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 65
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->deleteAlbumFromPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 66
    return-object v0
.end method

.method public getAlbumById(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Lcn/nubia/music/online/model/AlbumModel;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/AlbumRepository$a;-><init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 41
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->getAlbumById(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 42
    return-object v0
.end method

.method public getAllAlbum(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 34
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/AlbumRepository$a;-><init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 35
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->getAllAlbum(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 36
    return-object v0
.end method

.method public getSongListOfAlbum(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 46
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/AlbumRepository$a;-><init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 47
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->getSongListOfAlbum(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 48
    return-object v0
.end method

.method public queryAlbumIsInPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/AlbumRepository$a;-><init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 53
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->queryAlbumIsInPlaylist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 54
    return-object v0
.end method

.method public searchAlbum(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 70
    new-instance v0, Lcn/nubia/music/repository/AlbumRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/AlbumRepository$a;-><init>(Lcn/nubia/music/repository/AlbumRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 71
    iget-object v1, p0, Lcn/nubia/music/repository/AlbumRepository;->mLocalDataSource:Lcn/nubia/music/repository/AlbumLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/AlbumLocalDataSource;->searchAlbum(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 72
    return-object v0
.end method
