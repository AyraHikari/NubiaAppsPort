.class public Lb/a/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:I = 0x1e


# instance fields
.field private a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/c/a;->a:[B

    sget v0, Lb/a/c/a;->b:I

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/c/a;->a:[B

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v3, 0x4e

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v3, 0x55

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v3, 0x42

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v3, 0x49

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    return-void
.end method

.method private static a(Lb/a/c/a;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/c/a;->e(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lb/a/c/a;->e(I)I

    move-result p0

    const/16 v2, 0x2711

    if-eq p0, v2, :cond_0

    const/16 v2, 0x2712

    if-ne p0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isOldImage3dFile:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NubiaFileHeader"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v0
.end method

.method private static b([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static c(Ljava/io/RandomAccessFile;)Lb/a/c/a;
    .locals 9

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const/16 v2, 0x3c

    int-to-long v3, v2

    sub-long v3, v0, v3

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-array v4, v2, [B

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

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

    new-instance v0, Lb/a/c/a;

    invoke-direct {v0}, Lb/a/c/a;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lb/a/c/a;->h(II)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p0}, Lb/a/c/a;->h(II)V

    const/4 p0, 0x4

    add-int/2addr v7, v3

    add-int/2addr v7, v2

    sget v1, Lb/a/c/a;->b:I

    sub-int/2addr v7, v1

    invoke-virtual {v0, p0, v7}, Lb/a/c/a;->h(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static f(Ljava/io/RandomAccessFile;)Lb/a/c/a;
    .locals 6

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    sget v2, Lb/a/c/a;->b:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const/16 v2, 0xa

    int-to-long v2, v2

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    const/4 v4, 0x5

    if-lt v2, v4, :cond_1

    const-string v2, "NUBIA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lb/a/c/a;

    invoke-direct {v2}, Lb/a/c/a;-><init>()V

    sget v3, Lb/a/c/a;->b:I

    int-to-long v4, v3

    sub-long v4, v0, v4

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Lb/a/c/a;->d()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v2}, Lb/a/c/a;->a(Lb/a/c/a;)Z

    move-result v4

    if-eqz v4, :cond_3

    int-to-long v3, v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x20

    sub-long/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "size:"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "NubiaFileHeader"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    long-to-int v0, v0

    invoke-virtual {v2, p0, v0}, Lb/a/c/a;->h(II)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lb/a/c/a;->c(Ljava/io/RandomAccessFile;)Lb/a/c/a;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public static g(Ljava/lang/String;)Lb/a/c/a;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v1, "NubiaFileHeader"

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "File Can Not Be Read!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {p0, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lb/a/c/a;->f(Ljava/io/RandomAccessFile;)Lb/a/c/a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    return-object v0

    :cond_1
    const-string p0, "File Not Found!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
.end method


# virtual methods
.method public d()[B
    .locals 1

    iget-object v0, p0, Lb/a/c/a;->a:[B

    return-object v0
.end method

.method public e(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    iget-object v1, p0, Lb/a/c/a;->a:[B

    mul-int/2addr p1, v0

    invoke-static {v1, p1}, Lb/a/c/a;->b([BI)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid KEY_ID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NubiaFileHeader"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public h(II)V
    .locals 3

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    iget-object v1, p0, Lb/a/c/a;->a:[B

    mul-int/2addr p1, v0

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid KEY_ID:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NubiaFileHeader"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
