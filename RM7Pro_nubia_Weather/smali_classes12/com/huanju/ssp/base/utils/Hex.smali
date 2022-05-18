.class public abstract Lcom/huanju/ssp/base/utils/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final HEX_CHAR_TABLE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huanju/ssp/base/utils/Hex;->HEX_CHAR_TABLE:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bin2hex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v5, 0x0

    .line 37
    :goto_0
    return-object v5

    .line 29
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 30
    .local v2, "hex":Ljava/lang/StringBuilder;
    move-object v0, p0

    .line 31
    .local v0, "arrayOfByte":[B
    array-length v4, p0

    .line 32
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 33
    aget-byte v1, v0, v3

    .line 34
    .local v1, "by":B
    sget-object v5, Lcom/huanju/ssp/base/utils/Hex;->HEX_CHAR_TABLE:[C

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    sget-object v5, Lcom/huanju/ssp/base/utils/Hex;->HEX_CHAR_TABLE:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 37
    .end local v1    # "by":B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static hex2bin(Ljava/lang/String;)[B
    .locals 8
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x10

    .line 7
    if-nez p0, :cond_1

    .line 8
    const/4 v0, 0x0

    .line 22
    :cond_0
    return-object v0

    .line 10
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 11
    .local v4, "len":I
    new-array v0, v4, [B

    .line 12
    .local v0, "b":[B
    const/4 v2, 0x0

    .line 13
    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 14
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v1, v6

    .line 15
    .local v1, "high":B
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    int-to-byte v5, v6

    .line 16
    .local v5, "low":B
    shl-int/lit8 v6, v1, 0x4

    or-int/2addr v6, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    add-int/lit8 v3, v3, 0x2

    .line 20
    goto :goto_0
.end method
