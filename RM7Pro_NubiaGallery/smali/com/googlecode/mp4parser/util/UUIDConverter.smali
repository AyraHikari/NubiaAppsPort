.class public Lcom/googlecode/mp4parser/util/UUIDConverter;
.super Ljava/lang/Object;
.source "UUIDConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert([B)Ljava/util/UUID;
    .locals 5

    .line 44
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 45
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v0
.end method

.method public static convert(Ljava/util/UUID;)[B
    .locals 9

    .line 28
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 29
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 p0, 0x10

    new-array v4, p0, [B

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    rsub-int/lit8 v7, v5, 0x7

    mul-int/2addr v7, v6

    ushr-long v6, v0, v7

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 33
    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_1
    if-ge v0, p0, :cond_1

    rsub-int/lit8 v1, v0, 0x7

    mul-int/2addr v1, v6

    ushr-long v7, v2, v1

    long-to-int v1, v7

    int-to-byte v1, v1

    .line 36
    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v4
.end method
