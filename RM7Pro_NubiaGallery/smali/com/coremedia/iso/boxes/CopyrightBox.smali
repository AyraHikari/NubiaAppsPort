.class public Lcom/coremedia/iso/boxes/CopyrightBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "CopyrightBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "cprt"


# instance fields
.field private copyright:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "cprt"

    .line 42
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 67
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CopyrightBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 68
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->language:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->copyright:Ljava/lang/String;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 74
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CopyrightBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 75
    iget-object v0, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->language:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->writeIso639(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->copyright:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->copyright:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->language:Ljava/lang/String;

    return-object v0
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->copyright:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coremedia/iso/boxes/CopyrightBox;->language:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyrightBox[language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/CopyrightBox;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";copyright="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/CopyrightBox;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
