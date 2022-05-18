.class Lcn/nubia/gallery3d/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXIF_HEADER:I = 0x45786966

.field private static final MAX_EXIF_SIZE:I = 0xffff

.field private static final STATE_FRAME_HEADER:I = 0x1

.field private static final STATE_JPEG_DATA:I = 0x2

.field private static final STATE_SOI:I = 0x0

.field private static final STREAMBUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"

.field private static final TAG_SIZE:S = 0xcs

.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds

.field private static final TIFF_HEADER:S = 0x2as

.field private static final TIFF_HEADER_SIZE:S = 0x8s

.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mByteToCopy:I

.field private mByteToSkip:I

.field private mExifData:Lcn/nubia/gallery3d/exif/ExifData;

.field private final mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

.field private mSingleByteArray:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcn/nubia/gallery3d/exif/ExifInterface;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mState:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 81
    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    const/4 p1, 0x4

    .line 82
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    .line 87
    iput-object p2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    return-void
.end method

.method private calculateAllOffset()I
    .locals 6

    .line 436
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    const/16 v2, 0x8

    .line 437
    invoke-direct {p0, v0, v2}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcn/nubia/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 438
    sget v3, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 440
    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v3

    .line 441
    invoke-direct {p0, v3, v2}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcn/nubia/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 443
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 445
    sget v5, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v3

    .line 446
    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 447
    invoke-direct {p0, v4, v2}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcn/nubia/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 450
    :cond_0
    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 452
    sget v4, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcn/nubia/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 453
    invoke-direct {p0, v3, v2}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcn/nubia/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 456
    :cond_1
    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 458
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/exif/IfdData;->setOffsetToNextIfd(I)V

    .line 459
    invoke-direct {p0, v3, v2}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcn/nubia/gallery3d/exif/IfdData;I)I

    move-result v2

    .line 463
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    sget v0, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 465
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 466
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_1

    .line 467
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 468
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifData;->getStripCount()I

    move-result v0

    .line 469
    new-array v0, v0, [J

    .line 470
    :goto_0
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    int-to-long v4, v2

    .line 471
    aput-wide v4, v0, v1

    .line 472
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v4, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_4
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/exif/ExifTag;->setValue([J)Z

    :cond_5
    :goto_1
    return v2
.end method

.method private calculateOffsetOfIfd(Lcn/nubia/gallery3d/exif/IfdData;I)I
    .locals 5

    .line 310
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 311
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/IfdData;->getAllTags()[Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    .line 312
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 313
    invoke-virtual {v3}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 314
    invoke-virtual {v3, p2}, Lcn/nubia/gallery3d/exif/ExifTag;->setOffset(I)V

    .line 315
    invoke-virtual {v3}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v3

    add-int/2addr p2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private createRequiredIfdAndTag()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lcn/nubia/gallery3d/exif/IfdData;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;-><init>(I)V

    .line 326
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/exif/ExifData;->addIfdData(Lcn/nubia/gallery3d/exif/IfdData;)V

    .line 328
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    sget v3, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v2

    const-string v3, "No definition for crucial exif tag: "

    if-eqz v2, :cond_10

    .line 333
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    .line 336
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 338
    new-instance v2, Lcn/nubia/gallery3d/exif/IfdData;

    invoke-direct {v2, v4}, Lcn/nubia/gallery3d/exif/IfdData;-><init>(I)V

    .line 339
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v4, v2}, Lcn/nubia/gallery3d/exif/ExifData;->addIfdData(Lcn/nubia/gallery3d/exif/IfdData;)V

    .line 343
    :cond_1
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 345
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    sget v5, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 350
    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    goto :goto_0

    .line 347
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 356
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    sget v4, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 357
    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 362
    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 359
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_5
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    .line 368
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v0, :cond_6

    .line 371
    new-instance v0, Lcn/nubia/gallery3d/exif/IfdData;

    invoke-direct {v0, v2}, Lcn/nubia/gallery3d/exif/IfdData;-><init>(I)V

    .line 372
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/exif/ExifData;->addIfdData(Lcn/nubia/gallery3d/exif/IfdData;)V

    .line 375
    :cond_6
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 376
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 382
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    .line 383
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 384
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 390
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/exif/ExifTag;->setValue(I)Z

    .line 391
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    .line 394
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    .line 395
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    goto/16 :goto_3

    .line 386
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_9
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v0, :cond_a

    .line 398
    new-instance v0, Lcn/nubia/gallery3d/exif/IfdData;

    invoke-direct {v0, v2}, Lcn/nubia/gallery3d/exif/IfdData;-><init>(I)V

    .line 399
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/exif/ExifData;->addIfdData(Lcn/nubia/gallery3d/exif/IfdData;)V

    .line 401
    :cond_a
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/exif/ExifData;->getStripCount()I

    move-result v2

    .line 402
    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    sget v5, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 407
    iget-object v5, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    sget v6, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 408
    invoke-virtual {v5, v6}, Lcn/nubia/gallery3d/exif/ExifInterface;->buildUninitializedTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 413
    new-array v2, v2, [J

    .line 414
    :goto_2
    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/exif/ExifData;->getStripCount()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 415
    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v6, v3

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 417
    :cond_b
    invoke-virtual {v5, v2}, Lcn/nubia/gallery3d/exif/ExifTag;->setValue([J)Z

    .line 418
    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    .line 419
    invoke-virtual {v0, v5}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    .line 421
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    .line 422
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 423
    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 422
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    goto :goto_3

    .line 410
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    .line 426
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    .line 427
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    .line 428
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    .line 429
    sget v1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 430
    invoke-static {v1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    .line 429
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    :cond_f
    :goto_3
    return-void

    .line 330
    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestByteToBuffer(I[BII)I
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr p1, v0

    if-le p4, p1, :cond_0

    move p4, p1

    .line 109
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return p4
.end method

.method private stripNullValueTags(Lcn/nubia/gallery3d/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/exif/ExifTag;

    .line 246
    invoke-virtual {v2}, Lcn/nubia/gallery3d/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcn/nubia/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lcn/nubia/gallery3d/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 247
    invoke-virtual {v2}, Lcn/nubia/gallery3d/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lcn/nubia/gallery3d/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcn/nubia/gallery3d/exif/ExifData;->removeTag(SI)V

    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private writeAllTags(Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeIfd(Lcn/nubia/gallery3d/exif/IfdData;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeIfd(Lcn/nubia/gallery3d/exif/IfdData;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeIfd(Lcn/nubia/gallery3d/exif/IfdData;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeIfd(Lcn/nubia/gallery3d/exif/IfdData;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeIfd(Lcn/nubia/gallery3d/exif/IfdData;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    :cond_2
    return-void
.end method

.method private writeExifData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->stripNullValueTags(Lcn/nubia/gallery3d/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->createRequiredIfdAndTag()V

    .line 218
    invoke-direct {p0}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->calculateAllOffset()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v3, 0xffff

    if-gt v1, v3, :cond_3

    .line 222
    new-instance v3, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v3, v4}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 223
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    const/16 v4, -0x1f

    .line 224
    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    int-to-short v1, v1

    .line 225
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    const v1, 0x45786966

    .line 226
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 228
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v4, :cond_1

    const/16 v1, 0x4d4d

    .line 229
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    .line 231
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 233
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    const/16 v1, 0x2a

    .line 234
    invoke-virtual {v3, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 235
    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 236
    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeAllTags(Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    .line 237
    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeThumbnail(Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/exif/ExifTag;

    .line 239
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/exif/ExifData;->addTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    goto :goto_1

    :cond_2
    return-void

    .line 220
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exif header is too large (>64Kb)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeIfd(Lcn/nubia/gallery3d/exif/IfdData;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/IfdData;->getAllTags()[Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v0

    .line 284
    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 285
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 286
    invoke-virtual {v5}, Lcn/nubia/gallery3d/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 287
    invoke-virtual {v5}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 288
    invoke-virtual {v5}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 292
    invoke-virtual {v5}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    .line 293
    invoke-virtual {v5}, Lcn/nubia/gallery3d/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    goto :goto_2

    .line 295
    :cond_0
    invoke-static {v5, p2}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcn/nubia/gallery3d/exif/ExifTag;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    .line 296
    invoke-virtual {v5}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    .line 297
    invoke-virtual {p2, v2}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/IfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    .line 302
    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v1, v0, v2

    .line 303
    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataSize()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 304
    invoke-static {v1, p2}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeTagValue(Lcn/nubia/gallery3d/exif/ExifTag;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method static writeTagValue(Lcn/nubia/gallery3d/exif/ExifTag;Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 501
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 502
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getRational(I)Lcn/nubia/gallery3d/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeRational(Lcn/nubia/gallery3d/exif/Rational;)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :pswitch_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 496
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeInt(I)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 512
    :pswitch_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    .line 513
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->writeShort(S)Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 484
    :pswitch_4
    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    .line 485
    array-length v2, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    .line 486
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    .line 487
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_3

    .line 489
    :cond_0
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    .line 490
    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_3

    .line 507
    :pswitch_5
    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    .line 508
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/exif/ExifTag;->getBytes([B)V

    .line 509
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    :cond_1
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private writeThumbnail(Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifData;->getStripCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {v1, v0}, Lcn/nubia/gallery3d/exif/ExifData;->getStrip(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/exif/OrderedDataOutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected getExifData()Lcn/nubia/gallery3d/exif/ExifData;
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    return-object v0
.end method

.method protected setExifData(Lcn/nubia/gallery3d/exif/ExifData;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mExifData:Lcn/nubia/gallery3d/exif/ExifData;

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mSingleByteArray:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 198
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    :goto_0
    iget v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    const/4 v1, 0x2

    if-gtz v0, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-gtz v2, :cond_0

    iget v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mState:I

    if-eq v2, v1, :cond_e

    :cond_0
    if-lez p3, :cond_e

    if-lez v0, :cond_2

    if-le p3, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    sub-int/2addr p3, v2

    sub-int/2addr v0, v2

    .line 124
    iput v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    add-int/2addr p2, v2

    .line 127
    :cond_2
    iget v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    if-lez v0, :cond_4

    if-le p3, v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p3

    .line 129
    :goto_2
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    .line 131
    iget v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    add-int/2addr p2, v0

    :cond_4
    if-nez p3, :cond_5

    return-void

    .line 137
    :cond_5
    iget v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    .line 157
    invoke-direct {p0, v0, p1, p2, p3}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v2

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    .line 161
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 162
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x27

    if-ne v2, v4, :cond_7

    .line 164
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    :cond_7
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ge v2, v0, :cond_8

    return-void

    .line 171
    :cond_8
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/16 v4, -0x1f

    const v5, 0xffff

    if-ne v2, v4, :cond_9

    .line 174
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToSkip:I

    .line 175
    iput v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mState:I

    goto :goto_3

    .line 176
    :cond_9
    invoke-static {v2}, Lcn/nubia/gallery3d/exif/JpegHeader;->isSofMarker(S)Z

    move-result v2

    if-nez v2, :cond_a

    .line 177
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mByteToCopy:I

    goto :goto_3

    .line 180
    :cond_a
    iget-object v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iput v1, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mState:I

    .line 183
    :goto_3
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 139
    :cond_b
    invoke-direct {p0, v1, p1, p2, p3}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 142
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v1, :cond_c

    return-void

    .line 145
    :cond_c
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v4, -0x28

    if-ne v0, v4, :cond_d

    .line 149
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 150
    iput v2, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mState:I

    .line 151
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-direct {p0}, Lcn/nubia/gallery3d/exif/ExifOutputStream;->writeExifData()V

    goto/16 :goto_0

    .line 147
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not a valid jpeg image, cannot write exif"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    if-lez p3, :cond_f

    .line 187
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_f
    return-void
.end method
