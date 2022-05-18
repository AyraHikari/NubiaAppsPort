.class public Lcom/coremedia/iso/IsoFile;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "IsoFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected boxParser:Lcom/coremedia/iso/BoxParser;

.field byteChannel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, ""

    .line 40
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 44
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 45
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 46
    invoke-virtual {p0}, Lcom/coremedia/iso/IsoFile;->createBoxParser()Lcom/coremedia/iso/BoxParser;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 47
    invoke-direct {p0}, Lcom/coremedia/iso/IsoFile;->parse()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 51
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 52
    iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 53
    invoke-virtual {p0}, Lcom/coremedia/iso/IsoFile;->createBoxParser()Lcom/coremedia/iso/BoxParser;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 54
    invoke-direct {p0}, Lcom/coremedia/iso/IsoFile;->parse()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/BoxParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 58
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 59
    iput-object p1, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 60
    iput-object p2, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 61
    invoke-direct {p0}, Lcom/coremedia/iso/IsoFile;->parse()V

    return-void
.end method

.method public static bytesToFourCC([B)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 129
    fill-array-data v1, :array_0

    if-eqz p0, :cond_0

    .line 131
    array-length v2, p0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 136
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Required character encoding is missing"

    invoke-direct {v0, v1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static fourCCtoBytes(Ljava/lang/String;)[B
    .locals 4
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    .line 120
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 121
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxParser:Lcom/coremedia/iso/BoxParser;

    iget-object v3, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v2, v3, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v3, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    return-void
.end method

.method protected createBoxParser()Lcom/coremedia/iso/BoxParser;
    .locals 2

    .line 67
    new-instance v0, Lcom/coremedia/iso/PropertyBoxParserImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/coremedia/iso/PropertyBoxParserImpl;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 180
    instance-of v2, p1, Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_0

    .line 181
    move-object v2, p1

    check-cast v2, Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    .line 182
    invoke-interface {v1, p1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 183
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {v1, p1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getIsoFile()Lcom/coremedia/iso/IsoFile;
    .locals 0

    return-object p0
.end method

.method public getMovieBox()Lcom/coremedia/iso/boxes/MovieBox;
    .locals 3
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 170
    instance-of v2, v1, Lcom/coremedia/iso/boxes/MovieBox;

    if-eqz v2, :cond_0

    .line 171
    check-cast v1, Lcom/coremedia/iso/boxes/MovieBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumOfBytesToFirstChild()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSize()J
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 150
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/AbstractBoxParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance p1, Ljava/io/IOException;

    const-string p2, "This method is not meant to be called. Use #parse() directly."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/googlecode/mp4parser/annotations/DoNotParseDetail;
    .end annotation

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsoFile["

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "unparsed"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ";"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/coremedia/iso/IsoFile;->boxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, "]"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
