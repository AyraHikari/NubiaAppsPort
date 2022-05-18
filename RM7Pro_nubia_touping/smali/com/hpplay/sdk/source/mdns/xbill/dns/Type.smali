.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final A6:I = 0x26

.field public static final AAAA:I = 0x1c

.field public static final AFSDB:I = 0x12

.field public static final ANY:I = 0xff

.field public static final APL:I = 0x2a

.field public static final ATMA:I = 0x22

.field public static final AXFR:I = 0xfc

.field public static final CERT:I = 0x25

.field public static final CNAME:I = 0x5

.field public static final DHCID:I = 0x31

.field public static final DLV:I = 0x8001

.field public static final DNAME:I = 0x27

.field public static final DNSKEY:I = 0x30

.field public static final DS:I = 0x2b

.field public static final EID:I = 0x1f

.field public static final GPOS:I = 0x1b

.field public static final HINFO:I = 0xd

.field public static final IPSECKEY:I = 0x2d

.field public static final ISDN:I = 0x14

.field public static final IXFR:I = 0xfb

.field public static final KEY:I = 0x19

.field public static final KX:I = 0x24

.field public static final LOC:I = 0x1d

.field public static final MAILA:I = 0xfe

.field public static final MAILB:I = 0xfd

.field public static final MB:I = 0x7

.field public static final MD:I = 0x3

.field public static final MF:I = 0x4

.field public static final MG:I = 0x8

.field public static final MINFO:I = 0xe

.field public static final MR:I = 0x9

.field public static final MX:I = 0xf

.field public static final NAPTR:I = 0x23

.field public static final NIMLOC:I = 0x20

.field public static final NS:I = 0x2

.field public static final NSAP:I = 0x16

.field public static final NSAP_PTR:I = 0x17

.field public static final NSEC:I = 0x2f

.field public static final NSEC3:I = 0x32

.field public static final NSEC3PARAM:I = 0x33

.field public static final NULL:I = 0xa

.field public static final NXT:I = 0x1e

.field public static final OPT:I = 0x29

.field public static final PTR:I = 0xc

.field public static final PX:I = 0x1a

.field public static final RP:I = 0x11

.field public static final RRSIG:I = 0x2e

.field public static final RT:I = 0x15

.field public static final SIG:I = 0x18

.field public static final SOA:I = 0x6

.field public static final SPF:I = 0x63

.field public static final SRV:I = 0x21

.field public static final SSHFP:I = 0x2c

.field public static final TKEY:I = 0xf9

.field public static final TLSA:I = 0x34

.field public static final TSIG:I = 0xfa

.field public static final TXT:I = 0x10

.field public static final URI:I = 0x100

.field public static final WKS:I = 0xb

.field public static final X25:I = 0x13

.field private static types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    .line 146
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    const/4 v1, 0x1

    const-string v2, "A"

    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->add(ILjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 157
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    const/16 v1, 0xc

    const-string v2, "PTR"

    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->add(ILjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 161
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    const/16 v1, 0x10

    const-string v2, "TXT"

    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TXTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->add(ILjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 173
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    const/16 v1, 0x1c

    const-string v2, "AAAA"

    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->add(ILjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 178
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    const/16 v1, 0x21

    const-string v2, "SRV"

    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SRVRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->add(ILjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 199
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    const/16 v1, 0xfa

    const-string v2, "TSIG"

    new-instance v3, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    invoke-direct {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->add(ILjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)V

    .line 204
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    const/16 v1, 0xff

    const-string v2, "ANY"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 207
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static check(I)V
    .locals 1

    .prologue
    .line 41
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/InvalidDClassException;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/InvalidDClassException;-><init>(I)V

    throw v0

    .line 44
    :cond_1
    return-void
.end method

.method static getProto(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->getProto(I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static isRR(I)Z
    .locals 1

    .prologue
    .line 67
    sparse-switch p0, :sswitch_data_0

    .line 78
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 76
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
        0xfd -> :sswitch_0
        0xfe -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->value(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static value(Ljava/lang/String;Z)I
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 53
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 54
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->types:Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type$TypeMnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    .line 55
    :cond_0
    return v0
.end method
