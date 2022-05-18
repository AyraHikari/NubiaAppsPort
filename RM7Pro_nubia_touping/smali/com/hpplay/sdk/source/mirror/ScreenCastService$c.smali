.class Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/ScreenCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mirror/ScreenCastService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V
    .locals 1

    .prologue
    .line 592
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 593
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->a:Ljava/lang/ref/WeakReference;

    .line 594
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 598
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 599
    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;

    .line 601
    if-nez v0, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 617
    :pswitch_0
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->d(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/i;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 618
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->d(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/i;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mirror/i;->b(I)V

    .line 620
    :cond_2
    const-string v1, "ScreenCastService"

    const-string v2, "unregisterListener------------->2"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->e(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Landroid/hardware/SensorManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 622
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->e(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v0, v0, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->q:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 607
    :pswitch_1
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->d(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 608
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->e(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Landroid/hardware/SensorManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    const/16 v1, 0xb

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$c;->sendEmptyMessageDelayed(IJ)Z

    .line 610
    const-string v1, "ScreenCastService"

    const-string v2, "------------handler check -------------"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->c(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    goto :goto_0

    .line 626
    :pswitch_2
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->f(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 627
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->f(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mirror/ScreenCastService$a;->setPlayerListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 629
    :cond_3
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->g(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    .line 630
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/ScreenCastService;->h(Lcom/hpplay/sdk/source/mirror/ScreenCastService;)V

    goto :goto_0

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
