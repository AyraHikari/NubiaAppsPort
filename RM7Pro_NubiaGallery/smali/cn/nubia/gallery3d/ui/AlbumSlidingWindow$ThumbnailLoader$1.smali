.class Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader$1;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->submitBitmapTask(Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader$1;->this$1:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadCompleted(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader$1;->this$1:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 376
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader$1;->this$1:Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;->onLoadComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method
