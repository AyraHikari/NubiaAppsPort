.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BADKEY:I = 0x11

.field public static final BADMODE:I = 0x13

.field public static final BADSIG:I = 0x10

.field public static final BADTIME:I = 0x12

.field public static final BADVERS:I = 0x10

.field public static final FORMERR:I = 0x1

.field public static final NOERROR:I = 0x0

.field public static final NOTAUTH:I = 0x9

.field public static final NOTIMP:I = 0x4

.field public static final NOTIMPL:I = 0x4

.field public static final NOTZONE:I = 0xa

.field public static final NXDOMAIN:I = 0x3

.field public static final NXRRSET:I = 0x8

.field public static final REFUSED:I = 0x5

.field public static final SERVFAIL:I = 0x2

.field public static final YXDOMAIN:I = 0x6

.field public static final YXRRSET:I = 0x7

.field private static rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

.field private static tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 46
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "DNS Rcode"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 47
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "TSIG rcode"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 48
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 49
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 51
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x0

    const-string v2, "NOERROR"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 52
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "FORMERR"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 53
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "SERVFAIL"

    invoke-virtual {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 54
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "NXDOMAIN"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 55
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "NOTIMP"

    invoke-virtual {v0, v5, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 56
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "NOTIMPL"

    invoke-virtual {v0, v5, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 57
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "REFUSED"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 58
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x6

    const-string v2, "YXDOMAIN"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 59
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x7

    const-string v2, "YXRRSET"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 60
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "NXRRSET"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 61
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x9

    const-string v2, "NOTAUTH"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 62
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xa

    const-string v2, "NOTZONE"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 63
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "BADVERS"

    invoke-virtual {v0, v6, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 64
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 65
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "RESERVED"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 67
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->addAll(Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;)V

    .line 68
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "BADSIG"

    invoke-virtual {v0, v6, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 69
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x11

    const-string v2, "BADKEY"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 70
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x12

    const-string v2, "BADTIME"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 71
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x13

    const-string v2, "BADMODE"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 72
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

.method public static TSIGstring(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->tsigrcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->rcodes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
