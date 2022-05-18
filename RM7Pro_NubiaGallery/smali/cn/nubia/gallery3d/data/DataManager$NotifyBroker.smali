.class Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;
.super Landroid/database/ContentObserver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyBroker"
.end annotation


# instance fields
.field private mApp:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mCurrentId:I

.field private mNotifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcn/nubia/gallery3d/data/ChangeNotifier;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcn/nubia/gallery3d/data/DataManager;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->this$0:Lcn/nubia/gallery3d/data/DataManager;

    .line 485
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, -0x1

    .line 481
    iput p1, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->mCurrentId:I

    .line 482
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    .line 486
    iput-object p2, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->mApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 487
    iput-object p4, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public declared-synchronized onChange(Z)V
    .locals 2

    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 508
    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/ChangeNotifier;->onChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 510
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onChange(ZLandroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DataManager"

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lyfnew onChangein  uri= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->this$0:Lcn/nubia/gallery3d/data/DataManager;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/DataManager;->access$100(Lcn/nubia/gallery3d/data/DataManager;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getIspending(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p2

    if-nez p2, :cond_0

    .line 498
    iget-object p2, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->this$0:Lcn/nubia/gallery3d/data/DataManager;

    invoke-static {p2}, Lcn/nubia/gallery3d/data/DataManager;->access$200(Lcn/nubia/gallery3d/data/DataManager;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 499
    iget-object p2, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/ChangeNotifier;

    .line 500
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/ChangeNotifier;->onChange(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 503
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerNotifier(Lcn/nubia/gallery3d/data/ChangeNotifier;Z)V
    .locals 1

    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DataManager$NotifyBroker;->mNotifiers:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
