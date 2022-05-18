.class public Lcn/nubia/gallery3d/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# static fields
.field public static final CACHE_TYPE_FACE_THUMBNAIL:I = 0x9

.field public static final CACHE_TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final CACHE_TYPE_PANORAMA:I = 0x4

.field public static final CACHE_TYPE_THUMBNAIL:I = 0x1

.field public static final CACHE_TYPE_VIDEO_MICROTHUMBNAIL:I = 0x6

.field public static final CACHE_TYPE_VIDEO_THUMBNAIL:I = 0x5

.field private static final CLOUD_CACHE_FILE:Ljava/lang/String; = "cloudcache"

.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0x19000000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x2ee0

.field private static final IMAGE_CACHE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ImageCacheService"

.field private static final THUMBNAIL_IMAGE_CACHE_FILE:Ljava/lang/String; = "thumbimgcache"


# instance fields
.field private mCache:Lcn/nubia/gallery3d/common/BlobCache;

.field private mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

.field private mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imgcache"

    const/16 v1, 0x2ee0

    const/high16 v2, 0x19000000

    const/4 v3, 0x5

    .line 53
    invoke-static {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcn/nubia/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    const-string v0, "cloudcache"

    .line 56
    invoke-static {p1, v0, v1, v2, v3}, Lcn/nubia/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcn/nubia/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    const-string v0, "thumbimgcache"

    .line 59
    invoke-static {p1, v0, v1, v2, v2}, Lcn/nubia/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcn/nubia/gallery3d/common/BlobCache;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5

    .line 166
    array-length v0, p0

    .line 167
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 171
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static makeKey(Lcn/nubia/gallery3d/data/Path;I)[B
    .locals 1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static makeKey(Ljava/lang/String;IJ)[B
    .locals 1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearImageData(Ljava/lang/String;JI)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {p1, p4, p2, p3}, Lcn/nubia/gallery3d/data/ImageCacheService;->makeKey(Ljava/lang/String;IJ)[B

    move-result-object p1

    .line 147
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide p1

    .line 148
    iget-object p3, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    monitor-enter p3

    .line 150
    :try_start_0
    iget-object p4, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {p4, p1, p2}, Lcn/nubia/gallery3d/common/BlobCache;->clearEntry(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 154
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/BlobCache;->syncIndex()V

    .line 231
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/BlobCache;->closeAll()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/BlobCache;->syncIndex()V

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/BlobCache;->closeAll()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/BlobCache;->syncIndex()V

    .line 239
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/common/BlobCache;->closeAll()V

    :cond_2
    return-void
.end method

.method public getImageData(Lcn/nubia/gallery3d/data/Path;ILcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 3

    .line 183
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/ImageCacheService;->makeKey(Lcn/nubia/gallery3d/data/Path;I)[B

    move-result-object p1

    .line 184
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    const/4 p2, 0x0

    .line 186
    :try_start_0
    new-instance v2, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v2}, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    .line 187
    iput-wide v0, v2, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 188
    iget-object v0, p3, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v0, v2, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 189
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    const-string p1, "ImageCacheService"

    const-string p3, "The cache is null"

    .line 190
    invoke-static {p1, p3}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 193
    :cond_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :try_start_1
    iget-object v1, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/common/BlobCache;->lookup(Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return p2

    .line 195
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    iget-object v0, v2, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, v2, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v0, p3, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 198
    array-length p1, p1

    iput p1, p3, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 199
    iget p1, v2, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget v0, p3, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr p1, v0

    iput p1, p3, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 195
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    return p2
.end method

.method public getImageData(Ljava/lang/String;IJLcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 3

    .line 74
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/ImageCacheService;->makeKey(Ljava/lang/String;IJ)[B

    move-result-object p1

    .line 75
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide p3

    .line 76
    new-instance v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    :try_start_0
    iput-wide p3, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 79
    iget-object p3, p5, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object p3, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    const/4 p3, 0x2

    const/4 p4, 0x1

    if-eq p2, p3, :cond_4

    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    const/4 p3, 0x6

    if-eq p2, p3, :cond_4

    const/16 p3, 0x9

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, p4, :cond_1

    const/4 p3, 0x5

    if-ne p2, p3, :cond_7

    .line 90
    :cond_1
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez p2, :cond_2

    const-string p1, "ImageCacheService"

    const-string p2, "The cache is null"

    .line 91
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 107
    iput-object v2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    return v1

    .line 94
    :cond_2
    :try_start_1
    monitor-enter p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 95
    :try_start_2
    iget-object p3, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {p3, v0}, Lcn/nubia/gallery3d/common/BlobCache;->lookup(Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result p3

    if-nez p3, :cond_3

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    iput-object v2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    return v1

    .line 96
    :cond_3
    :try_start_3
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 82
    :cond_4
    :goto_0
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez p2, :cond_5

    const-string p1, "ImageCacheService"

    const-string p2, "The cache is null"

    .line 83
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 107
    iput-object v2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    return v1

    .line 86
    :cond_5
    :try_start_5
    monitor-enter p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 87
    :try_start_6
    iget-object p3, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {p3, v0}, Lcn/nubia/gallery3d/common/BlobCache;->lookup(Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result p3

    if-nez p3, :cond_6

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 107
    iput-object v2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    return v1

    .line 88
    :cond_6
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 98
    :cond_7
    :goto_1
    :try_start_8
    iget-object p2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/ImageCacheService;->isSameKey([B[B)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 99
    iget-object p2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iput-object p2, p5, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 100
    array-length p1, p1

    iput p1, p5, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 101
    iget p1, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->length:I

    iget p2, p5, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr p1, p2

    iput p1, p5, Lcn/nubia/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 107
    iput-object v2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    return p4

    :catchall_1
    move-exception p1

    .line 88
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    .line 107
    iput-object v2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 109
    throw p1

    .line 107
    :catch_0
    :cond_8
    iput-object v2, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    return v1
.end method

.method public isCacheExist()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public putImageData(Lcn/nubia/gallery3d/data/Path;I[B)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/data/ImageCacheService;->makeKey(Lcn/nubia/gallery3d/data/Path;I)[B

    move-result-object p1

    .line 215
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 216
    array-length p2, p1

    array-length v2, p3

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 217
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 219
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    monitor-enter p1

    .line 221
    :try_start_0
    iget-object p3, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCloudCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p3, v0, v1, p2}, Lcn/nubia/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 225
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public putImageData(Ljava/lang/String;IJ[B)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    if-nez v0, :cond_0

    goto :goto_6

    .line 117
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/ImageCacheService;->makeKey(Ljava/lang/String;IJ)[B

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->crc64Long([B)J

    move-result-wide p3

    .line 119
    array-length v0, p1

    array-length v1, p5

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    const/4 p1, 0x6

    if-eq p2, p1, :cond_3

    const/16 p1, 0x9

    if-ne p2, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-ne p2, p1, :cond_4

    .line 132
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    monitor-enter p1

    .line 134
    :try_start_0
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mThumbCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p5

    invoke-virtual {p2, p3, p4, p5}, Lcn/nubia/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 138
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1

    goto :goto_4

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 124
    :cond_3
    :goto_2
    iget-object p1, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    monitor-enter p1

    .line 126
    :try_start_2
    iget-object p2, p0, Lcn/nubia/gallery3d/data/ImageCacheService;->mCache:Lcn/nubia/gallery3d/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p5

    invoke-virtual {p2, p3, p4, p5}, Lcn/nubia/gallery3d/common/BlobCache;->insert(J[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    goto :goto_5

    .line 130
    :catch_1
    :goto_3
    :try_start_3
    monitor-exit p1

    :cond_4
    :goto_4
    return-void

    :goto_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :cond_5
    :goto_6
    return-void
.end method
