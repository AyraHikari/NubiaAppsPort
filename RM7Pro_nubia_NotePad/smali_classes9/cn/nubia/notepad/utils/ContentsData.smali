.class public Lcn/nubia/notepad/utils/ContentsData;
.super Ljava/lang/Object;
.source "ContentsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    }
.end annotation


# static fields
.field public static final CHECKLIST_CHECKED:Ljava/lang/String; = "1"

.field public static final CHECKLIST_NULL:Ljava/lang/String; = "2"

.field public static final CHECKLIST_UNCHECKED:Ljava/lang/String; = "0"

.field private static final CONTENT_DATA_TEMP_FILE_NAME:Ljava/lang/String; = "temp.xml"

.field public static final CONTENT_DATA_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final CONTENT_DATA_TYPE_RECORD:Ljava/lang/String; = "record"

.field public static final CONTENT_DATA_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final MODE_NUMBER:Ljava/lang/String; = "8"

.field public static final MODE_SHORT_LINE:Ljava/lang/String; = "9"

.field public static final MODE_TITLE:Ljava/lang/String; = "10"

.field public static final MODE_TITLE_CHECKED:Ljava/lang/String; = "11"

.field public static final MODE_TITLE_NUMBER:Ljava/lang/String; = "13"

.field public static final MODE_TITLE_SHORT_LINE:Ljava/lang/String; = "12"

.field public static final TITLE_BREAK_CONTENT_STRING:Ljava/lang/String; = "@#&%!%&#@"

.field public static final TITLE_BREAK_REAL_STRING:Ljava/lang/String; = "@#&%-%&#@"

.field public static final TITLE_CHECKED_BREAK:Ljava/lang/String; = "5"


# instance fields
.field private mAppDataDir:Ljava/io/File;

.field private mAppFilesDir:Ljava/io/File;

.field public mAppFilesImageDir:Ljava/io/File;

.field public mAppFilesRecordDir:Ljava/io/File;

.field public mAppFilesUserDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcn/nubia/notepad/utils/ContentsData;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mPackageName:Ljava/lang/String;

    .line 68
    const-string v0, "user-0"

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->userId:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/utils/ContentsData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppDataDir:Ljava/io/File;

    .line 73
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/notepad/utils/ContentsData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesDir:Ljava/io/File;

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesDir:Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/notepad/utils/ContentsData;->userId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    const-string v2, "image"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    const-string v2, "record"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    .line 78
    invoke-virtual {p0}, Lcn/nubia/notepad/utils/ContentsData;->createFilesDir()V

    .line 79
    return-void
.end method

