.class public interface abstract Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;
.super Ljava/lang/Object;
.source "AlbumDetailContract.java"

# interfaces
.implements Lcn/nubia/music/base/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/presenter/AlbumDetailContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract isLikeOfAlbum(Ljava/lang/String;)V
.end method

.method public abstract likeAlbum(Ljava/lang/String;Ljava/lang/String;[J)V
.end method

.method public abstract loadSongList(Ljava/lang/String;)V
.end method

.method public abstract loadSummaryInfo(Ljava/lang/String;)V
.end method

.method public abstract unLikeAlbum(Ljava/lang/String;)V
.end method
