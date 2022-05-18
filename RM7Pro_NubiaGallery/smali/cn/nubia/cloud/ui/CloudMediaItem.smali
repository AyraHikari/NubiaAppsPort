.class public Lcn/nubia/cloud/ui/CloudMediaItem;
.super Lcn/nubia/gallery3d/data/LocalMediaItem;
.source "CloudMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;,
        Lcn/nubia/cloud/ui/CloudMediaItem$CloudLargeImageRequest;,
        Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;
    }
.end annotation


# static fields
.field private static IMAGEID:I = 0x0

.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "CloudImage"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field private cloudFilePath:Ljava/lang/String;

.field private flag:Z

.field protected mListener:Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

.field private mLocalPath:Ljava/lang/String;

.field private mRenameDoneListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

.field private mRenameListener:Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

.field protected rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/nubiacloud/all/cloud/item/"

    .line 80
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/ui/CloudMediaItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    const/4 v0, 0x0

    .line 82
    sput v0, Lcn/nubia/cloud/ui/CloudMediaItem;->IMAGEID:I

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 110
    invoke-static {}, Lcn/nubia/cloud/ui/CloudMediaItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    .line 85
    new-instance p2, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    invoke-direct {p2, p0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V

    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mListener:Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    .line 86
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->bitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 87
    iput-boolean p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->flag:Z

    .line 88
    new-instance p2, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

    invoke-direct {p2, p0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V

    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameListener:Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

    .line 89
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameDoneListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 2

    .line 92
    invoke-static {}, Lcn/nubia/cloud/ui/CloudMediaItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/gallery3d/data/LocalMediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    .line 85
    new-instance p2, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    invoke-direct {p2, p0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V

    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mListener:Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    .line 86
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->bitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 87
    iput-boolean p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->flag:Z

    .line 88
    new-instance p2, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

    invoke-direct {p2, p0, p1}, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V

    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameListener:Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

    .line 89
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameDoneListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 3

    .line 98
    sget-object v0, Lcn/nubia/cloud/ui/CloudMediaItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-static {}, Lcn/nubia/cloud/ui/CloudMediaItem;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcn/nubia/gallery3d/data/LocalMediaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;J)V

    const/4 p2, 0x0

    .line 83
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    .line 85
    new-instance v0, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    invoke-direct {v0, p0, p2}, Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mListener:Lcn/nubia/cloud/ui/CloudMediaItem$MyListener;

    .line 86
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->flag:Z

    .line 88
    new-instance v0, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

    invoke-direct {v0, p0, p2}, Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;Lcn/nubia/cloud/ui/CloudMediaItem$1;)V

    iput-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameListener:Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

    .line 89
    iput-object p2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameDoneListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

    .line 99
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/cloud/ui/CloudMediaItem;Z)Z
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->flag:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/data/Path;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/cloud/ui/CloudMediaItem;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcn/nubia/cloud/ui/CloudMediaItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcn/nubia/cloud/ui/CloudMediaItem;)Lcn/nubia/improve/rename/MediaItemRename$Listener;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameDoneListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

    return-object p0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 0

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 1

    .line 224
    invoke-super {p0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 235
    iget v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 257
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 261
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .line 124
    iget v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->rotation:I

    return v0
.end method

.method public getSourceType()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/32 v0, 0x2802041

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 230
    iget v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->width:I

    return v0
.end method

.method protected idToCursor(I)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isASyncLoadImage()Z
    .locals 3

    .line 286
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 289
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudMediaItem;->isASyncLoadImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mPath:Lcn/nubia/gallery3d/data/Path;

    iget-wide v5, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->dateTakenInMs:J

    iget-object v7, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcn/nubia/cloud/ui/CloudMediaItem;->requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object p1

    return-object p1
.end method

.method public requestImageASync(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;",
            ")",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 296
    new-instance v0, Lcn/nubia/cloud/ui/CloudMediaItem$1;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/cloud/ui/CloudMediaItem$1;-><init>(Lcn/nubia/cloud/ui/CloudMediaItem;ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)V

    return-object v0
.end method

.method public requestLargeImage()Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudMediaItem;->isASyncLoadImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Lcn/nubia/cloud/ui/CloudMediaItem$CloudLargeImageRequest;

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcn/nubia/cloud/ui/CloudMediaItem$CloudLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mLocalPath:Ljava/lang/String;

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->rotation:I

    :cond_0
    return-void
.end method

.method public setReName(Ljava/lang/String;)Z
    .locals 2

    .line 246
    iget-object v0, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameListener:Lcn/nubia/cloud/ui/CloudMediaItem$ImageRenameListener;

    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->setRenameListener(Lcn/nubia/improve/xcloud/CloudManager$RenameListener;)V

    .line 249
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->cloudFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/improve/xcloud/CloudManager;->rename(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setRenameDoneListener(Lcn/nubia/improve/rename/MediaItemRename$Listener;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudMediaItem;->mRenameDoneListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
