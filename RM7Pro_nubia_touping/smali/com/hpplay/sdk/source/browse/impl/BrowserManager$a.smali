.class Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/impl/BrowserManager;
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
            "Lcom/hpplay/sdk/source/browse/impl/BrowserManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)V
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a:Ljava/lang/ref/WeakReference;

    .line 468
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 623
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 624
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 625
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 603
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->isOnLine()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getConfigMaps()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 605
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getConfigMaps()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 606
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    const-string v1, "unknow"

    .line 609
    :cond_1
    const-string v3, "BrowserManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get mf is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 612
    :cond_2
    invoke-static {}, Lcom/hpplay/sdk/source/common/store/Session;->getInstance()Lcom/hpplay/sdk/source/common/store/Session;

    move-result-object v1

    iget-boolean v1, v1, Lcom/hpplay/sdk/source/common/store/Session;->isOnlyLelink:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getTypes()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Lelink"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 613
    const-string v1, "BrowserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getTypes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 601
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 616
    :cond_3
    :try_start_1
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 619
    :cond_4
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(ZLcom/hpplay/sdk/source/browse/b/b;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 544
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 545
    const-string v0, "BrowserManager"

    const-string v1, "resolveInfo reference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 548
    :cond_1
    if-nez p2, :cond_2

    .line 549
    :try_start_1
    const-string v0, "BrowserManager"

    const-string v1, "resolveInfo BrowserInfo is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 552
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 554
    if-nez v0, :cond_3

    .line 555
    const-string v0, "BrowserManager"

    const-string v1, "resolveInfo manager is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_3
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->d(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v4

    .line 560
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 561
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 563
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 566
    if-eqz p1, :cond_4

    .line 567
    invoke-virtual {v1, p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByAliveBroserInfo(Lcom/hpplay/sdk/source/browse/b/b;)V

    move v1, v2

    :goto_2
    move v3, v1

    .line 581
    goto :goto_1

    .line 569
    :cond_4
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->f()I

    move-result v3

    invoke-virtual {v1, v3, p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    move v1, v2

    goto :goto_2

    .line 575
    :cond_5
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 576
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 578
    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->f()I

    move-result v3

    invoke-virtual {v1, v3, p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->updateByBroserInfo(ILcom/hpplay/sdk/source/browse/b/b;)V

    move v1, v2

    goto :goto_2

    .line 582
    :cond_6
    if-eqz v3, :cond_7

    .line 583
    new-instance v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-virtual {p2}, Lcom/hpplay/sdk/source/browse/b/b;->f()I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;-><init>(ILcom/hpplay/sdk/source/browse/b/b;)V

    .line 584
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_7
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 588
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 589
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a(Ljava/util/List;)V

    .line 590
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/api/IBrowseListener;->onBrowse(ILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public serviceAdded(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 473
    const-string v0, "BrowserManager"

    const-string v1, "serviceAdded imple reference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    if-nez p1, :cond_2

    .line 477
    const-string v0, "BrowserManager"

    const-string v1, "serviceAdded BrowserInfo is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_2
    const-string v0, "BrowserManager"

    const-string v1, "LelinkServiceManagerImpl serviceAdded"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "BrowserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceAdded name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 483
    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a(ZLcom/hpplay/sdk/source/browse/b/b;)V

    goto :goto_0
.end method

.method public serviceAlive(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 3

    .prologue
    .line 538
    const-string v0, "BrowserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceAlive uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 539
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a(ZLcom/hpplay/sdk/source/browse/b/b;)V

    .line 541
    return-void
.end method

.method public serviceRemoved(Lcom/hpplay/sdk/source/browse/b/b;)V
    .locals 6

    .prologue
    .line 495
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 496
    const-string v0, "BrowserManager"

    const-string v1, "serviceAdded imple reference is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    if-nez p1, :cond_2

    .line 500
    const-string v0, "BrowserManager"

    const-string v1, "serviceAdded BrowserInfo is null"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;

    .line 504
    if-eqz v0, :cond_0

    .line 508
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->d(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v2

    .line 509
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 511
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 512
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 513
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 515
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 517
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 523
    :cond_4
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 524
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/b/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 525
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 529
    :cond_5
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a(Ljava/util/List;Ljava/util/List;)V

    .line 531
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager$a;->a(Ljava/util/List;)V

    .line 532
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->b(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/impl/BrowserManager;->c(Lcom/hpplay/sdk/source/browse/impl/BrowserManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hpplay/sdk/source/browse/api/IBrowseListener;->onBrowse(ILjava/util/List;)V

    goto/16 :goto_0
.end method
