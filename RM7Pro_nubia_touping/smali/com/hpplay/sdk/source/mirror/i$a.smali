.class Lcom/hpplay/sdk/source/mirror/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mirror/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mirror/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mirror/i;)V
    .locals 1

    .prologue
    .line 639
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 640
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$a;->a:Ljava/lang/ref/WeakReference;

    .line 641
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$a;->a:Ljava/lang/ref/WeakReference;

    .line 648
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 652
    const-string v0, "ScreenCastThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage Message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 657
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mirror/i$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mirror/i;

    .line 658
    if-eqz v0, :cond_1

    .line 659
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v3, :pswitch_data_0

    .line 751
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 661
    :pswitch_0
    :try_start_1
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 662
    const-string v1, "ScreenCastThread"

    const-string v2, "handleMessage stop"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/hpplay/sdk/source/mirror/b/d;->j()Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 666
    :cond_2
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 670
    :pswitch_1
    :try_start_2
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStart()V

    .line 672
    const-string v0, "ScreenCastThread"

    const-string v1, "handleMessage start"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 676
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;II)V

    goto :goto_1

    .line 679
    :pswitch_3
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    .line 680
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/hpplay/common/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    .line 681
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 682
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 684
    if-ne v4, v1, :cond_6

    .line 685
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 686
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 696
    :goto_2
    const-string v5, "resizalert"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/hpplay/sdk/source/mirror/i;->p:Z

    .line 698
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v5

    invoke-interface {v5}, Lcom/hpplay/sdk/source/mirror/b/d;->o()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 699
    :cond_3
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->d(Lcom/hpplay/sdk/source/mirror/i;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 700
    :cond_4
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->d(Lcom/hpplay/sdk/source/mirror/i;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 701
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;Z)Z

    .line 702
    const-string v4, "ScreenCastThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "===>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v0, Lcom/hpplay/sdk/source/mirror/i;->m:I

    if-ne v3, v1, :cond_7

    move v3, v1

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget v3, v0, Lcom/hpplay/sdk/source/mirror/i;->m:I

    if-ne v3, v1, :cond_8

    :goto_4
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;Z)V

    .line 708
    :cond_5
    :goto_5
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->e(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v1

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->f(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/hpplay/sdk/source/mirror/i;->b(Lcom/hpplay/sdk/source/mirror/i;II)V

    .line 709
    const-string v1, "resize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->e(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->f(Lcom/hpplay/sdk/source/mirror/i;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   --- > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/hpplay/sdk/source/mirror/i;->m:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 689
    :cond_6
    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    .line 690
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 691
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_2

    :cond_7
    move v3, v2

    .line 702
    goto :goto_3

    :cond_8
    move v1, v2

    .line 703
    goto :goto_4

    .line 705
    :cond_9
    if-ge v4, v3, :cond_a

    :goto_6
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;Z)V

    goto :goto_5

    :cond_a
    move v1, v2

    goto :goto_6

    .line 712
    :pswitch_4
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->c(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/b/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/hpplay/sdk/source/mirror/b/d;->A()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/d/c;->b(Landroid/content/Context;)Ljava/lang/String;

    goto/16 :goto_1

    .line 715
    :pswitch_5
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/i;->e()V

    goto/16 :goto_1

    .line 718
    :pswitch_6
    const-string v1, "ScreenCastThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_DELAY_RESIZE_SCREEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 720
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, v0, Lcom/hpplay/sdk/source/mirror/i;->n:Z

    .line 721
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mirror/i;->a(Lcom/hpplay/sdk/source/mirror/i;Z)Z

    .line 722
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mirror/k;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 723
    :cond_b
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v1

    if-nez v1, :cond_d

    .line 724
    :cond_c
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mirror/i$a;->removeMessages(I)V

    .line 725
    const/16 v0, 0x6a

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/mirror/i$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 726
    const-string v0, "ScreenCastThread"

    const-string v1, "  send delay msg again"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 741
    :catch_1
    move-exception v0

    .line 742
    :try_start_4
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 730
    :cond_d
    const/16 v1, 0x6a

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/mirror/i$a;->removeMessages(I)V

    .line 731
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v1

    new-instance v2, Lcom/hpplay/sdk/source/mirror/i$a$1;

    invoke-direct {v2, p0, p1}, Lcom/hpplay/sdk/source/mirror/i$a$1;-><init>(Lcom/hpplay/sdk/source/mirror/i$a;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Lcom/hpplay/sdk/source/mirror/k;->a(Lcom/hpplay/sdk/source/mirror/f;)V

    .line 737
    invoke-static {v0}, Lcom/hpplay/sdk/source/mirror/i;->g(Lcom/hpplay/sdk/source/mirror/i;)Lcom/hpplay/sdk/source/mirror/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mirror/k;->d()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 738
    :catch_2
    move-exception v0

    .line 739
    :try_start_6
    const-string v1, "ScreenCastThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto/16 :goto_2

    .line 659
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
