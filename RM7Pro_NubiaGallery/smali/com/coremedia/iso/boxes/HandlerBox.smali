.class public Lcom/coremedia/iso/boxes/HandlerBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "HandlerBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "hdlr"

.field public static final readableTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private handlerType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private shouldBeZeroButAppleWritesHereSomeValue:J

.field private zeroTerm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "odsm"

    const-string v2, "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "crsm"

    const-string v2, "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdsm"

    const-string v2, "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "m7sm"

    const-string v2, "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ocsm"

    const-string v2, "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ipsm"

    const-string v2, "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mjsm"

    const-string v2, "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mdir"

    const-string v2, "Apple Meta Data iTunes Reader"

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mp7b"

    const-string v2, "MPEG-7 binary XML"

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mp7t"

    const-string v2, "MPEG-7 XML"

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vide"

    const-string v2, "Video Track"

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "soun"

    const-string v2, "Sound Track"

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hint"

    const-string v2, "Hint Track"

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appl"

    const-string v2, "Apple specific"

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "meta"

    const-string v2, "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO"

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/HandlerBox;->readableTypes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "hdlr"

    .line 74
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 113
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/HandlerBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 114
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->shouldBeZeroButAppleWritesHereSomeValue:J

    .line 115
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->a:J

    .line 117
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->b:J

    .line 118
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->c:J

    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 120
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeReader;->readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    const-string v0, "\u0000"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z

    goto :goto_0

    .line 125
    :cond_0
    iput-boolean v1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z

    goto :goto_0

    .line 128
    :cond_1
    iput-boolean v1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z

    :goto_0
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/HandlerBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 135
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->shouldBeZeroButAppleWritesHereSomeValue:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 136
    iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->a:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 138
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->b:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 139
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->c:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    .line 140
    iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->zeroTerm:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    :goto_0
    int-to-long v0, v0

    return-wide v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->utf8StringLengthInBytes(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    goto :goto_0
.end method

.method public getHandlerType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;

    return-object v0
.end method

.method public getHumanReadableTrackType()Ljava/lang/String;
    .locals 2

    .line 99
    sget-object v0, Lcom/coremedia/iso/boxes/HandlerBox;->readableTypes:Ljava/util/Map;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Unknown Handler Type"

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setHandlerType(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->handlerType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coremedia/iso/boxes/HandlerBox;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandlerBox[handlerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/HandlerBox;->getName()Ljava/lang/String;

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
