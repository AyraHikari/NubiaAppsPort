.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Code"
.end annotation


# static fields
.field public static final CLIENT_SUBNET:I = 0x8

.field public static final NSID:I = 0x3

.field private static codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "EDNS Option Codes"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 27
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setMaximum(I)V

    .line 28
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "CODE"

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setPrefix(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->setNumericAllowed(Z)V

    .line 30
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x3

    const-string v2, "NSID"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 31
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0x8

    const-string v2, "CLIENT_SUBNET"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption$Code;->codes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
