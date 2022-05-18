.class Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$1;
.super Ljava/lang/Object;
.source "MediaPlaybackPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->isLike(Ljava/lang/String;)V
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
.field final synthetic a:Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$1;->a:Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$1;->a:Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;->access$000(Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter;)Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/activity/presenter/MediaPlaybackContract$View;->setLikeOrNot(Ljava/lang/Boolean;)V

    .line 39
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/presenter/MediaPlaybackPresenter$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
