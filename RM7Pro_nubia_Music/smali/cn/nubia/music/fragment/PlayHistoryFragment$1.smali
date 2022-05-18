.class Lcn/nubia/music/fragment/PlayHistoryFragment$1;
.super Ljava/lang/Object;
.source "PlayHistoryFragment.java"

# interfaces
.implements Lcn/nubia/music/repository/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/PlayHistoryFragment;->loadData()V
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
.field final synthetic a:Lcn/nubia/music/fragment/PlayHistoryFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/PlayHistoryFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$1;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

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
    .line 91
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$1;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->setData(Ljava/util/List;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/PlayHistoryFragment$1;->a:Lcn/nubia/music/fragment/PlayHistoryFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/PlayHistoryFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    invoke-virtual {v0, p1}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->setData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/PlayHistoryFragment$1;->a(Ljava/util/List;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method
