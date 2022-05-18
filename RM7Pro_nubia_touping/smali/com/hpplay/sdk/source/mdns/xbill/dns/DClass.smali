.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass$DClassMnemonic;
    }
.end annotation


# static fields
.field public static final ANY:I = 0xff

.field public static final CH:I = 0x3

.field public static final CHAOS:I = 0x3

.field public static final HESIOD:I = 0x4

.field public static final HS:I = 0x4

.field public static final IN:I = 0x1

.field public static final NONE:I = 0xfe

.field private static classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 48
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass$DClassMnemonic;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass$DClassMnemonic;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    .line 49
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/4 v1, 0x1

    const-string v2, "IN"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 50
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "CH"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 51
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "CHAOS"

    invoke-virtual {v0, v3, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 52
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "HS"

    invoke-virtual {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 53
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const-string v1, "HESIOD"

    invoke-virtual {v0, v4, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->addAlias(ILjava/lang/String;)V

    .line 54
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xfe

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 55
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    const/16 v1, 0xff

    const-string v2, "ANY"

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->add(ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static check(I)V
    .locals 1

    .prologue
    .line 24
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    .line 25
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/InvalidDClassException;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/InvalidDClassException;-><init>(I)V

    throw v0

    .line 27
    :cond_1
    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->classes:Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;

    invoke-virtual {v0, p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
