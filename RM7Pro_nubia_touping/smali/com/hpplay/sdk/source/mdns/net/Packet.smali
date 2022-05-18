.class public Lcom/hpplay/sdk/source/mdns/net/Packet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static sequence:I


# instance fields
.field private final address:Ljava/net/InetAddress;

.field private final data:[B

.field protected id:I

.field private final port:I


# direct methods
.method protected constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 6

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/net/Packet;-><init>(Ljava/net/InetAddress;I[BII)V

    .line 18
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;I[BII)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Lcom/hpplay/sdk/source/mdns/net/Packet;->sequence:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/hpplay/sdk/source/mdns/net/Packet;->sequence:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->id:I

    .line 22
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->address:Ljava/net/InetAddress;

    .line 23
    iput p2, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->port:I

    .line 24
    iput-object p3, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->data:[B

    .line 25
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->data:[B

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->port:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->address:Ljava/net/InetAddress;

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/net/Packet;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method
