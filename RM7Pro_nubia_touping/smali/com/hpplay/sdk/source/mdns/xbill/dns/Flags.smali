.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AA:B = 0x5t

.field public static final AD:B = 0xat

.field public static final CD:B = 0xbt

.field public static final DO:I = 0x8000

.field public static final QR:B = 0x0t

.field public static final RA:B = 0x8t

.field public static final RD:B = 0x7t

.field public static final TC:B = 0x6t

.field private static flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "DNS Header Flag"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 38
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 39
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "FLAG"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 41
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x0

    const-string v2, "qr"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 42
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "aa"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 43
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x6

    const-string v2, "tc"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 44
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x7

    const-string v2, "rd"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 45
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "ra"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 46
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xa

    const-string v2, "ad"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 47
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xb

    const-string v2, "cd"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isFlag(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 22
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v1, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->check(I)V

    .line 23
    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0xc

    if-ge p0, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Flags;->flags:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
