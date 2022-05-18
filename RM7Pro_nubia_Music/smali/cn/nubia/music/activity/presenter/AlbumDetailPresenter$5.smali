.class Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$5;
.super Ljava/lang/Object;
.source "AlbumDetailPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->likeAlbum(Ljava/lang/String;Ljava/lang/String;[J)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$5;->a:Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$5;->a:Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->access$000(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;->showLikeSuccess(Ljava/lang/Boolean;)V

    .line 122
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$5;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter$5;->a:Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;->access$000(Lcn/nubia/music/activity/presenter/AlbumDetailPresenter;)Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;->showLikeFail()V

    .line 127
    return-void
.end method
