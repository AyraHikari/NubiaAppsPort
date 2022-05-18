.class public Lcn/nubia/music/repository/MusicRepository;
.super Ljava/lang/Object;
.source "MusicRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/repository/MusicRepository$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcn/nubia/music/repository/MusicRepository;


# instance fields
.field private mLocalDataSource:Lcn/nubia/music/repository/MusicLocalDataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcn/nubia/music/repository/MusicLocalDataSource;

    invoke-direct {v0, p1}, Lcn/nubia/music/repository/MusicLocalDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/repository/MusicRepository;->mLocalDataSource:Lcn/nubia/music/repository/MusicLocalDataSource;

    .line 18
    return-void
.end method

.method public static getInstance()Lcn/nubia/music/repository/MusicRepository;
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcn/nubia/music/repository/MusicRepository;->sInstance:Lcn/nubia/music/repository/MusicRepository;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcn/nubia/music/repository/MusicRepository;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcn/nubia/music/repository/MusicRepository;->sInstance:Lcn/nubia/music/repository/MusicRepository;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcn/nubia/music/repository/MusicRepository;

    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-direct {v0, v2}, Lcn/nubia/music/repository/MusicRepository;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/music/repository/MusicRepository;->sInstance:Lcn/nubia/music/repository/MusicRepository;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcn/nubia/music/repository/MusicRepository;->sInstance:Lcn/nubia/music/repository/MusicRepository;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAllMusic(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 33
    new-instance v0, Lcn/nubia/music/repository/MusicRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/MusicRepository$a;-><init>(Lcn/nubia/music/repository/MusicRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 34
    iget-object v1, p0, Lcn/nubia/music/repository/MusicRepository;->mLocalDataSource:Lcn/nubia/music/repository/MusicLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/MusicLocalDataSource;->getAllMusic(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/MusicRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 35
    return-object v0
.end method

.method public isLike(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 45
    new-instance v0, Lcn/nubia/music/repository/MusicRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/MusicRepository$a;-><init>(Lcn/nubia/music/repository/MusicRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 46
    iget-object v1, p0, Lcn/nubia/music/repository/MusicRepository;->mLocalDataSource:Lcn/nubia/music/repository/MusicLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/MusicLocalDataSource;->isLike(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/MusicRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 47
    return-object v0
.end method

.method public like(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lcn/nubia/music/repository/MusicRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/MusicRepository$a;-><init>(Lcn/nubia/music/repository/MusicRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 52
    iget-object v1, p0, Lcn/nubia/music/repository/MusicRepository;->mLocalDataSource:Lcn/nubia/music/repository/MusicLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/MusicLocalDataSource;->like(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/MusicRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 53
    return-object v0
.end method

.method public searchMusic(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
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
    .line 39
    new-instance v0, Lcn/nubia/music/repository/MusicRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/MusicRepository$a;-><init>(Lcn/nubia/music/repository/MusicRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 40
    iget-object v1, p0, Lcn/nubia/music/repository/MusicRepository;->mLocalDataSource:Lcn/nubia/music/repository/MusicLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/MusicLocalDataSource;->searchMusic(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/MusicRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 41
    return-object v0
.end method

.method public unLike(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/repository/Subscriber",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcn/nubia/music/repository/Subscription;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcn/nubia/music/repository/MusicRepository$a;

    invoke-direct {v0, p0, p2}, Lcn/nubia/music/repository/MusicRepository$a;-><init>(Lcn/nubia/music/repository/MusicRepository;Lcn/nubia/music/repository/Subscriber;)V

    .line 58
    iget-object v1, p0, Lcn/nubia/music/repository/MusicRepository;->mLocalDataSource:Lcn/nubia/music/repository/MusicLocalDataSource;

    invoke-virtual {v1, p1, v0}, Lcn/nubia/music/repository/MusicLocalDataSource;->unLike(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/MusicRepository$a;->a(Lcn/nubia/music/database/AccessRequest;)V

    .line 59
    return-object v0
.end method
