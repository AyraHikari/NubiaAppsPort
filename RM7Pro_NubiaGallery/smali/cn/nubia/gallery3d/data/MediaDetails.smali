.class public Lcn/nubia/gallery3d/data/MediaDetails;
.super Ljava/lang/Object;
.source "MediaDetails.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/MediaDetails$FlashState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INDEX_APERTURE:I = 0x69

.field public static final INDEX_ARTIST:I = 0x6e

.field public static final INDEX_DATETIME:I = 0x3

.field public static final INDEX_DESCRIPTION:I = 0x2

.field public static final INDEX_DRM_FL_DISPLAY:I = 0xc9

.field public static final INDEX_DRM_FL_EXECUTE:I = 0xca

.field public static final INDEX_DRM_FL_PLAY:I = 0xc8

.field public static final INDEX_DRM_FL_PRINT:I = 0xcb

.field public static final INDEX_DURATION:I = 0x8

.field public static final INDEX_EXPOSURE_TIME:I = 0x6b

.field public static final INDEX_FLASH:I = 0x66

.field public static final INDEX_FOCAL_LENGTH:I = 0x67

.field public static final INDEX_F_NUMBER:I = 0x6d

.field public static final INDEX_HEIGHT:I = 0x6

.field public static final INDEX_ISO:I = 0x6c

.field public static final INDEX_LOCATION:I = 0x4

.field public static final INDEX_MAKE:I = 0x64

.field public static final INDEX_MIMETYPE:I = 0x9

.field public static final INDEX_MODEL:I = 0x65

.field public static final INDEX_ORIENTATION:I = 0x7

.field public static final INDEX_PATH:I = 0xc8

.field public static final INDEX_SHUTTER_SPEED:I = 0x6a

.field public static final INDEX_SIZE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final INDEX_WHITE_BALANCE:I = 0x68

.field public static final INDEX_WIDTH:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaDetails"


# instance fields
.field private mDetails:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    return-void
.end method

.method public static extractExifInfo(Lcn/nubia/gallery3d/data/MediaDetails;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Could not read exif from file: "

    const-string v1, "MediaDetails"

    .line 143
    new-instance v2, Lcn/nubia/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcn/nubia/gallery3d/exif/ExifInterface;-><init>()V

    .line 145
    :try_start_0
    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find file to read exif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :goto_0
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x6e

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 155
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x66

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 157
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 159
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 161
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 163
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x65

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 165
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x69

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 167
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x6d

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 169
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x6c

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 171
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    const/16 v0, 0x6b

    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V

    .line 173
    sget p1, Lcn/nubia/gallery3d/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v2, p1}, Lcn/nubia/gallery3d/exif/ExifInterface;->getTag(I)Lcn/nubia/gallery3d/exif/ExifTag;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 176
    invoke-virtual {p1, v0, v1}, Lcn/nubia/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcn/nubia/gallery3d/exif/Rational;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/16 v0, 0x67

    .line 175
    invoke-virtual {p0, v0, p1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const p1, 0x7f100257

    .line 177
    invoke-virtual {p0, v0, p1}, Lcn/nubia/gallery3d/data/MediaDetails;->setUnit(II)V

    :cond_0
    return-void
.end method

.method private static setExifData(Lcn/nubia/gallery3d/data/MediaDetails;Lcn/nubia/gallery3d/exif/ExifTag;I)V
    .locals 4

    if-eqz p1, :cond_4

    .line 123
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 127
    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {p1, v2, v3}, Lcn/nubia/gallery3d/exif/ExifTag;->forceGetValueAsLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 125
    :cond_2
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcn/nubia/gallery3d/exif/ExifTag;->getValueAsRational(J)Lcn/nubia/gallery3d/exif/Rational;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/exif/Rational;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    .line 132
    new-instance v0, Lcn/nubia/gallery3d/data/MediaDetails$FlashState;

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/data/MediaDetails$FlashState;-><init>(I)V

    .line 134
    invoke-virtual {p0, p2, v0}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcn/nubia/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addDetail(ILjava/lang/Object;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDetail(I)Ljava/lang/Object;
    .locals 1

    .line 95
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUnit(I)I
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public hasUnit(I)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setUnit(II)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mUnits:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/nubia/gallery3d/data/MediaDetails;->mDetails:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
