.class Lcn/nubia/gallery3d/data/UriImage$SaveImage;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/gallery3d/data/UriImage;


# direct methods
.method protected constructor <init>(Lcn/nubia/gallery3d/data/UriImage;Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcn/nubia/gallery3d/data/UriImage$SaveImage;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p2, p0, Lcn/nubia/gallery3d/data/UriImage$SaveImage;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 6

    .line 371
    iget-object v0, p0, Lcn/nubia/gallery3d/data/UriImage$SaveImage;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/data/UriImage;->access$500(Lcn/nubia/gallery3d/data/UriImage;Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    .line 372
    invoke-static {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    .line 373
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 374
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    iget-object v4, p0, Lcn/nubia/gallery3d/data/UriImage$SaveImage;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    .line 381
    invoke-static {v4}, Lcn/nubia/gallery3d/data/UriImage;->access$700(Lcn/nubia/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 380
    invoke-static {p1, v4, v3, v2, v0}, Lcn/nubia/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 383
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_4

    .line 390
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/UriImage$SaveImage;->mFilePath:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :try_start_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 398
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 400
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v2

    .line 394
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 398
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 404
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/data/UriImage$SaveImage;->this$0:Lcn/nubia/gallery3d/data/UriImage;

    invoke-static {v1, p1}, Lcn/nubia/gallery3d/data/UriImage;->access$800(Lcn/nubia/gallery3d/data/UriImage;Ljava/io/File;)Landroid/net/Uri;

    return-object v0

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 398
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 400
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 403
    :cond_3
    :goto_3
    throw p1

    :cond_4
    :goto_4
    return-object v1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/UriImage$SaveImage;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
