.class Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$1;
.super Ljava/lang/Object;
.source "PlaylistDetailPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->loadSummaryInfo(Ljava/lang/String;)V
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
        "Lcn/nubia/music/online/model/PlaylistModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$1;->a:Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/music/online/model/PlaylistModel;)V
    .locals 1

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$1;->a:Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;->access$000(Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter;)Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/activity/presenter/PlaylistDetailContract$View;->showSummaryInfo(Lcn/nubia/music/online/model/PlaylistModel;)V

    .line 45
    :cond_0
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcn/nubia/music/online/model/PlaylistModel;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/presenter/PlaylistDetailPresenter$1;->a(Lcn/nubia/music/online/model/PlaylistModel;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
