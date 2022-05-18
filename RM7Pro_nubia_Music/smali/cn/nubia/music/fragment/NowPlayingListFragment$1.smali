.class Lcn/nubia/music/fragment/NowPlayingListFragment$1;
.super Ljava/lang/Object;
.source "NowPlayingListFragment.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/NowPlayingListFragment;->queueChanged()V
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
.field final synthetic a:Lcn/nubia/music/fragment/NowPlayingListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/NowPlayingListFragment;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$1;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

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
    .line 55
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$1;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->setData(Ljava/util/List;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/NowPlayingListFragment$1;->a:Lcn/nubia/music/fragment/NowPlayingListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/NowPlayingListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->setData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/NowPlayingListFragment$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
