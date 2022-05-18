.class public Lcn/nubia/gallery3d/data/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraExif"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/io/InputStream;)I
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x8

    new-array v2, v1, [B

    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 36
    invoke-static {p0, v2, v3}, Lcn/nubia/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x4

    const-string v8, "CameraExif"

    if-eqz v4, :cond_a

    aget-byte v4, v2, v0

    const/16 v9, 0xff

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_a

    .line 37
    aget-byte v4, v2, v6

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_2

    goto :goto_0

    :cond_2
    const/16 v9, 0xd8

    if-eq v4, v9, :cond_1

    if-ne v4, v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v9, 0xd9

    if-eq v4, v9, :cond_9

    const/16 v9, 0xda

    if-ne v4, v9, :cond_4

    goto :goto_1

    .line 54
    :cond_4
    invoke-static {p0, v2, v3}, Lcn/nubia/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v9

    if-nez v9, :cond_5

    return v0

    .line 57
    :cond_5
    invoke-static {v2, v0, v3, v0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v9

    if-ge v9, v3, :cond_6

    const-string p0, "Invalid length"

    .line 59
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    add-int/lit8 v9, v9, -0x2

    const/16 v10, 0xe1

    if-ne v4, v10, :cond_8

    if-lt v9, v5, :cond_8

    .line 66
    invoke-static {p0, v2, v5}, Lcn/nubia/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result v4

    if-nez v4, :cond_7

    return v0

    :cond_7
    add-int/lit8 v9, v9, -0x6

    .line 68
    invoke-static {v2, v0, v7, v0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v4

    const v10, 0x45786966

    if-ne v4, v10, :cond_8

    .line 69
    invoke-static {v2, v7, v3, v0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    int-to-long v3, v9

    .line 76
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_9
    :goto_1
    return v0

    :cond_a
    move v9, v0

    :goto_2
    if-le v9, v1, :cond_15

    .line 86
    new-array v2, v9, [B

    .line 87
    invoke-static {p0, v2, v9}, Lcn/nubia/gallery3d/data/Exif;->read(Ljava/io/InputStream;[BI)Z

    move-result p0

    if-nez p0, :cond_b

    return v0

    .line 92
    :cond_b
    invoke-static {v2, v0, v7, v0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result p0

    const v4, 0x49492a00    # 823968.0f

    if-eq p0, v4, :cond_c

    const v10, 0x4d4d002a    # 2.14958752E8f

    if-eq p0, v10, :cond_c

    const-string p0, "Invalid byte order"

    .line 94
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    if-ne p0, v4, :cond_d

    move p0, v6

    goto :goto_3

    :cond_d
    move p0, v0

    .line 100
    :goto_3
    invoke-static {v2, v7, v7, p0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v7, 0xa

    if-lt v4, v7, :cond_14

    if-le v4, v9, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v7, v4, 0x0

    sub-int/2addr v9, v4

    add-int/lit8 v4, v7, -0x2

    .line 109
    invoke-static {v2, v4, v3, p0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v4

    :goto_4
    add-int/lit8 v10, v4, -0x1

    if-lez v4, :cond_15

    const/16 v4, 0xc

    if-lt v9, v4, :cond_15

    .line 112
    invoke-static {v2, v7, v3, p0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result v4

    const/16 v11, 0x112

    if-ne v4, v11, :cond_13

    add-int/2addr v7, v1

    .line 115
    invoke-static {v2, v7, v3, p0}, Lcn/nubia/gallery3d/data/Exif;->pack([BIIZ)I

    move-result p0

    if-eq p0, v6, :cond_12

    const/4 v2, 0x3

    if-eq p0, v2, :cond_11

    if-eq p0, v5, :cond_10

    if-eq p0, v1, :cond_f

    const-string p0, "Unsupported orientation"

    .line 126
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    const/16 p0, 0x10e

    return p0

    :cond_10
    const/16 p0, 0x5a

    return p0

    :cond_11
    const/16 p0, 0xb4

    return p0

    :cond_12
    return v0

    :cond_13
    add-int/lit8 v7, v7, 0xc

    add-int/lit8 v9, v9, -0xc

    move v4, v10

    goto :goto_4

    :cond_14
    :goto_5
    const-string p0, "Invalid offset"

    .line 102
    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_15
    const-string p0, "Orientation not found"

    .line 134
    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static pack([BIIZ)I
    .locals 2

    if-eqz p3, :cond_0

    add-int/lit8 p3, p2, -0x1

    add-int/2addr p1, p3

    const/4 p3, -0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lez p2, :cond_1

    shl-int/lit8 p2, v0, 0x8

    .line 148
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, p2

    add-int/2addr p1, p3

    move p2, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method private static read(Ljava/io/InputStream;[BI)Z
    .locals 1

    const/4 v0, 0x0

    .line 156
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
