.class public interface abstract Lcn/nubia/music/activity/presenter/AlbumDetailContract$View;
.super Ljava/lang/Object;
.source "AlbumDetailContract.java"

# interfaces
.implements Lcn/nubia/music/base/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/presenter/AlbumDetailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/music/base/BaseView",
        "<",
        "Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract showIsLike(Ljava/lang/Boolean;)V
.end method

.method public abstract showLikeFail()V
.end method

.method public abstract showLikeSuccess(Ljava/lang/Boolean;)V
.end method

.method public abstract showSongListSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSummaryInfo(Lcn/nubia/music/online/model/AlbumModel;)V
.end method

.method public abstract showUnLikeFail()V
.end method

.method public abstract showUnLikeSuccess(Ljava/lang/Boolean;)V
.end method
