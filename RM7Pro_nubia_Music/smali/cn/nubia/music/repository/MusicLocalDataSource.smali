.class public Lcn/nubia/music/repository/MusicLocalDataSource;
.super Ljava/lang/Object;
.source "MusicLocalDataSource.java"


# instance fields
.field private mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {}, Lcn/nubia/music/database/DAOAccessManager;->getInstance()Lcn/nubia/music/database/DAOAccessManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/repository/MusicLocalDataSource;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAllMusic(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
    .line 26
    new-instance v0, Lcn/nubia/music/repository/MusicLocalDataSource$1;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/MusicLocalDataSource$1;-><init>(Lcn/nubia/music/repository/MusicLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 34
    return-object v0
.end method

.method public isLike(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
    .line 49
    new-instance v0, Lcn/nubia/music/repository/MusicLocalDataSource$3;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/MusicLocalDataSource$3;-><init>(Lcn/nubia/music/repository/MusicLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 56
    return-object v0
.end method

.method public like(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcn/nubia/music/repository/MusicLocalDataSource$4;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/MusicLocalDataSource$4;-><init>(Lcn/nubia/music/repository/MusicLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 68
    return-object v0
.end method

.method public searchMusic(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
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
    .line 38
    new-instance v0, Lcn/nubia/music/repository/MusicLocalDataSource$2;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/MusicLocalDataSource$2;-><init>(Lcn/nubia/music/repository/MusicLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 45
    return-object v0
.end method

.method public unLike(Ljava/lang/String;Lcn/nubia/music/database/AccessListener;)Lcn/nubia/music/database/AccessRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/nubia/music/database/AccessListener",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcn/nubia/music/database/AccessRequest",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcn/nubia/music/repository/MusicLocalDataSource$5;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/music/repository/MusicLocalDataSource$5;-><init>(Lcn/nubia/music/repository/MusicLocalDataSource;Lcn/nubia/music/database/AccessListener;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcn/nubia/music/repository/MusicLocalDataSource;->mAccessManager:Lcn/nubia/music/database/DAOAccessManager;

    invoke-virtual {v1, v0}, Lcn/nubia/music/database/DAOAccessManager;->execute(Lcn/nubia/music/database/AccessRequest;)V

    .line 79
    return-object v0
.end method
