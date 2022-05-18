.class public abstract Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;
    }
.end annotation


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "code"

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->code:I

    .line 40
    return-void
.end method

.method static fromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;
    .locals 3

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v1

    .line 68
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "truncated option"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saveActive()I

    move-result v2

    .line 72
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->setActive(I)V

    .line 74
    sparse-switch v1, :sswitch_data_0

    .line 84
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/GenericEDNSOption;

    invoke-direct {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/GenericEDNSOption;-><init>(I)V

    .line 87
    :goto_0
    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->optionFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->restoreActive(I)V

    .line 89
    return-object v0

    .line 76
    :sswitch_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/NSIDOption;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/NSIDOption;-><init>()V

    goto :goto_0

    .line 80
    :sswitch_1
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ClientSubnetOption;-><init>()V

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static fromWire([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->fromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 116
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;

    if-nez v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;

    .line 119
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->code:I

    iget v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->code:I

    if-ne v1, v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->code:I

    return v0
.end method

.method getData()[B
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 58
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->optionToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 59
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->getData()[B

    move-result-object v2

    move v1, v0

    .line 128
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 129
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return v1
.end method

.method abstract optionFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
.end method

.method abstract optionToString()Ljava/lang/String;
.end method

.method abstract optionToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->code:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->optionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->code:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 101
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v0

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->optionToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 104
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->current()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    .line 105
    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16At(II)V

    .line 106
    return-void
.end method

.method public toWire()[B
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 111
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 112
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
