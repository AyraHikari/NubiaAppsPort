.class Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;
.super Ljava/lang/Object;
.source "GalleryDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/database/GalleryDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBListenerBroker"
.end annotation


# instance fields
.field private mNotifiers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;->mNotifiers:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/database/GalleryDatabaseHelper$1;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDataUpdate()V
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;->mNotifiers:Ljava/util/WeakHashMap;

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

    check-cast v1, Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;

    .line 177
    invoke-interface {v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;->onDataUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerNotifier(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V
    .locals 2

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;->mNotifiers:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
