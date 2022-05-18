.class Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;
.super Lcn/nubia/gallery3d/data/ImageCacheRequest;
.source "FaceCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/FaceCoverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceImageRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/data/FaceCoverItem;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/FaceCoverItem;Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;Ljava/lang/String;I)V
    .locals 8

    .line 47
    iput-object p1, p0, Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;->this$0:Lcn/nubia/gallery3d/data/FaceCoverItem;

    .line 48
    invoke-static {p5}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcn/nubia/gallery3d/data/ImageCacheRequest;-><init>(Lcn/nubia/gallery3d/app/GalleryApp;Lcn/nubia/gallery3d/data/Path;IJLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v1, p0

    .line 53
    iget-object v0, v1, Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800a7

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 56
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 57
    invoke-static/range {p2 .. p2}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    .line 59
    iget-object v2, v1, Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;->mPath:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "merge_id"

    .line 63
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_data"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v1, Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 69
    iget-object v2, v1, Lcn/nubia/gallery3d/data/FaceCoverItem$FaceImageRequest;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 70
    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v9

    const-string v13, "_data"

    const-string v14, "face_x"

    const-string v15, "face_y"

    const-string v16, "face_width"

    const-string v17, "face_height"

    const-string v18, "quality"

    filled-new-array/range {v13 .. v18}, [Ljava/lang/String;

    move-result-object v11

    .line 75
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v16

    const/4 v10, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v17, "0,1"

    .line 71
    invoke-virtual/range {v9 .. v17}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "FaceCoverItem"

    const-string v3, "query facetable failed"

    .line 77
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    move-object v7, v3

    .line 83
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "face_x"

    .line 85
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v7, "face_y"

    .line 86
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "face_width"

    .line 87
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "face_height"

    .line 88
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "quality"

    .line 89
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 90
    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v8, v0

    add-int/2addr v9, v7

    invoke-direct {v10, v0, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v10

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object/from16 v2, p1

    move/from16 v6, p2

    .line 96
    invoke-static/range {v2 .. v7}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 93
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 94
    throw v0
.end method
