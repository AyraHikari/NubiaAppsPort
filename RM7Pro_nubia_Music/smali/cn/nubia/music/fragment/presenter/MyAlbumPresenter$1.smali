.class Lcn/nubia/music/fragment/presenter/MyAlbumPresenter$1;
.super Ljava/lang/Object;
.source "MyAlbumPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->loadLocalData(Ljava/lang/String;)V
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
.field final synthetic a:Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter$1;->a:Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;

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
    .line 41
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter$1;->a:Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;

    iget-object v0, v0, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter;->mView:Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;

    invoke-interface {v0, p1}, Lcn/nubia/music/fragment/presenter/BaseLetterListContract$View;->showLocalDataSuccess(Ljava/util/List;)V

    .line 42
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/presenter/MyAlbumPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
