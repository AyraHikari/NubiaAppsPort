.class Lcom/hpplay/sdk/source/player/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/player/e;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/player/e;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 746
    monitor-enter p0

    :try_start_0
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------------->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "photohide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 751
    :cond_0
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "on PHOTO_HIDE"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 757
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSDictionary;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    if-eqz v0, :cond_1

    .line 766
    :try_start_2
    const-string v4, "0"

    .line 767
    const-string v1, "0"

    .line 769
    const-string v5, "duration"

    invoke-virtual {v0, v5}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 770
    const-string v4, "duration"

    invoke-virtual {v0, v4}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 772
    :cond_3
    const-string v5, "position"

    invoke-virtual {v0, v5}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 773
    const-string v1, "position"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 776
    :cond_4
    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_6

    .line 777
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 778
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v5}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 780
    :cond_5
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;F)F

    .line 781
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/player/e;->b(Lcom/hpplay/sdk/source/player/e;F)F

    .line 782
    iget-object v5, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v5, v5, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v5, :cond_6

    .line 783
    const-string v5, "NewLelinkPlayerControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reverse to uiduration : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "position : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    iget-object v4, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v4}, Lcom/hpplay/sdk/source/player/e;->h(Lcom/hpplay/sdk/source/player/e;)F

    move-result v4

    float-to-int v4, v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v6}, Lcom/hpplay/sdk/source/player/e;->i(Lcom/hpplay/sdk/source/player/e;)F

    move-result v6

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onPositionUpdate(JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 791
    :cond_6
    :goto_1
    :try_start_4
    const-string v1, "stoptype"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 792
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;I)I

    .line 793
    const-string v1, "stoptype"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    const-string v4, "media_completion"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 795
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v1, v1, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v1, :cond_9

    .line 796
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    .line 797
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "on completion"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    :try_start_5
    const-string v1, "NewLelinkPlayerControl"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 787
    :catch_1
    move-exception v1

    .line 788
    const-string v4, "NewLelinkPlayerControl"

    invoke-static {v4, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 801
    :cond_7
    const-string v4, "phonevideohide"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 802
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_8

    .line 803
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 805
    :cond_8
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "on stop"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->f()V

    goto/16 :goto_0

    .line 811
    :cond_9
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 812
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 813
    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_a
    :goto_2
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 815
    :pswitch_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->b(Lcom/hpplay/sdk/source/player/e;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 816
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->h()V

    .line 817
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->e()V

    .line 819
    :cond_b
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->c(Lcom/hpplay/sdk/source/player/e;Z)Z

    .line 820
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;Z)Z

    .line 821
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "--- PLAYING ---"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 813
    :sswitch_0
    const-string v3, "playing"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    goto :goto_2

    :sswitch_1
    const-string v2, "loading"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v1, v3

    goto :goto_2

    :sswitch_2
    const-string v2, "paused"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string v2, "stopped"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_4
    const-string v2, "error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x4

    goto :goto_2

    .line 824
    :pswitch_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;Z)Z

    .line 825
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_c

    .line 826
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onLoading()V

    .line 828
    :cond_c
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "LOADING"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :pswitch_2
    const-string v0, "NewLelinkPlayerControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAUSED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v2}, Lcom/hpplay/sdk/source/player/e;->b(Lcom/hpplay/sdk/source/player/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->b(Lcom/hpplay/sdk/source/player/e;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 833
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->j()V

    .line 835
    :cond_d
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->c(Lcom/hpplay/sdk/source/player/e;Z)Z

    .line 836
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;Z)Z

    goto/16 :goto_0

    .line 839
    :pswitch_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;I)I

    .line 840
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 841
    const-string v1, "reason"

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    const-string v1, "ended"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 843
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_e

    .line 844
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onCompletion()V

    .line 846
    :cond_e
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->f()V

    goto/16 :goto_0

    .line 850
    :cond_f
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_10

    .line 851
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    iget-object v0, v0, Lcom/hpplay/sdk/source/player/e;->q:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;->onStop()V

    .line 853
    :cond_10
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "state on stop---------"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->f()V

    goto/16 :goto_0

    .line 857
    :pswitch_4
    const-string v0, "NewLelinkPlayerControl"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/player/e;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 813
    :sswitch_data_0
    .sparse-switch
        -0x70506e33 -> :sswitch_3
        -0x3b5366d2 -> :sswitch_2
        -0x1d6b2fd2 -> :sswitch_0
        0x5c4d208 -> :sswitch_4
        0x1410e13c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 734
    const-string v0, "Switching Protocols"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->a(Lcom/hpplay/sdk/source/player/e;)Lcom/hpplay/sdk/source/protocol/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    invoke-static {v0}, Lcom/hpplay/sdk/source/player/e;->f(Lcom/hpplay/sdk/source/player/e;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 743
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/player/e$3;->a:Lcom/hpplay/sdk/source/player/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/player/e;->b(Lcom/hpplay/sdk/source/player/e;Z)Z

    goto :goto_0

    .line 742
    :cond_1
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/player/e$3;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
