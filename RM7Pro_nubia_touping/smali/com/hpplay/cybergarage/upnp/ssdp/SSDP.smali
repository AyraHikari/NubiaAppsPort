.class public Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "239.255.255.250"

.field public static final DEFAULT_MSEARCH_MX:I = 0x3

.field private static IPV6_ADDRESS:Ljava/lang/String; = null

.field public static final IPV6_ADMINISTRATIVE_ADDRESS:Ljava/lang/String; = "FF04::C"

.field public static final IPV6_GLOBAL_ADDRESS:Ljava/lang/String; = "FF0E::C"

.field public static final IPV6_LINK_LOCAL_ADDRESS:Ljava/lang/String; = "FF02::C"

.field public static final IPV6_SITE_LOCAL_ADDRESS:Ljava/lang/String; = "FF05::C"

.field public static final IPV6_SUBNET_ADDRESS:Ljava/lang/String; = "FF03::C"

.field public static final PORT:I = 0x76c

.field public static final RECV_MESSAGE_BUFSIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Cyber-SSDP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "FF02::C"

    invoke-static {v0}, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->setIPv6Address(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->IPV6_ADDRESS:Ljava/lang/String;

    return-object v0
.end method

.method public static final getLeaseTime(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    const-string v1, "max-age"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 91
    if-ltz v2, :cond_1

    .line 92
    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 93
    if-gez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 96
    :cond_0
    :try_start_0
    const-string v3, "="

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string v2, "Cyber-SSDP"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final setIPv6Address(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    sput-object p0, Lcom/hpplay/cybergarage/upnp/ssdp/SSDP;->IPV6_ADDRESS:Ljava/lang/String;

    .line 62
    return-void
.end method
