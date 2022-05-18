.class Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;
.super Ljava/lang/Object;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->submitBitmapTask(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->this$1:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadCompleted(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->this$1:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;->this$1:Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->onLoadComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method
