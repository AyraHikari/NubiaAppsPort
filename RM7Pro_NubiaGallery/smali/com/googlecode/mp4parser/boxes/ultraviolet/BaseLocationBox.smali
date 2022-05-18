.class public Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "BaseLocationBox.java"


# instance fields
.field baseLocation:Ljava/lang/String;

.field purchaseLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "bloc"

    .line 33
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "bloc"

    .line 37
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 65
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 70
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 88
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;

    .line 90
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 91
    :cond_3
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    iget-object p1, p1, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getBaseLocation()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 75
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 76
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x100

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 80
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x404

    return-wide v0
.end method

.method public getPurchaseLocation()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setBaseLocation(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->baseLocation:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseLocation(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/ultraviolet/BaseLocationBox;->purchaseLocation:Ljava/lang/String;

    return-void
.end method
