.class public Lnet/fortuna/ical4j/util/InetAddressHostInfo;
.super Ljava/lang/Object;
.source "InetAddressHostInfo.java"

# interfaces
.implements Lnet/fortuna/ical4j/util/HostInfo;


# instance fields
.field private final hostAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lnet/fortuna/ical4j/util/InetAddressHostInfo;->findNonLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/util/InetAddressHostInfo;-><init>(Ljava/net/InetAddress;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lnet/fortuna/ical4j/util/InetAddressHostInfo;->hostAddress:Ljava/net/InetAddress;

    .line 59
    return-void
.end method

.method private static findNonLoopbackAddress()Ljava/net/InetAddress;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 75
    .local v2, "enumInterfaceAddress":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 79
    .local v3, "netIf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 80
    .local v1, "enumInetAdress":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 82
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "enumInetAdress":Ljava/util/Enumeration;
    .end local v3    # "netIf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/fortuna/ical4j/util/InetAddressHostInfo;->hostAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
