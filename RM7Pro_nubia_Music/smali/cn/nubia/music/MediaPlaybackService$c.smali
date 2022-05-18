.class Lcn/nubia/music/MediaPlaybackService$c;
.super Lcn/nubia/music/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 3899
    invoke-direct {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;-><init>()V

    .line 3900
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    .line 3901
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 3996
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1

    .prologue
    .line 3964
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->enqueueAsync([JI)V

    .line 3965
    return-void
.end method

.method public enqueueLocal(JI)V
    .locals 1

    .prologue
    .line 3968
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/music/MediaPlaybackService;->enqueueLocalAsync(JI)V

    .line 3969
    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3984
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 3952
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4059
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3948
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 3960
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3956
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 3988
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 4040
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferingPrecent()I
    .locals 1

    .prologue
    .line 4049
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getBufferingPrecent()I

    move-result v0

    return v0
.end method

.method public getInnerPlayerState()I
    .locals 1

    .prologue
    .line 4045
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getInnerPlayerState()I

    move-result v0

    return v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3980
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 3972
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 3912
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 4032
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 4008
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3944
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3920
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1

    .prologue
    .line 3976
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 3977
    return-void
.end method

.method public next()V
    .locals 2

    .prologue
    .line 3940
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->gotoNext(Z)V

    .line 3941
    return-void
.end method

.method public open([JI)V
    .locals 1

    .prologue
    .line 3908
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->openAsync([JI)V

    .line 3909
    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3904
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcn/nubia/music/MediaPlaybackService;->open(Ljava/lang/String;)Z

    .line 3905
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 3928
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->pause()V

    .line 3929
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 3932
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 3933
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3992
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 3936
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->prev()V

    .line 3937
    return-void
.end method

.method public removeListTracks([J)I
    .locals 1

    .prologue
    .line 4055
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcn/nubia/music/MediaPlaybackService;->removeListTracks([J)I

    move-result v0

    return v0
.end method

.method public removeTrack(J)I
    .locals 1

    .prologue
    .line 4024
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1

    .prologue
    .line 4012
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public removeTracksAudioId([J)I
    .locals 1

    .prologue
    .line 4016
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcn/nubia/music/MediaPlaybackService;->removeTracksAudioId([J)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 3

    .prologue
    .line 4000
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendSyncHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 4020
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcn/nubia/music/MediaPlaybackService;->sendSyncHandler(Ljava/lang/String;)V

    .line 4021
    return-void
.end method

.method public setQueuePosition(I)V
    .locals 1

    .prologue
    .line 3916
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcn/nubia/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 3917
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .prologue
    .line 4028
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcn/nubia/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 4029
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    .prologue
    .line 4004
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcn/nubia/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 4005
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 3924
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$c;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->stop()V

    .line 3925
    return-void
.end method
