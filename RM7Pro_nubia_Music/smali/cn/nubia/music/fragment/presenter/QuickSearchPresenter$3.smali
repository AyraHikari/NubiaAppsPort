.class Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;
.super Ljava/lang/Object;
.source "QuickSearchPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->searchLocalAlbum(Ljava/lang/String;)V
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
.field final synthetic a:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;->a:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 87
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;->a:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;->a:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    invoke-static {v1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$000(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$002(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;I)I

    .line 93
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;->a:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    invoke-static {v0}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$000(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;->a:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    invoke-static {v0}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$100(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;->showSearchFail()V

    .line 96
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;->a:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    invoke-static {v0}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$100(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;->showSearchSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$3;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
