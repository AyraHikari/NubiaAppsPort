.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final ANY:I = 0xff

.field private static protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 117
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "KEY protocol"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 131
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 132
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 133
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 134
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "TLS"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 135
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "EMAIL"

    invoke-virtual {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 136
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "DNSSEC"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 137
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x4

    const-string v2, "IPSEC"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 138
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "ANY"

    invoke-virtual {v0, v5, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 139
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYRecord$Protocol;->protocols:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
