.class Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;
.super Ljava/lang/Object;
.source "QuickSearchPresenter.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->searchLocalArtist(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->b:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    iput-object p2, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->a:Ljava/lang/String;

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
    .line 65
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->b:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->b:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    invoke-static {v1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$000(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$002(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;I)I

    .line 70
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->b:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    iget-object v1, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$300(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;Ljava/lang/String;)V

    .line 71
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->b:Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;

    invoke-static {v0}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;->access$100(Lcn/nubia/music/fragment/presenter/QuickSearchPresenter;)Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchContract$View;->showSearchSuccess(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/presenter/QuickSearchPresenter$2;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method
