.class public interface abstract Lcom/hpplay/sdk/source/mdns/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_MULTICAST_DNS_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final BROWSE_DOMAIN_NAME:Ljava/lang/String; = "b._dns-sd._udp"

.field public static final CACHE_FLUSH:I = 0x8000

.field public static final DEFAULT_A_TTL:J = 0x78L

.field public static final DEFAULT_BROWSE_DOMAIN_NAME:Ljava/lang/String; = "db._dns-sd._udp"

.field public static final DEFAULT_IPv4_ADDRESS:Ljava/lang/String; = "224.0.0.251"

.field public static final DEFAULT_IPv6_ADDRESS:Ljava/lang/String; = "FF02::FB"

.field public static final DEFAULT_OTHER_TTL:J = 0x1194L

.field public static final DEFAULT_PORT:I = 0x14e9

.field public static final DEFAULT_PTR_TTL:J = 0x1194L

.field public static final DEFAULT_REGISTRATION_DOMAIN_NAME:Ljava/lang/String; = "dr._dns-sd._udp"

.field public static final DEFAULT_RR_WITHOUT_HOST_TTL:J = 0x1194L

.field public static final DEFAULT_RR_WITH_HOST_TTL:J = 0x78L

.field public static final DEFAULT_SRV_TTL:J = 0x78L

.field public static final DEFAULT_TXT_TTL:J = 0x1194L

.field public static final IPv4_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final IPv6_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public static final LEGACY_BROWSE_DOMAIN_NAME:Ljava/lang/String; = "lb._dns-sd._udp"

.field public static final LINK_LOCAL_DOMAIN:Ljava/lang/String; = "local."

.field public static final REGISTRATION_DOMAIN_NAME:Ljava/lang/String; = "r._dns-sd._udp"

.field public static final SERVICES_NAME:Ljava/lang/String; = "_services._dns-sd._udp"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const-string v1, "local."

    .line 16
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "254.169.in-addr.arpa."

    .line 17
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "8.e.f.ip6.arpa."

    .line 18
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "9.e.f.ip6.arpa."

    .line 19
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "a.e.f.ip6.arpa."

    .line 20
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "b.e.f.ip6.arpa."

    .line 21
    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->ALL_MULTICAST_DNS_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 27
    new-array v0, v5, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const-string v1, "local."

    .line 29
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "254.169.in-addr.arpa."

    .line 30
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->IPv4_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const-string v1, "local."

    .line 35
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "8.e.f.ip6.arpa."

    .line 36
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "9.e.f.ip6.arpa."

    .line 37
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "a.e.f.ip6.arpa."

    .line 38
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "b.e.f.ip6.arpa."

    .line 39
    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/hpplay/sdk/source/mdns/Constants;->IPv6_MULTICAST_DOMAINS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 33
    return-void
.end method
