.class public Lcn/nubia/gallery3d/data/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"


# instance fields
.field protected mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 33
    invoke-interface {p3}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Lcn/nubia/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcn/nubia/gallery3d/data/ChangeNotifier;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;Z)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 38
    invoke-interface {p3}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0, p4}, Lcn/nubia/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcn/nubia/gallery3d/data/ChangeNotifier;Z)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    const/4 p1, 0x0

    .line 43
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 44
    invoke-interface {p3}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-virtual {v0, v1, p0}, Lcn/nubia/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcn/nubia/gallery3d/data/ChangeNotifier;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;Z)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    const/4 p1, 0x0

    .line 50
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 51
    invoke-interface {p3}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-virtual {v0, v1, p0, p4}, Lcn/nubia/gallery3d/data/DataManager;->registerChangeNotifier(Landroid/net/Uri;Lcn/nubia/gallery3d/data/ChangeNotifier;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public fakeChange()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/ChangeNotifier;->onChange(Z)V

    return-void
.end method

.method public isDirty()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 2

    .line 66
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ChangeNotifier;->mMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->notifyContentChanged()V

    :cond_0
    return-void
.end method
