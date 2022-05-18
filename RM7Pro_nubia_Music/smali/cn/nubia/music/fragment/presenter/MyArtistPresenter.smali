.class public Lcn/nubia/music/fragment/presenter/MyArtistPresenter;
.super Ljava/lang/Object;
.source "MyArtistPresenter.java"

# interfaces
.implements Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;


# instance fields
.field mRepository:Lcn/nubia/music/repository/ArtistRepository;

.field mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field mView:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->mView:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;

    .line 18
    invoke-static {}, Lcn/nubia/music/repository/ArtistRepository;->getInstance()Lcn/nubia/music/repository/ArtistRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->mRepository:Lcn/nubia/music/repository/ArtistRepository;

    .line 19
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 20
    return-void
.end method


# virtual methods
.method public loadLocalData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->mRepository:Lcn/nubia/music/repository/ArtistRepository;

    new-instance v1, Lcn/nubia/music/fragment/presenter/MyArtistPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/presenter/MyArtistPresenter$1;-><init>(Lcn/nubia/music/fragment/presenter/MyArtistPresenter;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/ArtistRepository;->getAllArtist(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 48
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
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 30
    return-void
.end method
