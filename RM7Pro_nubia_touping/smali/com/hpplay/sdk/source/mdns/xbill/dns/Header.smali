.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final LENGTH:I = 0xc

.field private static random:Ljava/util/Random;


# instance fields
.field private counts:[I

.field private flags:I

.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->init()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setID(I)V

    .line 26
    return-void
.end method

.method constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;-><init>(I)V

    .line 34
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 36
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v2

    aput v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    .line 44
    return-void
.end method

.method private static checkFlag(I)V
    .locals 3

    .prologue
    .line 67
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->validFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid flag bit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    .line 21
    return-void
.end method

.method static setFlag(IIZ)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->checkFlag(I)V

    .line 74
    if-eqz p2, :cond_0

    rsub-int/lit8 v0, p1, 0xf

    shl-int v0, v1, v0

    or-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    rsub-int/lit8 v0, p1, 0xf

    shl-int v0, v1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    goto :goto_0
.end method

.method private static validFlag(I)Z
    .locals 1

    .prologue
    .line 63
    if-ltz p0, :cond_0

    const/16 v0, 0xf

    if-gt p0, v0, :cond_0

    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->isFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 214
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;-><init>()V

    .line 215
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    iput v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    .line 216
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    iput v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 217
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    iget-object v2, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    return-object v0
.end method

.method decCount(I)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DNS section count cannot be decremented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 169
    return-void
.end method

.method public getCount(I)I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFlag(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->checkFlag(I)V

    .line 84
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    rsub-int/lit8 v2, p1, 0xf

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFlags()[Z
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0x10

    new-array v1, v0, [Z

    .line 90
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 91
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->validFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-object v1
.end method

.method getFlagsByte()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    return v0
.end method

.method public getID()I
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    if-ltz v0, :cond_0

    .line 101
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    .line 108
    :goto_0
    return v0

    .line 103
    :cond_0
    monitor-enter p0

    .line 104
    :try_start_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    if-gez v0, :cond_1

    .line 105
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->random:Ljava/util/Random;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    .line 108
    :cond_1
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    monitor-exit p0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOpcode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    shr-int/lit8 v0, v0, 0xb

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getRcode()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method incCount(I)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    aget v0, v0, p1

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DNS section count cannot be incremented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 161
    return-void
.end method

.method public printFlags()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 183
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->validFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setCount(II)V
    .locals 3

    .prologue
    .line 148
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    aput p2, v0, p1

    .line 153
    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS section count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFlag(I)V
    .locals 2

    .prologue
    .line 78
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->checkFlag(I)V

    .line 79
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 80
    return-void
.end method

.method public setID(I)V
    .locals 3

    .prologue
    .line 114
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 115
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->id:I

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOpcode(I)V
    .locals 3

    .prologue
    .line 135
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 136
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    const v1, 0x87ff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 137
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    shl-int/lit8 v1, p1, 0xb

    or-int/2addr v0, v1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 141
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS Opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRcode(I)V
    .locals 3

    .prologue
    .line 122
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 123
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    and-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 124
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    .line 128
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS Rcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toStringWithRcode(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    const-string v0, ";; ->>HEADER<<- "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opcode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v2

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Opcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";; flags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->printFlags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v0, "; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Section;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getCount(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 48
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->flags:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 50
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->counts:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public toWire()[B
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 58
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    .line 59
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
