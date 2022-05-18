.class public Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;
.super Ljava/lang/Object;
.source "AlbumDetailPresenter.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;


# instance fields
.field private mRepository:Lcn/nubia/music/repository/AlbumRepository;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mView:Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mView:Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;

    .line 23
    invoke-static {}, Lcn/nubia/music/repository/AlbumRepository;->getInstance()Lcn/nubia/music/repository/AlbumRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    .line 24
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mView:Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;

    return-object v0
.end method


# virtual methods
.method public isLikeOfAlbum(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$3;-><init>(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/AlbumRepository;->queryAlbumIsInPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 97
    return-void
.end method

.method public likeAlbum(Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$5;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$5;-><init>(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcn/nubia/music/repository/AlbumRepository;->addAlbumToPlaylist(Ljava/lang/String;Ljava/lang/String;[JLcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 131
    return-void
.end method

.method public loadSongList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$2;-><init>(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/AlbumRepository;->getSongListOfAlbum(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    goto :goto_0
.end method

.method public loadSummaryInfo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$1;-><init>(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/AlbumRepository;->getAlbumById(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    goto :goto_0
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
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 35
    return-void
.end method

.method public unLikeAlbum(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$4;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$4;-><init>(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/AlbumRepository;->deleteAlbumFromPlaylist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 114
    return-void
.end method
