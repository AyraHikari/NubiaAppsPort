.class public Lcom/coremedia/iso/boxes/XmlBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "XmlBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "xml "


# instance fields
.field xml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "xml "

    .line 17
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 35
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/XmlBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 41
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/XmlBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 42
    iget-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public getXml()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;

    return-object v0
.end method

.method public setXml(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XmlBox{xml=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/XmlBox;->xml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
