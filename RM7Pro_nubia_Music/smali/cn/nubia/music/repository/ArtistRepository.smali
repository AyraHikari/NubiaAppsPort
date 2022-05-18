.class public Lcn/nubia/music/repository/ArtistRepository;
.super Ljava/lang/Object;
.source "ArtistRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/repository/ArtistRepository$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/music/repository/ArtistRepository;


# instance fields
.field private mLocalDataSource:Lcn/nubia/music/repository/ArtistLocalDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcn/nubia/music/repository/ArtistLocalDataSource;

    invoke-direct {v0, p1}, Lcn/nubia/music/repository/ArtistLocalDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/repository/ArtistRepository;->mLocalDataSource:Lcn/nubia/music/repository/ArtistLocalDataSource;

    .line 20
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/repository/ArtistRepository;
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcn/nubia/music/repository/ArtistRepository;->sInstance:Lcn/nubia/music/repository/ArtistRepository;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcn/nubia/music/repository/ArtistRepository;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcn/nubia/music/repository/ArtistRepository;->sInstance:Lcn/nubia/music/repository/ArtistRepository;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcn/nubia/music/repository/ArtistRepository;

    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-direct {v0, v2}, Lcn/nubia/music/repository/ArtistRepository;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/repository/ArtistRepository;->sInstance:Lcn/nubia/music/repository/ArtistRepository;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcn/nubia/music/repository/ArtistRepository;->sInstance:Lcn/nubia/music/repository/ArtistRepository;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAllArtist(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 35
    new-instance v0, Lcn/nubia/music/repository/ArtistRepository$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/music/repository/ArtistRepository$a;-><init>(Lcn/nubia/music/repository/ArtistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 36
    iget-object v1, p0, Lcn/nubia/music/repository/ArtistRepository;->mLocalDataSource:Lcn/nubia/music/repository/ArtistLocalDataSource;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/ArtistLocalDataSource;->getAllArtist(Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/ArtistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 37
    return-object v0
.end method

.method public getArtistById(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Lcn/nubia/music/online/model/ArtistModel;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcn/nubia/music/repository/ArtistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/ArtistRepository$a;-><init>(Lcn/nubia/music/repository/ArtistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 42
    iget-object v1, p0, Lcn/nubia/music/repository/ArtistRepository;->mLocalDataSource:Lcn/nubia/music/repository/ArtistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/ArtistLocalDataSource;->getArtistById(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/ArtistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 43
    return-object v0
.end method

.method public getSongListOfArtist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 47
    new-instance v0, Lcn/nubia/music/repository/ArtistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/ArtistRepository$a;-><init>(Lcn/nubia/music/repository/ArtistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 48
    iget-object v1, p0, Lcn/nubia/music/repository/ArtistRepository;->mLocalDataSource:Lcn/nubia/music/repository/ArtistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/ArtistLocalDataSource;->getSongListOfArtist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/ArtistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 49
    return-object v0
.end method

.method public searchArtist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 53
    new-instance v0, Lcn/nubia/music/repository/ArtistRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/ArtistRepository$a;-><init>(Lcn/nubia/music/repository/ArtistRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 54
    iget-object v1, p0, Lcn/nubia/music/repository/ArtistRepository;->mLocalDataSource:Lcn/nubia/music/repository/ArtistLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/ArtistLocalDataSource;->searchArtist(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/ArtistRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 55
    return-object v0
.end method
