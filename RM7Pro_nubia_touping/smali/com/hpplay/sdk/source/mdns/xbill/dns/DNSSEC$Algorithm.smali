.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Algorithm"
.end annotation


# static fields
.field private static algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 743
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "DNSSEC algorithm"

    invoke-direct {v0, v1, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 757
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 758
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 759
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "RSAMD5"

    invoke-virtual {v0, v2, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 760
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "DH"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 761
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 762
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x5

    const-string v2, "RSASHA1"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 763
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x6

    const-string v2, "DSA-NSEC3-SHA1"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 764
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x7

    const-string v2, "RSA-NSEC3-SHA1"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 765
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "RSASHA256"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 766
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xa

    const-string v2, "RSASHA512"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 767
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xc

    const-string v2, "ECC-GOST"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 768
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xd

    const-string v2, "ECDSAP256SHA256"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 769
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xe

    const-string v2, "ECDSAP384SHA384"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 770
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xfc

    const-string v2, "INDIRECT"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 771
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xfd

    const-string v2, "PRIVATEDNS"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 772
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xfe

    const-string v2, "PRIVATEOID"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 773
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->algs:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
