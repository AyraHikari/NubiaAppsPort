.class public Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;
.super Ljava/lang/Object;
.source "MediaPlaybackPresenter.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/MediaPlaybackContract$Presenter;


# instance fields
.field private mRepository:Lcn/nubia/music/repository/MusicRepository;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mView:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mView:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;

    .line 18
    invoke-static {}, Lcn/nubia/music/repository/MusicRepository;->getInstance()Lcn/nubia/music/repository/MusicRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mRepository:Lcn/nubia/music/repository/MusicRepository;

    .line 19
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;)Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mView:Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;

    return-object v0
.end method


# virtual methods
.method public isLike(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mRepository:Lcn/nubia/music/repository/MusicRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$1;-><init>(Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/MusicRepository;->isLike(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 48
    return-void
.end method

.method public like(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mRepository:Lcn/nubia/music/repository/MusicRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$3;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$3;-><init>(Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/MusicRepository;->like(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 82
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 30
    return-void
.end method

.method public unLike(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mRepository:Lcn/nubia/music/repository/MusicRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$2;-><init>(Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/music/repository/MusicRepository;->unLike(Ljava/lang/String;Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 65
    return-void
.end method
