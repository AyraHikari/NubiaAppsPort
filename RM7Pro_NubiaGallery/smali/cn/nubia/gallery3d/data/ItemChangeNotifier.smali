.class public Lcn/nubia/gallery3d/data/ItemChangeNotifier;
.super Lcn/nubia/gallery3d/data/ChangeNotifier;
.source "ItemChangeNotifier.java"


# instance fields
.field mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/MediaItem;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, p2, p3}, Lcn/nubia/gallery3d/data/ChangeNotifier;-><init>(Lcn/nubia/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcn/nubia/gallery3d/app/GalleryApp;)V

    .line 13
    iput-object p1, p0, Lcn/nubia/gallery3d/data/ItemChangeNotifier;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 14
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ItemChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method protected onChange(Z)V
    .locals 2

    .line 19
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ItemChangeNotifier;->mContentDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ItemChangeNotifier;->mMediaItem:Lcn/nubia/gallery3d/data/MediaItem;

    instance-of v0, p1, Lcn/nubia/gallery3d/data/MultiShootItem;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lcn/nubia/gallery3d/data/MultiShootItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MultiShootItem;->updateData()V

    :cond_0
    return-void
.end method
