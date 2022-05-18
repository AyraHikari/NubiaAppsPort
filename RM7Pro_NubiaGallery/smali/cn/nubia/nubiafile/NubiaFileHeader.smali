.class public Lcn/nubia/nubiafile/NubiaFileHeader;
.super Ljava/lang/Object;
.source "NubiaFileHeader.java"


# static fields
.field private static final FIRST_KEY_ID:I = 0x0

.field public static final KEY_DATA_SIZE:I = 0x4

.field private static final KEY_NAME_LIST:[Ljava/lang/String;

.field public static final KEY_RESERVED1_ID:I = 0x2

.field public static final KEY_RESERVED2_ID:I = 0x3

.field public static final KEY_TYPE_ID:I = 0x0

.field public static final KEY_VERSION_ID:I = 0x1

.field private static final LAST_KEY_ID:I = 0x4

.field public static final NUBIA_FILE_HEAD_SIZE:I = 0x1e

.field private static final NUBIA_TAG:Ljava/lang/String; = "NUBIA"

.field private static final TAG:Ljava/lang/String; = "NubiaFileHeader"


# instance fields
.field private mBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "type"

    const-string v1, "version"

    const-string v2, "reserved1"

    const-string v3, "reserved2"

    const-string v4, "datasize"

    .line 43
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 42
    sput-object v0, Lcn/nubia/nubiafile/NubiaFileHeader;->KEY_NAME_LIST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcn/nubia/nubiafile/NubiaFileHeader;->mBytes:[B

    .line 51
    sget v0, Lcn/nubia/nubiafile/NubiaFileHeader;->NUBIA_FILE_HEAD_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/nubia/nubiafile/NubiaFileHeader;->mBytes:[B

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 52
    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v3, 0x4e

    .line 53
    aput-byte v3, v0, v1

    const/16 v1, 0x16

    .line 54
    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v3, 0x55

    .line 55
    aput-byte v3, v0, v1

    const/16 v1, 0x18

    .line 56
    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v3, 0x42

    .line 57
    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    .line 58
    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v3, 0x49

    .line 59
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    .line 60
    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x41

    .line 61
    aput-byte v2, v0, v1

    return-void
.end method

.method private static IsOldImage3dFile(Lcn/nubia/nubiafile/NubiaFileHeader;)Z
    .locals 3

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lcn/nubia/nubiafile/NubiaFileHeader;->getValue(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v1}, Lcn/nubia/nubiafile/NubiaFileHeader;->getValue(I)I

    move-result p0

    const/16 v2, 0x2711

    if-eq p0, v2, :cond_0

    const/16 v2, 0x2712

    if-ne p0, v2, :cond_1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isOldImage3dFile:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NubiaFileHeader"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v0
.end method

.method private static bytesToInt([BI)I
    .locals 2

    .line 191
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    .line 192
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    .line 193
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    .line 194
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static create()Lcn/nubia/nubiafile/NubiaFileHeader;
    .locals 1

    .line 68
    new-instance v0, Lcn/nubia/nubiafile/NubiaFileHeader;

    invoke-direct {v0}, Lcn/nubia/nubiafile/NubiaFileHeader;-><init>()V

    return-object v0
.end method

.method private static decodeAltekDualCameraPhoto(Ljava/io/RandomAccessFile;)Lcn/nubia/nubiafile/NubiaFileHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v3, v2

    sub-long v3, v0, v3

    .line 214
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 215
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-array v4, v2, [B

    .line 217
    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 218
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 222
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 224
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 225
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 226
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 227
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 228
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-nez v4, :cond_0

    add-int/2addr v4, v5

    if-ne v6, v4, :cond_0

    add-int/2addr v6, v7

    if-ne v8, v6, :cond_0

    add-int/2addr v8, v3

    int-to-long v4, v8

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 234
    new-instance v0, Lcn/nubia/nubiafile/NubiaFileHeader;

    invoke-direct {v0}, Lcn/nubia/nubiafile/NubiaFileHeader;-><init>()V

    const/4 v1, 0x3

    .line 235
    invoke-virtual {v0, p0, v1}, Lcn/nubia/nubiafile/NubiaFileHeader;->set(II)V

    const/4 p0, 0x1

    .line 236
    invoke-virtual {v0, p0, p0}, Lcn/nubia/nubiafile/NubiaFileHeader;->set(II)V

    const/4 p0, 0x4

    add-int/2addr v7, v3

    add-int/2addr v7, v2

    .line 237
    sget v1, Lcn/nubia/nubiafile/NubiaFileHeader;->NUBIA_FILE_HEAD_SIZE:I

    sub-int/2addr v7, v1

    invoke-virtual {v0, p0, v7}, Lcn/nubia/nubiafile/NubiaFileHeader;->set(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static parser(Ljava/io/RandomAccessFile;)Lcn/nubia/nubiafile/NubiaFileHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 101
    sget v2, Lcn/nubia/nubiafile/NubiaFileHeader;->NUBIA_FILE_HEAD_SIZE:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const/16 v2, 0xa

    int-to-long v2, v2

    sub-long v2, v0, v2

    .line 102
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    const/4 v4, 0x5

    if-lt v2, v4, :cond_1

    const-string v2, "NUBIA"

    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    new-instance v2, Lcn/nubia/nubiafile/NubiaFileHeader;

    invoke-direct {v2}, Lcn/nubia/nubiafile/NubiaFileHeader;-><init>()V

    .line 109
    sget v3, Lcn/nubia/nubiafile/NubiaFileHeader;->NUBIA_FILE_HEAD_SIZE:I

    int-to-long v4, v3

    sub-long v4, v0, v4

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 110
    invoke-virtual {v2}, Lcn/nubia/nubiafile/NubiaFileHeader;->getHeadBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 111
    invoke-static {v2}, Lcn/nubia/nubiafile/NubiaFileHeader;->IsOldImage3dFile(Lcn/nubia/nubiafile/NubiaFileHeader;)Z

    move-result v4

    if-eqz v4, :cond_3

    int-to-long v3, v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x20

    sub-long/2addr v0, v3

    .line 114
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 115
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "NubiaFileHeader"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    long-to-int v0, v0

    .line 117
    invoke-virtual {v2, p0, v0}, Lcn/nubia/nubiafile/NubiaFileHeader;->set(II)V

    goto :goto_1

    .line 121
    :cond_0
    invoke-static {p0}, Lcn/nubia/nubiafile/NubiaFileHeader;->decodeAltekDualCameraPhoto(Ljava/io/RandomAccessFile;)Lcn/nubia/nubiafile/NubiaFileHeader;

    move-result-object v2

    goto :goto_1

    .line 105
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public static parser(Ljava/lang/String;)Lcn/nubia/nubiafile/NubiaFileHeader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "NubiaFileHeader"

    if-eqz p0, :cond_1

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "File Can Not Be Read!"

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcn/nubia/nubiafile/NubiaFileHeader;->parser(Ljava/io/RandomAccessFile;)Lcn/nubia/nubiafile/NubiaFileHeader;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :cond_1
    const-string p0, "File Not Found!"

    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getHeadBytes()[B
    .locals 1

    .line 171
    iget-object v0, p0, Lcn/nubia/nubiafile/NubiaFileHeader;->mBytes:[B

    return-object v0
.end method

.method public getKeyName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 161
    sget-object v0, Lcn/nubia/nubiafile/NubiaFileHeader;->KEY_NAME_LIST:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrivDataSize()J
    .locals 2

    const/4 v0, 0x4

    .line 186
    invoke-virtual {p0, v0}, Lcn/nubia/nubiafile/NubiaFileHeader;->getValue(I)I

    move-result v0

    sget v1, Lcn/nubia/nubiafile/NubiaFileHeader;->NUBIA_FILE_HEAD_SIZE:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getValue(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 148
    iget-object v1, p0, Lcn/nubia/nubiafile/NubiaFileHeader;->mBytes:[B

    mul-int/2addr p1, v0

    invoke-static {v1, p1}, Lcn/nubia/nubiafile/NubiaFileHeader;->bytesToInt([BI)I

    move-result p1

    return p1

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid KEY_ID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NubiaFileHeader"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public print()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/nubia/nubiafile/NubiaFileHeader;->KEY_NAME_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/nubiafile/NubiaFileHeader;->mBytes:[B

    mul-int/lit8 v3, v0, 0x4

    invoke-static {v2, v3}, Lcn/nubia/nubiafile/NubiaFileHeader;->bytesToInt([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NubiaFileHeader"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public set(II)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 133
    iget-object v1, p0, Lcn/nubia/nubiafile/NubiaFileHeader;->mBytes:[B

    mul-int/2addr p1, v0

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 134
    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 135
    aput-byte v2, v1, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 136
    aput-byte p2, v1, p1

    goto :goto_0

    .line 138
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid KEY_ID:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NubiaFileHeader"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
