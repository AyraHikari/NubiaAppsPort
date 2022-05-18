.class Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$1;
.super Ljava/lang/Object;
.source "ArtistDetailPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->loadSummaryInfo(Ljava/lang/String;)V
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
        "Lcn/nubia/music/online/model/ArtistModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$1;->a:Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/music/online/model/ArtistModel;)V
    .locals 1

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$1;->a:Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;->access$000(Lcn/nubia/music/activity/presenter/ArtistDetailPresenter;)Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/activity/presenter/ArtistDetailContract$View;->showSummaryInfo(Lcn/nubia/music/online/model/ArtistModel;)V

    .line 49
    :cond_0
    return-void
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcn/nubia/music/online/model/ArtistModel;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/presenter/ArtistDetailPresenter$1;->a(Lcn/nubia/music/online/model/ArtistModel;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
