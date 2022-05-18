.class public abstract Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;
.super Ljava/lang/Object;
.source "BaseDiskCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiskCache;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000

.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final ERROR_ARG_NULL:Ljava/lang/String; = " argument must be not null"

.field private static final TEMP_IMAGE_POSTFIX:Ljava/lang/String; = ".tmp"


# instance fields
.field protected bufferSize:I

.field protected final cacheDir:Ljava/io/File;

.field protected compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field protected compressQuality:I

.field protected final fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field protected final reserveCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;

    .prologue
    .line 71
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "reserveCacheDir"    # Ljava/io/File;
    .param p3, "fileNameGenerator"    # Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x8000

    iput v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->bufferSize:I

    .line 57
    sget-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->compressQuality:I

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    if-nez p3, :cond_1

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->cacheDir:Ljava/io/File;

    .line 90
    iput-object p2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->reserveCacheDir:Ljava/io/File;

    .line 91
    iput-object p3, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 92
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 162
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 163
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 164
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method protected getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->fileNameGenerator:Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v2, p1}, Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "fileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->cacheDir:Ljava/io/File;

    .line 176
    .local v0, "dir":Ljava/io/File;
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->reserveCacheDir:Ljava/io/File;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->reserveCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->reserveCacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->reserveCacheDir:Ljava/io/File;

    .line 181
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, "imageFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v3, "tmpFile":Ljava/io/File;
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->bufferSize:I

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 133
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 135
    .local v2, "savedSuccessfully":Z
    :try_start_0
    iget-object v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->compressQuality:I

    invoke-virtual {p2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 137
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    if-eqz v2, :cond_0

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    const/4 v2, 0x0

    .line 141
    :cond_0
    if-nez v2, :cond_1

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 145
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    return v2

    .line 137
    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 138
    if-eqz v2, :cond_2

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    const/4 v2, 0x0

    .line 141
    :cond_2
    if-nez v2, :cond_3

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 144
    :cond_3
    throw v4
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "imageStream"    # Ljava/io/InputStream;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, "imageFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "tmpFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 111
    .local v1, "loaded":Z
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v5, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->bufferSize:I

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    iget v4, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->bufferSize:I

    invoke-static {p2, v2, p3, v4}, Lcom/nostra13/universalimageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 115
    :try_start_2
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    if-eqz v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 121
    :cond_0
    if-nez v1, :cond_1

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 125
    :cond_1
    return v1

    .line 115
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v2}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    .line 116
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    .end local v2    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 119
    const/4 v1, 0x0

    .line 121
    :cond_2
    if-nez v1, :cond_3

    .line 122
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 124
    :cond_3
    throw v4
.end method

.method public setBufferSize(I)V
    .locals 0
    .param p1, "bufferSize"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->bufferSize:I

    .line 186
    return-void
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 190
    return-void
.end method

.method public setCompressQuality(I)V
    .locals 0
    .param p1, "compressQuality"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/BaseDiskCache;->compressQuality:I

    .line 194
    return-void
.end method
