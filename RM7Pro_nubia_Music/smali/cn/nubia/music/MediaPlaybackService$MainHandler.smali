.class public Lcn/nubia/music/MediaPlaybackService$MainHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainHandler"
.end annotation


# instance fields
.field private mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 320
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$MainHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 321
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    const-string v0, "MainHandler"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$MainHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/MediaPlaybackService;

    .line 327
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 423
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 329
    :pswitch_1
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 331
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/music/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 335
    :pswitch_2
    if-eqz v0, :cond_0

    .line 336
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 337
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->fadeNext(Z)V

    goto :goto_0

    .line 343
    :pswitch_3
    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->fadePrev()V

    goto :goto_0

    .line 348
    :pswitch_4
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->fadePlay()V

    goto :goto_0

    .line 353
    :pswitch_5
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->fadePause()V

    goto :goto_0

    .line 358
    :pswitch_6
    const-string v1, "msg TRACK_ENDED"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$500(Lcn/nubia/music/MediaPlaybackService;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 361
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$600(Lcn/nubia/music/MediaPlaybackService;)V

    .line 362
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/music/MediaPlaybackService;->seek(J)J

    .line 363
    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0, v2}, Lcn/nubia/music/MediaPlaybackService;->gotoNext(Z)V

    .line 366
    invoke-static {v0, v2}, Lcn/nubia/music/MediaPlaybackService;->access$700(Lcn/nubia/music/MediaPlaybackService;Z)V

    goto :goto_0

    .line 372
    :pswitch_7
    if-eqz v0, :cond_0

    .line 373
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$800(Lcn/nubia/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 377
    :pswitch_8
    if-eqz v0, :cond_0

    .line 378
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$900(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    invoke-virtual {v0, v3}, Lcn/nubia/music/MediaPlaybackService;->gotoNext(Z)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$600(Lcn/nubia/music/MediaPlaybackService;)V

    goto :goto_0

    .line 386
    :pswitch_9
    if-eqz v0, :cond_0

    .line 387
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 388
    if-eqz v1, :cond_0

    .line 389
    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$1000(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :pswitch_a
    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    .line 396
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/MediaPlaybackService;->open([JI)V

    goto/16 :goto_0

    .line 403
    :pswitch_b
    if-eqz v0, :cond_0

    .line 404
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    .line 405
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 406
    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/MediaPlaybackService;->enqueue([JI)V

    goto/16 :goto_0

    .line 412
    :pswitch_c
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 414
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 416
    invoke-virtual {v0, v2, v3, v1}, Lcn/nubia/music/MediaPlaybackService;->enqueueLocal(JI)V

    goto/16 :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
