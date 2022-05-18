.class public Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;
.super Lcn/nubia/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final SIZE_BACKUP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"


# instance fields
.field private mBitmapScreenNail:Lcn/nubia/gallery3d/ui/BitmapScreenNail;

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mItem:Lcn/nubia/gallery3d/data/MediaItem;

.field private mLargeListener:Lcn/nubia/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

.field private mTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

.field private mThumbListener:Lcn/nubia/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 5

    .line 58
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/TileImageViewAdapter;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 88
    new-instance v1, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 104
    new-instance v1, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 59
    invoke-static {p3}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaItem;

    iput-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 60
    invoke-virtual {p3}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 62
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/PhotoView;

    iput-object p2, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 63
    new-instance p2, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 75
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;Lcn/nubia/gallery3d/util/Future;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcn/nubia/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private onDecodeLargeComplete(Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 3

    .line 123
    :try_start_0
    iget-object v0, p1, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 124
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    .line 123
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 125
    iget-object p1, p1, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 126
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SinglePhotoDataAdapter"

    const-string v1, "fail to decode large"

    .line 128
    invoke-static {v0, v1, p1}, Lcn/nubia/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onDecodeThumbComplete(Lcn/nubia/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 136
    iput p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 141
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 142
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SinglePhotoDataAdapter"

    const-string v1, "fail to decode thumb"

    .line 144
    invoke-static {v0, v1, p1}, Lcn/nubia/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 1

    .line 117
    new-instance v0, Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    .line 118
    invoke-virtual {p0, v0, p2, p3}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Lcn/nubia/gallery3d/ui/ScreenNail;II)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataLoadingState(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getImageRotation(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 190
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getImageSize(ILcn/nubia/gallery3d/ui/PhotoView$Size;)V
    .locals 0

    if-nez p1, :cond_0

    .line 180
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getWidth()I

    move-result p1

    iput p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 181
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getHeight()I

    move-result p1

    iput p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 183
    iput p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->width:I

    .line 184
    iput p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$Size;->height:I

    :goto_0
    return-void
.end method

.method public getLoadingState(I)I
    .locals 0

    .line 273
    iget p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return p1
.end method

.method public getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    if-nez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getScreenNail(I)Lcn/nubia/gallery3d/ui/ScreenNail;
    .locals 0

    if-nez p1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->getScreenNail()Lcn/nubia/gallery3d/ui/ScreenNail;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public isCamera(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDeletable(I)Z
    .locals 4

    .line 243
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGif(I)Z
    .locals 1

    const/4 p1, 0x0

    .line 220
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image/gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isHEIC(I)Z
    .locals 1

    const/4 p1, 0x0

    .line 234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image/heic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isMultiShoot(I)Z
    .locals 1

    .line 229
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPanorama(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isVideo(I)Z
    .locals 1

    .line 215
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public moveTo(I)V
    .locals 0

    .line 174
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public pause()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 163
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 164
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 166
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/BitmapScreenNail;->recycle()V

    .line 168
    iput-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcn/nubia/gallery3d/ui/BitmapScreenNail;

    if-nez v0, :cond_2

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 152
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaItem;->requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 151
    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcn/nubia/gallery3d/util/Future;

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcn/nubia/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcn/nubia/gallery3d/util/FutureListener;

    .line 154
    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcn/nubia/gallery3d/util/Future;

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentPhoto(Lcn/nubia/gallery3d/data/Path;I)V
    .locals 0

    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0

    return-void
.end method

.method public setFocusHintPath(Lcn/nubia/gallery3d/data/Path;)V
    .locals 0

    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0

    return-void
.end method

.method public setOrientation(Z)V
    .locals 0

    return-void
.end method
