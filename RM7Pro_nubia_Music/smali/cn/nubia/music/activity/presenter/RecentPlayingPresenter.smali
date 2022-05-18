.class public Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;
.super Ljava/lang/Object;
.source "RecentPlayingPresenter.java"

# interfaces
.implements Lcn/nubia/music/activity/presenter/BaseMoreListContract$Presenter;


# instance fields
.field private mRepository:Lcn/nubia/music/repository/PlaylistRepository;

.field private mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field private mView:Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;->mView:Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;

    .line 21
    invoke-static {}, Lcn/nubia/music/repository/PlaylistRepository;->getInstance()Lcn/nubia/music/repository/PlaylistRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    .line 22
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;)Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;->mView:Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;

    return-object v0
.end method


# virtual methods
.method public loadData()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;->mRepository:Lcn/nubia/music/repository/PlaylistRepository;

    new-instance v1, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter$1;-><init>(Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/PlaylistRepository;->getRecentPlayingList(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 55
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/RecentPlayingPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 33
    return-void
.end method
