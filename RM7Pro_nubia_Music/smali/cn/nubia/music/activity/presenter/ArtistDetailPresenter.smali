.class public Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;
.super Ljava/lang/Object;
.source "ArtistDetailPresenter.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/ArtistDetailContract$Presenter;


# instance fields
.field private mRepository:Lcn/nubia/music/repository/ArtistRepository;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mView:Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mView:Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;

    .line 23
    invoke-static {}, Lcn/nubia/music/repository/ArtistRepository;->getInstance()Lcn/nubia/music/repository/ArtistRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mRepository:Lcn/nubia/music/repository/ArtistRepository;

    .line 24
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;)Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mView:Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;

    return-object v0
.end method


# virtual methods
.method public loadSongList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mRepository:Lcn/nubia/music/repository/ArtistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$2;-><init>(Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/ArtistRepository;->getSongListOfArtist(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

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
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mRepository:Lcn/nubia/music/repository/ArtistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$1;-><init>(Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/ArtistRepository;->getArtistById(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

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
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 35
    return-void
.end method
