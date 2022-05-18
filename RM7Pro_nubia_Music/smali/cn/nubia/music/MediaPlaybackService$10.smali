.class Lcn/nubia/music/MediaPlaybackService$10;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
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
    .line 535
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMediaPlayerHandler.handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 539
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 603
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 541
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v5, v3}, Lcn/nubia/music/MediaPlaybackService;->access$1500(Lcn/nubia/music/MediaPlaybackService;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 544
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_GET_ALBUM, isjustUpdateState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 546
    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v5, v3}, Lcn/nubia/music/MediaPlaybackService;->access$1500(Lcn/nubia/music/MediaPlaybackService;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 552
    :pswitch_3
    const-string v0, "++++ mMediaPlayerHandler  UPDATE_WIDGET+++++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1600(Lcn/nubia/music/MediaPlaybackService;)V

    goto :goto_0

    .line 559
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FOCUS_CHANGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 560
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 596
    :pswitch_5
    const-string v0, "Unknown audio focus change code"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :pswitch_6
    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v3}, Lcn/nubia/music/MediaPlaybackService;->access$1702(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 566
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 570
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1800(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/music/MediaPlaybackService$e;->removeMessages(I)V

    .line 571
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1800(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 574
    :pswitch_8
    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$1702(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 578
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->pause()V

    goto/16 :goto_0

    .line 581
    :pswitch_9
    const-string v0, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1700(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1900(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v3}, Lcn/nubia/music/MediaPlaybackService;->access$1702(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 585
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->fadePlay()V

    goto/16 :goto_0

    .line 590
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1800(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/music/MediaPlaybackService$e;->removeMessages(I)V

    .line 591
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$10;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1800(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 560
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method
