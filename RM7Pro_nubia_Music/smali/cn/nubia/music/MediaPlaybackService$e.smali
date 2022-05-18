.class Lcn/nubia/music/MediaPlaybackService$e;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:F

.field private b:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Landroid/os/Looper;Lcn/nubia/music/MediaPlaybackService;)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 432
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 428
    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 433
    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 434
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$e;->b:Ljava/lang/ref/WeakReference;

    .line 435
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const v3, 0x3e4ccccd    # 0.2f

    const v2, 0x3ca3d70a    # 0.02f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xa

    .line 439
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/MediaPlaybackService;

    .line 443
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 445
    :pswitch_1
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 446
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 447
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessageDelayed(IJ)Z

    .line 451
    :goto_1
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    goto :goto_0

    .line 449
    :cond_2
    iput v3, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    goto :goto_1

    .line 454
    :pswitch_2
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    add-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 455
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3

    .line 456
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    :goto_2
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    goto :goto_0

    .line 458
    :cond_3
    iput v6, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    goto :goto_2

    .line 463
    :pswitch_3
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 464
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    .line 465
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 466
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 468
    :cond_4
    iput v3, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 469
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v1, v2}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 470
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService$b;->f()V

    .line 471
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$1200(Lcn/nubia/music/MediaPlaybackService;Z)V

    .line 472
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1300(Lcn/nubia/music/MediaPlaybackService;)V

    goto :goto_0

    .line 476
    :pswitch_4
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    add-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 477
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_5

    .line 478
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessageDelayed(IJ)Z

    .line 482
    :goto_3
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    goto/16 :goto_0

    .line 480
    :cond_5
    iput v6, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    goto :goto_3

    .line 485
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 486
    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v3, 0x3f333333    # 0.7f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 487
    const-string v2, "FADE_NEXT 1"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 488
    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v3, 0x3dcccccd    # 0.1f

    sub-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 489
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v0, v2}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 490
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService$e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 491
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    invoke-virtual {p0, v0, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 493
    :cond_6
    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 494
    const-string v2, "FADE_NEXT 2"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 495
    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v3, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v3

    iput v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 496
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v2

    iget v3, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v2, v3}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 497
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcn/nubia/music/MediaPlaybackService$e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 498
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    invoke-virtual {p0, v2, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 501
    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    float-to-double v2, v2

    cmpg-double v2, v8, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    float-to-double v2, v2

    const-wide v4, 0x3fe199999999999aL    # 0.55

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 502
    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->prepareNext(Z)V

    goto/16 :goto_0

    .line 506
    :cond_7
    const-string v1, "FADE_NEXT 3"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 507
    iput v6, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 508
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v1, v2}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 509
    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 513
    :pswitch_6
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v2, 0x3f333333    # 0.7f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_8

    .line 514
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 515
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 516
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 517
    :cond_8
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_9

    .line 518
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 519
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v1, v2}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 520
    const/16 v1, 0x10

    invoke-virtual {p0, v1, v4, v5}, Lcn/nubia/music/MediaPlaybackService$e;->sendEmptyMessageDelayed(IJ)Z

    .line 521
    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    float-to-double v2, v1

    cmpg-double v1, v8, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    float-to-double v2, v1

    const-wide v4, 0x3fe199999999999aL    # 0.55

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 522
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1400(Lcn/nubia/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 525
    :cond_9
    iput v6, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    .line 526
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v1

    iget v2, p0, Lcn/nubia/music/MediaPlaybackService$e;->a:F

    invoke-virtual {v1, v2}, Lcn/nubia/music/MediaPlaybackService$b;->a(F)V

    .line 527
    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
