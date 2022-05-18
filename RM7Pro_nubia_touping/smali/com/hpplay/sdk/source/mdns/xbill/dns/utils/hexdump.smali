.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/hexdump;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final hex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/hexdump;->hex:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static dump(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dump(Ljava/lang/String;[BII)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v1, 0x0

    .line 15
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    if-eqz p0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 23
    add-int/lit8 v0, v0, 0x8

    and-int/lit8 v4, v0, -0x8

    .line 24
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 25
    rsub-int/lit8 v0, v4, 0x50

    div-int/lit8 v5, v0, 0x3

    move v2, v1

    .line 27
    :goto_0
    if-ge v2, p3, :cond_2

    .line 29
    if-eqz v2, :cond_1

    rem-int v0, v2, v5

    if-nez v0, :cond_1

    .line 30
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 32
    :goto_1
    div-int/lit8 v6, v4, 0x8

    if-ge v0, v6, :cond_1

    .line 33
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_1
    add-int v0, v2, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 38
    sget-object v6, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/hexdump;->hex:[C

    shr-int/lit8 v7, v0, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    sget-object v6, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/hexdump;->hex:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v6, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
