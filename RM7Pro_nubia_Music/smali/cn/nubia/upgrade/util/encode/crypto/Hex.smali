.class public abstract Lcn/nubia/upgrade/util/encode/crypto/Hex;
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

    sput-object v0, Lcn/nubia/upgrade/util/encode/crypto/Hex;->HEX_CHAR_TABLE:[C

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
    .locals 6

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    array-length v2, p0

    .line 34
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 35
    aget-byte v3, p0, v0

    .line 36
    sget-object v4, Lcn/nubia/upgrade/util/encode/crypto/Hex;->HEX_CHAR_TABLE:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    sget-object v4, Lcn/nubia/upgrade/util/encode/crypto/Hex;->HEX_CHAR_TABLE:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hex2bin(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v1, 0x0

    .line 8
    if-nez p0, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 24
    :cond_0
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 13
    new-array v0, v3, [B

    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v3, :cond_0

    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 17
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    .line 18
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    add-int/lit8 v1, v1, 0x2

    .line 22
    goto :goto_0
.end method
