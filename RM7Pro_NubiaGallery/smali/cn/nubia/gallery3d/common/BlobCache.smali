.class public Lcn/nubia/gallery3d/common/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final BH_CHECKSUM:I = 0x8

.field private static final BH_KEY:I = 0x0

.field private static final BH_LENGTH:I = 0x10

.field private static final BH_OFFSET:I = 0xc

.field private static final BLOB_HEADER_SIZE:I = 0x14

.field private static final DATA_HEADER_SIZE:I = 0x4

.field private static final IH_ACTIVE_BYTES:I = 0x14

.field private static final IH_ACTIVE_ENTRIES:I = 0x10

.field private static final IH_ACTIVE_REGION:I = 0xc

.field private static final IH_CHECKSUM:I = 0x1c

.field private static final IH_MAGIC:I = 0x0

.field private static final IH_MAX_BYTES:I = 0x8

.field private static final IH_MAX_ENTRIES:I = 0x4

.field private static final IH_VERSION:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_DATA_FILE:I = -0x42db7af0

.field private static final MAGIC_INDEX_FILE:I = -0x4cd8cfd0

.field private static final TAG:Ljava/lang/String; = "BlobCache"


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 135
    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/common/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 123
    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 124
    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mBlobHeader:[B

    .line 125
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 422
    new-instance v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mLookupRequest:Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    .line 140
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 141
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 142
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".1"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 143
    iput p5, p0, Lcn/nubia/gallery3d/common/BlobCache;->mVersion:I

    if-nez p4, :cond_0

    .line 145
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->loadIndex()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-direct {p0, p2, p3}, Lcn/nubia/gallery3d/common/BlobCache;->resetCache(II)V

    .line 151
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->loadIndex()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/BlobCache;->closeAll()V

    .line 153
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unable to load index"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearHash(I)V
    .locals 5

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 353
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    iget p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 p1, p1, 0xc

    :goto_0
    if-lez p1, :cond_0

    .line 355
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 356
    iget-object v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 635
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1

    .line 167
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/common/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveRegion:I

    const/4 v1, 0x0

    .line 329
    iput v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    const/4 v1, 0x4

    .line 330
    iput v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    .line 332
    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v2, 0xc

    invoke-static {v1, v2, v0}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 333
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 334
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 335
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->updateIndexHeader()V

    .line 337
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->setActiveVariables()V

    .line 338
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/common/BlobCache;->clearHash(I)V

    .line 339
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/BlobCache;->syncIndex()V

    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BlobCache"

    .line 491
    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mBlobHeader:[B

    .line 492
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v4, p2

    const/4 v6, 0x0

    .line 494
    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 495
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_0

    const-string p2, "cannot read blob header"

    .line 496
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 499
    :cond_0
    :try_start_1
    invoke-static {v1, v6}, Lcn/nubia/gallery3d/common/BlobCache;->readLong([BI)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_1

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 503
    :cond_1
    :try_start_2
    iget-wide v9, p3, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->key:J

    cmp-long v4, v7, v9

    if-eqz v4, :cond_2

    .line 504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "blob key does not match: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_2
    const/16 v4, 0x8

    .line 507
    :try_start_3
    invoke-static {v1, v4}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v4

    const/16 v7, 0xc

    .line 508
    invoke-static {v1, v7}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v7

    if-eq v7, p2, :cond_3

    .line 510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "blob offset does not match: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_3
    const/16 v7, 0x10

    .line 513
    :try_start_4
    invoke-static {v1, v7}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v1

    if-ltz v1, :cond_9

    .line 514
    iget v7, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxBytes:I

    sub-int/2addr v7, p2

    sub-int/2addr v7, v5

    if-le v1, v7, :cond_4

    goto :goto_0

    .line 518
    :cond_4
    iget-object p2, p3, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    if-eqz p2, :cond_5

    iget-object p2, p3, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    array-length p2, p2

    if-ge p2, v1, :cond_6

    .line 519
    :cond_5
    new-array p2, v1, [B

    iput-object p2, p3, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 522
    :cond_6
    iget-object p2, p3, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 523
    iput v1, p3, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->length:I

    .line 525
    invoke-virtual {p1, p2, v6, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_7

    const-string p2, "cannot read blob data"

    .line 526
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 529
    :cond_7
    :try_start_5
    invoke-virtual {p0, p2, v6, v1}, Lcn/nubia/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result p2

    if-eq p2, v4, :cond_8

    .line 530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "blob checksum does not match: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_8
    const/4 p2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return p2

    .line 515
    :cond_9
    :goto_0
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid blob length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :catchall_0
    move-exception p2

    :try_start_7
    const-string p3, "getBlob failed."

    .line 535
    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 538
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :catchall_1
    move-exception p2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    throw p2
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mBlobHeader:[B

    .line 400
    invoke-virtual {p0, p3}, Lcn/nubia/gallery3d/common/BlobCache;->checkSum([B)I

    move-result v1

    const/4 v2, 0x0

    .line 401
    invoke-static {v0, v2, p1, p2}, Lcn/nubia/gallery3d/common/BlobCache;->writeLong([BIJ)V

    const/16 v3, 0x8

    .line 402
    invoke-static {v0, v3, v1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 403
    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    const/16 v4, 0xc

    invoke-static {v0, v4, v1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 v1, 0x10

    .line 404
    invoke-static {v0, v1, p4}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 405
    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 406
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, v2, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 408
    iget-object p3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mSlotOffset:I

    invoke-virtual {p3, v0, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 409
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget p2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mSlotOffset:I

    add-int/2addr p2, v3

    iget p3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    invoke-virtual {p1, p2, p3}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 410
    iget p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    const/16 p2, 0x14

    add-int/2addr p4, p2

    add-int/2addr p1, p4

    iput p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    .line 411
    iget-object p3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    invoke-static {p3, p2, p1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    return-void
.end method

.method private loadIndex()Z
    .locals 15

    const-string v0, "BlobCache"

    const/4 v1, 0x0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 194
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    .line 197
    iget-object v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const-string v2, "cannot read header"

    .line 198
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 202
    :cond_0
    invoke-static {v2, v1}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v3

    const v5, -0x4cd8cfd0

    if-eq v3, v5, :cond_1

    const-string v2, "cannot read header magic"

    .line 203
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/16 v3, 0x18

    .line 207
    invoke-static {v2, v3}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v3

    iget v5, p0, Lcn/nubia/gallery3d/common/BlobCache;->mVersion:I

    if-eq v3, v5, :cond_2

    const-string v2, "version mismatch"

    .line 208
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v3, 0x4

    .line 212
    invoke-static {v2, v3}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v5

    iput v5, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    const/16 v5, 0x8

    .line 213
    invoke-static {v2, v5}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v5

    iput v5, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxBytes:I

    const/16 v5, 0xc

    .line 214
    invoke-static {v2, v5}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v6

    iput v6, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveRegion:I

    const/16 v6, 0x10

    .line 215
    invoke-static {v2, v6}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v6

    iput v6, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    const/16 v6, 0x14

    .line 216
    invoke-static {v2, v6}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v6

    iput v6, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    const/16 v6, 0x1c

    .line 218
    invoke-static {v2, v6}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v7

    .line 219
    invoke-virtual {p0, v2, v1, v6}, Lcn/nubia/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v2

    if-eq v2, v7, :cond_3

    const-string v2, "header checksum does not match"

    .line 220
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 225
    :cond_3
    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    if-gtz v2, :cond_4

    const-string v2, "invalid max entries"

    .line 226
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 229
    :cond_4
    iget v6, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gtz v6, :cond_5

    const-string v2, "invalid max bytes"

    .line 230
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 233
    :cond_5
    iget v7, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveRegion:I

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    if-eq v7, v8, :cond_6

    const-string v2, "invalid active region"

    .line 234
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 237
    :cond_6
    iget v7, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    if-ltz v7, :cond_f

    if-le v7, v2, :cond_7

    goto/16 :goto_1

    .line 241
    :cond_7
    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    if-lt v2, v3, :cond_e

    if-le v2, v6, :cond_8

    goto :goto_0

    .line 245
    :cond_8
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    const-string v2, "invalid index file length"

    .line 247
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    new-array v2, v3, [B

    .line 253
    iget-object v4, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "cannot read data file magic"

    if-eq v4, v3, :cond_a

    .line 254
    :try_start_1
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 257
    :cond_a
    invoke-static {v2, v1}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "invalid data file magic"

    const v7, -0x42db7af0

    if-eq v4, v7, :cond_b

    .line 258
    :try_start_2
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 261
    :cond_b
    iget-object v4, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_c

    .line 262
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 265
    :cond_c
    invoke-static {v2, v1}, Lcn/nubia/gallery3d/common/BlobCache;->readInt([BI)I

    move-result v2

    if-eq v2, v7, :cond_d

    .line 266
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 271
    :cond_d
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 272
    sget-object v10, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v11, 0x0

    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 273
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13

    .line 272
    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 274
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 276
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->setActiveVariables()V

    return v8

    :cond_e
    :goto_0
    const-string v2, "invalid active bytes"

    .line 242
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :goto_1
    const-string v2, "invalid active entries"

    .line 238
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "loadIndex failed."

    .line 279
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private lookupInternal(JI)Z
    .locals 7

    .line 552
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    int-to-long v1, v0

    rem-long v1, p1, v1

    long-to-int v1, v1

    if-gez v1, :cond_0

    add-int/2addr v1, v0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    mul-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p3

    .line 557
    iget-object v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 558
    iget-object v5, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v6, v2, 0x8

    invoke-virtual {v5, v6}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 560
    iput v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mSlotOffset:I

    return v6

    :cond_2
    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    .line 563
    iput v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mSlotOffset:I

    .line 564
    iput v5, p0, Lcn/nubia/gallery3d/common/BlobCache;->mFileOffset:I

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 567
    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    if-lt v0, v2, :cond_4

    move v0, v6

    :cond_4
    if-ne v0, v1, :cond_1

    const-string v2, "BlobCache"

    const-string v3, "corrupted index: clear the slot."

    .line 571
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2

    .line 642
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static readLong([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x7

    .line 649
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x6

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    .line 651
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private resetCache(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 302
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v3, p1, 0xc

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x20

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 303
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 304
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/4 v3, 0x0

    const v4, -0x4cd8cfd0

    .line 305
    invoke-static {v0, v3, v4}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    const/4 v4, 0x4

    .line 306
    invoke-static {v0, v4, p1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 p1, 0x8

    .line 307
    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 p1, 0xc

    .line 308
    invoke-static {v0, p1, v3}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 p1, 0x10

    .line 309
    invoke-static {v0, p1, v3}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 p1, 0x14

    .line 310
    invoke-static {v0, p1, v4}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 311
    iget p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mVersion:I

    const/16 p2, 0x18

    invoke-static {v0, p2, p1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    const/16 p1, 0x1c

    .line 312
    invoke-virtual {p0, v0, v3, p1}, Lcn/nubia/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result p2

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 313
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 317
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 318
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 319
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const p1, -0x42db7af0

    .line 321
    invoke-static {v0, v3, p1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 322
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 323
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private setActiveVariables()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 286
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 287
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 288
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    .line 290
    iput v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveHashStart:I

    .line 291
    iput v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mInactiveHashStart:I

    .line 293
    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveRegion:I

    if-nez v1, :cond_2

    .line 294
    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mInactiveHashStart:I

    goto :goto_2

    .line 296
    :cond_2
    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveHashStart:I

    :goto_2
    return-void
.end method

.method private updateIndexHeader()V
    .locals 4

    .line 344
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/4 v1, 0x0

    const/16 v2, 0x1c

    .line 345
    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/gallery3d/common/BlobCache;->checkSum([BII)I

    move-result v3

    .line 344
    invoke-static {v0, v2, v3}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 346
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static writeInt([BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 658
    aput-byte v2, p0, v1

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v2, p1, v0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p2

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 665
    aput-byte v3, p0, v2

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2

    .line 621
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 622
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 623
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {p1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method checkSum([BII)I
    .locals 1

    .line 627
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 628
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 629
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {p1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public clearEntry(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mBlobHeader:[B

    const/4 p2, 0x0

    .line 389
    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    .line 390
    iget-object p2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mFileOffset:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 391
    iget-object p2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/BlobCache;->syncAll()V

    .line 178
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/BlobCache;->closeAll()V

    return-void
.end method

.method public closeAll()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 183
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 185
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method getActiveCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 606
    :goto_0
    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    if-ge v0, v2, :cond_1

    .line 607
    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveHashStart:I

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    .line 608
    iget-object v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    .line 609
    iget-object v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    if-ne v1, v0, :cond_2

    return v1

    .line 615
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong active count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlobCache"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public insert(J[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_3

    .line 367
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v2, p3

    add-int/2addr v0, v2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_1

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flipRegion mActiveEntries is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlobCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->flipRegion()V

    .line 373
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    .line 377
    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v2, 0x10

    invoke-static {v1, v2, v0}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 380
    :cond_2
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/gallery3d/common/BlobCache;->insertInternal(J[BI)V

    .line 381
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->updateIndexHeader()V

    return-void

    .line 364
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "blob is too large!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookup(Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget-wide v0, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v0, v2, p1}, Lcn/nubia/gallery3d/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 454
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mSlotOffset:I

    .line 457
    iget-wide v2, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget v4, p0, Lcn/nubia/gallery3d/common/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v2, v3, v4}, Lcn/nubia/gallery3d/common/BlobCache;->lookupInternal(JI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    iget-object v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mFileOffset:I

    invoke-direct {p0, v2, v3, p1}, Lcn/nubia/gallery3d/common/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 461
    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveBytes:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->length:I

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxBytes:I

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/nubia/gallery3d/common/BlobCache;->mMaxEntries:I

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    iput v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mSlotOffset:I

    .line 468
    :try_start_0
    iget-wide v2, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->key:J

    iget-object v0, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    iget p1, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v2, v3, v0, p1}, Lcn/nubia/gallery3d/common/BlobCache;->insertInternal(J[BI)V

    .line 469
    iget p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mActiveEntries:I

    .line 470
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexHeader:[B

    const/16 v2, 0x10

    invoke-static {v0, v2, p1}, Lcn/nubia/gallery3d/common/BlobCache;->writeInt([BII)V

    .line 471
    invoke-direct {p0}, Lcn/nubia/gallery3d/common/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "BlobCache"

    const-string v0, "cannot copy over"

    .line 473
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public lookup(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mLookupRequest:Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    iput-wide p1, v0, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->key:J

    .line 425
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mLookupRequest:Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    const/4 p2, 0x0

    iput-object p2, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    .line 426
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mLookupRequest:Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/common/BlobCache;->lookup(Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 427
    iget-object p1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mLookupRequest:Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;

    iget-object p1, p1, Lcn/nubia/gallery3d/common/BlobCache$LookupRequest;->buffer:[B

    return-object p1

    :cond_0
    return-object p2
.end method

.method public syncAll()V
    .locals 3

    const-string v0, "BlobCache"

    .line 587
    invoke-virtual {p0}, Lcn/nubia/gallery3d/common/BlobCache;->syncIndex()V

    .line 589
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "sync data file 0 failed"

    .line 591
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 594
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/gallery3d/common/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "sync data file 1 failed"

    .line 596
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public syncIndex()V
    .locals 3

    .line 580
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/common/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "BlobCache"

    const-string v2, "sync index failed"

    .line 582
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
