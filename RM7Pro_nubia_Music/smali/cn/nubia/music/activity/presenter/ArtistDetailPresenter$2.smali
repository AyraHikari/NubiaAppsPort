.class Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$2;
.super Ljava/lang/Object;
.source "ArtistDetailPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->loadSongList(Ljava/lang/String;)V
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
.field final synthetic a:Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$2;->a:Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;

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
    .line 68
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$2;->a:Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->access$000(Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;)Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;->showSongListSuccess(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$2;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
