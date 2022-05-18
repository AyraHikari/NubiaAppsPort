.class Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyLoadedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mResId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mResId:I

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 257
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumLabelMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
