.class Lcn/nubia/music/MediaPlaybackService$4;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 1407
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 1410
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$5100(Lcn/nubia/music/MediaPlaybackService;)Landroid/media/RemoteControlClient;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 1412
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$5100(Lcn/nubia/music/MediaPlaybackService;)Landroid/media/RemoteControlClient;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 1413
    const/4 v2, 0x7

    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcn/nubia/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1414
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcn/nubia/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1415
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcn/nubia/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1416
    const/16 v1, 0x9

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcn/nubia/music/MediaPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1417
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$4;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Lcn/nubia/music/utils/MusicUtils;->getBitmap(JJZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1418
    if-eqz v1, :cond_0

    .line 1419
    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1421
    :cond_0
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 1422
    return-void

    :cond_1
    move v0, v1

    .line 1410
    goto :goto_0
.end method
