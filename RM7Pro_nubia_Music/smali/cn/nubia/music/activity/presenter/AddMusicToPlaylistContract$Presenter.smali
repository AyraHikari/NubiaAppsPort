.class public interface abstract Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract$Presenter;
.super Ljava/lang/Object;
.source "AddMusicToPlaylistContract.java"

# interfaces
.implements Lcn/nubia/music/base/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/presenter/AddMusicToPlaylistContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract addAudioIdsToPlaylists([J[J)V
.end method

.method public abstract loadPlaylists()V
.end method

.method public abstract loadSongListNotInPlaylist(Ljava/lang/String;)V
.end method
