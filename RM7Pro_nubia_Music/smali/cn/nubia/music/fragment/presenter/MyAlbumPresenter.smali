.class public Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;
.super Ljava/lang/Object;
.source "MyAlbumPresenter.java"

# interfaces
.implements Lcn/nubia/music/fragment/presenter/BaseLetterListContract$Presenter;


# instance fields
.field mRepository:Lcn/nubia/music/repository/AlbumRepository;

.field mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

.field mView:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->mView:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;

    .line 21
    invoke-static {}, Lcn/nubia/music/repository/AlbumRepository;->getInstance()Lcn/nubia/music/repository/AlbumRepository;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    .line 22
    new-instance v0, Lcn/nubia/music/repository/Subscriptions;

    invoke-direct {v0}, Lcn/nubia/music/repository/Subscriptions;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    .line 23
    return-void
.end method


# virtual methods
.method public loadLocalData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->mRepository:Lcn/nubia/music/repository/AlbumRepository;

    new-instance v1, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter$1;-><init>(Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/repository/AlbumRepository;->getAllAlbum(Lcn/nubia/music/repository/Subscriber;)Lcn/nubia/music/repository/Subscription;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v1, v0}, Lcn/nubia/music/repository/Subscriptions;->add(Lcn/nubia/music/repository/Subscription;)V

    .line 51
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
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->mSubscriptions:Lcn/nubia/music/repository/Subscriptions;

    invoke-virtual {v0}, Lcn/nubia/music/repository/Subscriptions;->clear()V

    .line 33
    return-void
.end method
