.class Lcn/nubia/music/activity/presenter/MyFavoritePresenter$1;
.super Ljava/lang/Object;
.source "MyFavoritePresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/presenter/MyFavoritePresenter;->loadData()V
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
.field final synthetic a:Lcn/nubia/music/activity/presenter/MyFavoritePresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/presenter/MyFavoritePresenter;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/music/activity/presenter/MyFavoritePresenter$1;->a:Lcn/nubia/music/activity/presenter/MyFavoritePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
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
    .line 40
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MyFavoritePresenter$1;->a:Lcn/nubia/music/activity/presenter/MyFavoritePresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/MyFavoritePresenter;->access$000(Lcn/nubia/music/activity/presenter/MyFavoritePresenter;)Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;->showDataSuccess(Ljava/util/List;I)V

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/presenter/MyFavoritePresenter$1;->a:Lcn/nubia/music/activity/presenter/MyFavoritePresenter;

    invoke-static {v0}, Lcn/nubia/music/activity/presenter/MyFavoritePresenter;->access$000(Lcn/nubia/music/activity/presenter/MyFavoritePresenter;)Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcn/nubia/music/activity/presenter/BaseMoreListContract$View;->showDataSuccess(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/presenter/MyFavoritePresenter$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
