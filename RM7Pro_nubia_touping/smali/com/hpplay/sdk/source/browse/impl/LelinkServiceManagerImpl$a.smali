.class Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private b:Z

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 1

    .prologue
    .line 744
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->e:I

    .line 745
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->c:Ljava/lang/ref/WeakReference;

    .line 746
    return-void
.end method

.method private a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V
    .locals 5

    .prologue
    .line 875
    invoke-static {p1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 876
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "reInitAuth run"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 878
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a$1;

    invoke-direct {v1, p0, p1}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a$1;-><init>(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 891
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 750
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 751
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "NetworkAndTimeChangeReceiver LelinkServiceManagerImpl reference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 755
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "NetworkAndTimeChangeReceiver LelinkServiceManagerImpl is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;

    .line 759
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->d(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)I

    move-result v1

    const/16 v2, 0x192

    if-eq v1, v2, :cond_0

    .line 762
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 764
    :try_start_0
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 765
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 766
    const-string v2, "bssid"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 767
    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 769
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 770
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_7

    .line 771
    const-string v1, "LelinkServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi connect  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    if-eqz v2, :cond_6

    .line 774
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->d:Z

    .line 775
    const-string v1, "LelinkServiceManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFirstBoot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 777
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 779
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    .line 781
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    .line 784
    :cond_3
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    if-eqz v1, :cond_4

    .line 785
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "firstNetworkChange in NetworkAndTimeChangeReceiver"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    goto/16 :goto_0

    .line 861
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 789
    :cond_4
    const-string v1, "LelinkServiceManagerImpl"

    const-string v2, "wifi connected"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 791
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->f()V

    .line 793
    :cond_5
    const-string v1, "LelinkServiceManagerImpl"

    const-string v2, "firstNetworkChange in NetworkAndTimeChangeReceiver"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_6
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->j(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "ImServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    :cond_7
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_0

    .line 799
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->d:Z

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    .line 801
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->d:Z

    .line 802
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    if-eqz v1, :cond_8

    .line 803
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "firstNetworkChange in NetworkAndTimeChangeReceiver"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    goto/16 :goto_0

    .line 807
    :cond_8
    const-string v1, "LelinkServiceManagerImpl"

    const-string v2, "wifi disconnected"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 809
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->g()V

    .line 812
    :cond_9
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->e(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    goto/16 :goto_0

    .line 816
    :cond_a
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    invoke-static {p1}, Lcom/hpplay/common/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    move-result-object v2

    .line 819
    const-string v1, "LelinkServiceManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 821
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 823
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v3, v4, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 825
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->g(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 826
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->h(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 828
    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    .line 830
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->i(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)V

    .line 833
    :cond_b
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    if-eqz v1, :cond_c

    .line 834
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "firstNetworkChange in NetworkAndTimeChangeReceiver"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    goto/16 :goto_0

    .line 838
    :cond_c
    const-string v1, "LelinkServiceManagerImpl"

    const-string v2, "mobile is open"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 840
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->h()V

    .line 843
    :cond_d
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->j(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Preference;->getInstance()Lcom/hpplay/sdk/source/common/store/Preference;

    move-result-object v0

    const-string v1, "ImServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/common/store/Preference;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_e
    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_WIFI:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    invoke-virtual {v1, v2}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    if-eqz v1, :cond_f

    .line 849
    const-string v0, "LelinkServiceManagerImpl"

    const-string v1, "firstNetworkChange in NetworkAndTimeChangeReceiver"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl$a;->b:Z

    goto/16 :goto_0

    .line 853
    :cond_f
    const-string v1, "LelinkServiceManagerImpl"

    const-string v2, "mobile is close"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 855
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;->a(Lcom/hpplay/sdk/source/browse/impl/LelinkServiceManagerImpl;)Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
