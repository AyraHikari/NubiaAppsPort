.class Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$1;
.super Ljava/lang/Object;
.source "MyPlaylistPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->loadPlaylist()V
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
.field final synthetic a:Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$1;->a:Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;

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
    .line 42
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$1;->a:Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;

    invoke-static {v0}, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;->access$000(Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter;)Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Lcn/nubia/music/fragment/presenter/MyPlaylistContract$View;->showPlaylistSuccess(Ljava/util/List;)V

    .line 43
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/presenter/MyPlaylistPresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
