.class Lcn/nubia/gallery3d/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifReader"


# instance fields
.field private final mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/exif/ExifInterface;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifReader;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcn/nubia/gallery3d/exif/ExifData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/gallery3d/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/exif/ExifReader;->mInterface:Lcn/nubia/gallery3d/exif/ExifInterface;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/exif/ExifParser;->parse(Ljava/io/InputStream;Lcn/nubia/gallery3d/exif/ExifInterface;)Lcn/nubia/gallery3d/exif/ExifParser;

    move-result-object p1

    .line 47
    new-instance v0, Lcn/nubia/gallery3d/exif/ExifData;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    .line 50
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_9

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    const-string v3, "ExifReader"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->getStripSize()I

    move-result v1

    new-array v2, v1, [B

    .line 81
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 82
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    :cond_1
    const-string v1, "Failed to read the strip bytes"

    .line 84
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->getCompressedImageSize()I

    move-result v1

    new-array v2, v1, [B

    .line 73
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 74
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_3
    const-string v1, "Failed to read the compressed thumbnail"

    .line 76
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->getTag()Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    .line 67
    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/exif/ExifParser;->readFullTagValue(Lcn/nubia/gallery3d/exif/ExifTag;)V

    .line 69
    :cond_5
    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 57
    :cond_6
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->getTag()Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifTag;->hasValue()Z

    move-result v2

    if-nez v2, :cond_7

    .line 59
    invoke-virtual {p1, v1}, Lcn/nubia/gallery3d/exif/ExifParser;->registerForTagValue(Lcn/nubia/gallery3d/exif/ExifTag;)V

    goto :goto_1

    .line 61
    :cond_7
    invoke-virtual {v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/exif/ExifData;->getIfdData(I)Lcn/nubia/gallery3d/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/gallery3d/exif/IfdData;->setTag(Lcn/nubia/gallery3d/exif/ExifTag;)Lcn/nubia/gallery3d/exif/ExifTag;

    goto :goto_1

    .line 54
    :cond_8
    new-instance v1, Lcn/nubia/gallery3d/exif/IfdData;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->getCurrentIfd()I

    move-result v2

    invoke-direct {v1, v2}, Lcn/nubia/gallery3d/exif/IfdData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/exif/ExifData;->addIfdData(Lcn/nubia/gallery3d/exif/IfdData;)V

    .line 88
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifParser;->next()I

    move-result v1

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method