.method private renameFile(Ljava/io/File;J)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "date"    # J

    .prologue
    .line 324
    const-string v2, ""

    .line 325
    .local v2, "fileNameNew":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "fileParent":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "fileSuffix":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcn/nubia/notepad/utils/ContentsData;->getFileHashName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "fileHashName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 330
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v4, "filePathNew":Ljava/io/File;
    invoke-virtual {p1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 332
    return-object v2
.end method

.method private resizeBitmapByScale(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 337
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 338
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 339
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p2

    int-to-float v2, v3

    int-to-float v6, v4

    invoke-virtual {v5, v0, v2, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 340
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bufferToHex([B)Ljava/lang/String;
    .locals 7
    .param p1, "buffer"    # [B

    .prologue
    .line 300
    const/16 v6, 0x10

    new-array v2, v6, [C

    fill-array-data v2, :array_0

    .line 305
    .local v2, "hexChars":[C
    if-eqz p1, :cond_2

    .line 306
    array-length v5, p1

    .line 307
    .local v5, "length":I
    if-lez v5, :cond_1

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v5, 0x2

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    .local v1, "hex":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 310
    aget-byte v6, p1, v3

    and-int/lit8 v6, v6, 0xf

    int-to-byte v4, v6

    .line 311
    .local v4, "l":B
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v0, v6

    .line 312
    .local v0, "h":B
    aget-char v6, v2, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    aget-char v6, v2, v4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "h":B
    .end local v4    # "l":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 320
    .end local v1    # "hex":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v5    # "length":I
    :goto_1
    return-object v6

    .line 317
    .restart local v5    # "length":I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 320
    .end local v5    # "length":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 300
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public createFilesDir()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 90
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 94
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 98
    :cond_3
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 101
    :cond_4
    return-void
.end method

.method public createImageData(Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 233
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMddHHmmss"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, "format":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "formatDate":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "fileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "filePath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 239
    .local v2, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v2    # "fileOutput":Ljava/io/FileOutputStream;
    .local v3, "fileOutput":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Lcn/nubia/notepad/utils/Util;->getOrientation(Ljava/lang/String;)I

    move-result v8

    rem-int/lit16 v8, v8, 0xb4

    if-eqz v8, :cond_2

    .line 241
    invoke-static {p1}, Lcn/nubia/notepad/utils/Util;->getOrientation(Ljava/lang/String;)I

    move-result v8

    invoke-direct {p0, p2, v8}, Lcn/nubia/notepad/utils/ContentsData;->resizeBitmapByScale(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 242
    .local v7, "target":Landroid/graphics/Bitmap;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x46

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .end local v7    # "target":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v3, :cond_0

    .line 253
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    move-object v2, v3

    .line 260
    .end local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutput":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-object v1

    .line 244
    .end local v2    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutput":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x46

    invoke-virtual {p2, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 247
    .end local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileOutput":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    if-eqz v2, :cond_1

    .line 253
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 255
    :catch_1
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 256
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 258
    .end local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 252
    if-eqz v2, :cond_1

    .line 253
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 255
    :catch_4
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 252
    :goto_4
    if-eqz v2, :cond_3

    .line 253
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 258
    :cond_3
    :goto_5
    throw v8

    .line 255
    :catch_5
    move-exception v0

    .line 256
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 251
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 248
    .end local v2    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutput":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutput":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 246
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public deleteResourceFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v1, "Notepad"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteResourceFiles fileName:="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileType:="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    .line 219
    .local v0, "file":Ljava/io/File;
    const-string v1, "text"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v1, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 221
    :cond_3
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v1, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1

    .line 223
    :cond_4
    const-string v1, "record"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    iget-object v1, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v0    # "file":Ljava/io/File;
    goto :goto_1
.end method

.method public getAppFilesImageDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    return-object v0
.end method

.method public getContentsData(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const/4 v6, 0x0

    .line 157
    .local v6, "fstr":Ljava/io/FileInputStream;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 158
    .local v2, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 160
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    invoke-direct {v5, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v5, "file":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .local v7, "fstr":Ljava/io/FileInputStream;
    :try_start_1
    const-string v10, "UTF-8"

    invoke-interface {v8, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 165
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .local v4, "eventType":I
    move-object v1, v0

    .line 166
    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .local v1, "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    :goto_0
    const/4 v10, 0x1

    if-eq v4, v10, :cond_2

    .line 167
    packed-switch v4, :pswitch_data_0

    :cond_0
    move-object v0, v1

    .line 191
    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    move-object v1, v0

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    goto :goto_0

    .line 169
    :pswitch_0
    :try_start_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 171
    new-instance v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    invoke-direct {v0}, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 175
    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const/4 v10, 0x0

    :try_start_3
    const-string v11, "type"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    .line 177
    const/4 v10, 0x0

    const-string v11, "checked"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 179
    const/4 v10, 0x0

    const-string v11, "content"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 193
    .end local v4    # "eventType":I
    .end local v9    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 194
    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    if-eqz v6, :cond_1

    .line 200
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 201
    const/4 v6, 0x0

    .line 208
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_3
    return-object v2

    .line 185
    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v4    # "eventType":I
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :pswitch_1
    :try_start_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "item"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 186
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 187
    const/4 v0, 0x0

    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    goto :goto_1

    .line 198
    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    :cond_2
    if-eqz v7, :cond_4

    .line 200
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 201
    const/4 v6, 0x0

    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    move-object v0, v1

    .line 204
    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    goto :goto_3

    .line 202
    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 203
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    move-object v6, v7

    .line 204
    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    goto :goto_3

    .line 202
    .end local v4    # "eventType":I
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v3

    .line 203
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 195
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 196
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 198
    if-eqz v6, :cond_1

    .line 200
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 201
    const/4 v6, 0x0

    goto :goto_3

    .line 202
    :catch_4
    move-exception v3

    .line 203
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 198
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v6, :cond_3

    .line 200
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 201
    const/4 v6, 0x0

    .line 206
    :cond_3
    :goto_6
    throw v10

    .line 202
    :catch_5
    move-exception v3

    .line 203
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 198
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v4    # "eventType":I
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    goto :goto_5

    .line 195
    .end local v4    # "eventType":I
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v4    # "eventType":I
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    goto :goto_4

    .line 193
    .end local v4    # "eventType":I
    :catch_8
    move-exception v3

    goto :goto_2

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v4    # "eventType":I
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v0, v1

    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v6    # "fstr":Ljava/io/FileInputStream;
    .restart local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v7    # "fstr":Ljava/io/FileInputStream;
    :cond_4
    move-object v0, v1

    .end local v1    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .restart local v0    # "contentData":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    move-object v6, v7

    .end local v7    # "fstr":Ljava/io/FileInputStream;
    .restart local v6    # "fstr":Ljava/io/FileInputStream;
    goto :goto_3

    .line 167
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFileHashName(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 267
    .local v4, "fileHashName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 269
    .local v1, "byteOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 270
    .local v2, "bytes":[B
    const/4 v7, 0x0

    .line 272
    .local v7, "len":I
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-ltz v7, :cond_1

    .line 273
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 280
    .end local v1    # "byteOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 281
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    if-eqz v5, :cond_0

    .line 289
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 296
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-object v4

    .line 276
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "byteOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bytes":[B
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    :cond_1
    :try_start_4
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 277
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 276
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 278
    .local v0, "buffer":[B
    invoke-virtual {p0, v0}, Lcn/nubia/notepad/utils/ContentsData;->bufferToHex([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    .line 287
    if-eqz v6, :cond_3

    .line 289
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v5, v6

    .line 292
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 290
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 292
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 290
    .end local v0    # "buffer":[B
    .end local v1    # "byteOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "bytes":[B
    .end local v7    # "len":I
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 282
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 283
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 287
    if-eqz v5, :cond_0

    .line 289
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 290
    :catch_4
    move-exception v3

    .line 291
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 284
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 285
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 287
    if-eqz v5, :cond_0

    .line 289
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 290
    :catch_6
    move-exception v3

    .line 291
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v5, :cond_2

    .line 289
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 294
    :cond_2
    :goto_6
    throw v8

    .line 290
    :catch_7
    move-exception v3

    .line 291
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 287
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 284
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 282
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 280
    :catch_a
    move-exception v3

    goto :goto_1

    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bytes":[B
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "len":I
    :cond_3
    move-object v5, v6

    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public setContentsData(Ljava/util/LinkedList;J)Ljava/lang/String;
    .locals 10
    .param p2, "date"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "contentsData":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    const-string v8, "temp.xml"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v1, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 111
    .local v5, "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    const/4 v2, 0x0

    .line 114
    .local v2, "fstr":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .local v3, "fstr":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Lcn/nubia/notepad/io/KXmlSerializer;

    invoke-direct {v6}, Lcn/nubia/notepad/io/KXmlSerializer;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .local v6, "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :try_start_2
    const-string v7, "utf-8"

    invoke-virtual {v6, v3, v7}, Lcn/nubia/notepad/io/KXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 117
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcn/nubia/notepad/io/KXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcn/nubia/notepad/io/KXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 121
    const/4 v7, 0x0

    const-string v8, "nubia-note"

    invoke-virtual {v6, v7, v8}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 123
    const/4 v7, 0x0

    const-string v8, "item"

    invoke-virtual {v6, v7, v8}, Lcn/nubia/notepad/io/KXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const/4 v8, 0x0

    const-string v9, "type"

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v7, v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v7}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v7, v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 127
    const/4 v8, 0x0

    const-string v9, "checked"

    .line 128
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v7, v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->checked:Ljava/lang/String;

    .line 127
    invoke-virtual {v6, v8, v9, v7}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    :cond_0
    const/4 v8, 0x0

    const-string v9, "content"

    .line 131
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    iget-object v7, v7, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    .line 130
    invoke-virtual {v6, v8, v9, v7}, Lcn/nubia/notepad/io/KXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const/4 v7, 0x0

    const-string v8, "item"

    invoke-virtual {v6, v7, v8}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/4 v7, 0x0

    const-string v8, "nubia-note"

    invoke-virtual {v6, v7, v8}, Lcn/nubia/notepad/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-virtual {v6}, Lcn/nubia/notepad/io/KXmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    const/4 v5, 0x0

    .line 143
    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    if-eqz v3, :cond_4

    .line 144
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 145
    const/4 v2, 0x0

    .line 152
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lcn/nubia/notepad/utils/ContentsData;->renameFile(Ljava/io/File;J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 147
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 150
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    const/4 v5, 0x0

    .line 143
    if-eqz v2, :cond_2

    .line 144
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 145
    const/4 v2, 0x0

    goto :goto_1

    .line 147
    :catch_2
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 141
    const/4 v5, 0x0

    .line 143
    if-eqz v2, :cond_2

    .line 144
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 145
    const/4 v2, 0x0

    goto :goto_1

    .line 147
    :catch_4
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    const/4 v5, 0x0

    .line 143
    if-eqz v2, :cond_3

    .line 144
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 145
    const/4 v2, 0x0

    .line 150
    :cond_3
    :goto_5
    throw v7

    .line 147
    :catch_5
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_4

    .line 138
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_3

    .line 136
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    .restart local v5    # "serializer":Lcn/nubia/notepad/io/KXmlSerializer;
    goto :goto_2

    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    :cond_4
    move-object v2, v3

    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
