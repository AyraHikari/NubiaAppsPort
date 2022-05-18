.class Lcn/nubia/gallery3d/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifData"

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v1, v0, [B

    .line 39
    fill-array-data v1, :array_1

    sput-object v1, Lcn/nubia/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_2

    sput-object v0, Lcn/nubia/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/gallery3d/exif/IfdData;

    .line 46
    iput-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcn/nubia/gallery3d/exif/IfdData;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifTag;->getIfd()I

    move-result v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/exif/ExifData;->addTag(Lcn/nubia/gallery3d/exif/ExifTag;I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected addTag(Lcn/nubia/gallery3d/exif/ExifTag;I)Lcn/nubia/gallery3d/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    invoke-static {p2}, Lcn/nubia/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/exif/ExifData;->getOrCreateIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object p2

    .line 183
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 190
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 324
    :cond_1
    instance-of v2, p1, Lcn/nubia/gallery3d/exif/ExifData;

    if-eqz v2, :cond_7

    .line 325
    check-cast p1, Lcn/nubia/gallery3d/exif/ExifData;

    .line 326
    iget-object v2, p1, Lcn/nubia/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcn/nubia/gallery3d/exif/ExifData;->mThumbnail:[B

    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifData;->mThumbnail:[B

    .line 328
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 331
    :goto_0
    iget-object v3, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 332
    iget-object v3, p1, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    .line 337
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v3

    .line 338
    invoke-virtual {p0, v2}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    .line 339
    invoke-virtual {v3, v4}, Lcn/nubia/gallery3d/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 259
    invoke-virtual {v5}, Lcn/nubia/gallery3d/exif/IfdData;->getAllTags()[Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 261
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 262
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 282
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/IfdData;->getAllTags()[Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 286
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 288
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {v4, p1}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 306
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;
    .locals 1

    .line 128
    invoke-static {p1}, Lcn/nubia/gallery3d/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getOrCreateIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcn/nubia/gallery3d/exif/IfdData;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/exif/IfdData;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected getStripCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcn/nubia/gallery3d/exif/ExifTag;
    .locals 1

    .line 160
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 6

    .line 217
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 221
    :cond_0
    sget v3, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/exif/IfdData;->getTag(S)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 225
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    return-object v2

    .line 229
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v5, v3, [B

    .line 230
    invoke-virtual {v0, v5}, Lcn/nubia/gallery3d/exif/ExifTag;->getBytes([B)V

    new-array v0, v4, [B

    .line 233
    invoke-static {v5, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    :try_start_0
    sget-object v1, Lcn/nubia/gallery3d/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 237
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "US-ASCII"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 238
    :cond_3
    sget-object v1, Lcn/nubia/gallery3d/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 239
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "EUC-JP"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 240
    :cond_4
    sget-object v1, Lcn/nubia/gallery3d/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 241
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v3, v4

    const-string v1, "UTF-16"

    invoke-direct {v0, v5, v4, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    return-object v2

    :catch_0
    const-string v0, "ExifData"

    const-string v1, "Failed to decode the user comment"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcn/nubia/gallery3d/exif/ExifData;->clearThumbnailAndStrips()V

    .line 198
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mIfdDatas:[Lcn/nubia/gallery3d/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 87
    iget-object v1, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
