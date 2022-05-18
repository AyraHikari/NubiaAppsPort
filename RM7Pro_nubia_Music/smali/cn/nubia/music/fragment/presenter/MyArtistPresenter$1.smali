.class Lcn/nubia/music/fragment/presenter/MyArtistPresenter$1;
.super Ljava/lang/Object;
.source "MyArtistPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->loadLocalData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/music/repository/Subscriber",
        "<",
        "Ljava/util/List",
        "<",
        "Lcn/nubia/music/online/model/MediaModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/presenter/MyArtistPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/presenter/MyArtistPresenter;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter$1;->a:Lcn/nubia/music/fragment/presenter/MyArtistPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter$1;->a:Lcn/nubia/music/fragment/presenter/MyArtistPresenter;

    iget-object v0, v0, Lcn/nubia/music/fragment/presenter/MyArtistPresenter;->mView:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;

    invoke-interface {v0, p1}, Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;->showLocalDataSuccess(Ljava/util/List;)V

    .line 39
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/presenter/MyArtistPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
