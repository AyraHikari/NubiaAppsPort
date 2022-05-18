.class public Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;,
        Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field ctts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private currentScSize:I

.field private determineFrameRate:Z

.field frameNrInGop:I

.field private frametick:I

.field private height:I

.field private lang:Ljava/lang/String;

.field pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

.field pictureParameterSetList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field private prevScSize:I

.field readSamples:Z

.field private reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field sdtp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

.field seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

.field seqParameterSetList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field stss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field stts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private timescale:I

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 30
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 33
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 34
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    .line 35
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    .line 36
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    const-string v0, "und"

    .line 38
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 18
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 21
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 22
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    .line 23
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    .line 24
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    const-string v0, "und"

    .line 26
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 2
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 5
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 6
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    .line 7
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    .line 8
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    const-string v1, "und"

    .line 10
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    const/16 p2, 0x3e8

    if-le p3, p2, :cond_0

    .line 12
    iput p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    .line 13
    iput p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    .line 14
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    .line 15
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timescale must be specified in milliseconds!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private cleanBuffer([B)Ljava/io/ByteArrayInputStream;
    .locals 6

    .line 1
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 3
    aget-byte v4, p1, v2

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 4
    aput-byte v1, v0, v3

    add-int/lit8 v4, v3, 0x1

    .line 5
    aput-byte v1, v0, v4

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 6
    :cond_0
    aget-byte v4, p1, v2

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0, v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p1
.end method

.method private configureFramerate()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->determineFrameRate:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->vuiParams:Lcom/googlecode/mp4parser/h264/model/VUIParameters;

    const/16 v1, 0xe10

    const v2, 0x15f90

    if-eqz v0, :cond_1

    .line 3
    iget v3, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->time_scale:I

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    .line 4
    iget v0, v0, Lcom/googlecode/mp4parser/h264/model/VUIParameters;->num_units_in_tick:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    if-eqz v3, :cond_0

    if-nez v0, :cond_2

    .line 5
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: vuiParams contain invalid values: time_scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and frame_tick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Setting frame rate to 25fps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    .line 7
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Warning: Can\'t determine frame rate. Guessing 25 fps"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    iput v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    .line 10
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    :cond_2
    :goto_0
    return-void
.end method

.method private createSample(Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-array v1, v2, [B

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v1
.end method

.method private findNextStartcode()Z
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->read()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x1

    .line 3
    aget-byte v5, v1, v3

    aput-byte v5, v1, v4

    const/4 v5, 0x2

    .line 4
    aget-byte v6, v1, v5

    aput-byte v6, v1, v3

    const/4 v6, 0x3

    .line 5
    aget-byte v7, v1, v6

    aput-byte v7, v1, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 6
    aget-byte v2, v1, v4

    if-nez v2, :cond_1

    aget-byte v2, v1, v3

    if-nez v2, :cond_1

    aget-byte v2, v1, v5

    if-nez v2, :cond_1

    aget-byte v2, v1, v6

    if-ne v2, v3, :cond_1

    .line 7
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->prevScSize:I

    .line 8
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    return v3

    .line 9
    :cond_1
    aget-byte v2, v1, v4

    if-nez v2, :cond_0

    aget-byte v2, v1, v3

    if-nez v2, :cond_0

    aget-byte v2, v1, v5

    if-ne v2, v3, :cond_0

    .line 10
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->prevScSize:I

    .line 11
    iput v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    return v3

    :cond_2
    return v4

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private handleNALUnit(II[B)Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;
    .locals 1

    packed-switch p2, :pswitch_data_0

    .line 1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown NAL unit type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    goto :goto_0

    .line 3
    :pswitch_0
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->END:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 4
    aget-byte p1, p3, p1

    shr-int/lit8 p1, p1, 0x5

    .line 5
    sget-object p2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Access unit delimiter type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 9
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    .line 10
    invoke-static {p1}, Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    .line 11
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    goto :goto_0

    .line 13
    :pswitch_3
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    if-nez p1, :cond_1

    .line 14
    invoke-direct {p0, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer([B)Ljava/io/ByteArrayInputStream;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    .line 16
    invoke-static {p1}, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->read(Ljava/io/InputStream;)Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    .line 17
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {p1, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->configureFramerate()V

    .line 19
    :cond_1
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->IGNORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    goto :goto_0

    .line 20
    :pswitch_4
    new-instance p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    invoke-direct {p0, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer([B)Ljava/io/ByteArrayInputStream;

    move-result-object p2

    iget-object p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    invoke-direct {p1, p0, p2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    .line 21
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->BUFFER:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    goto :goto_0

    .line 22
    :pswitch_5
    sget-object p1, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;->STORE:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;Ljava/io/InputStream;Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stts:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ctts:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sdtp:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readVariables()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 10
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v0, "avc1"

    invoke-direct {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->setDataReferenceIndex(I)V

    const/16 v1, 0x18

    .line 12
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 13
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    const-wide/high16 v1, 0x4052000000000000L    # 72.0

    .line 14
    invoke-virtual {p1, v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 15
    invoke-virtual {p1, v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 16
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 17
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    const-string v1, "AVC Coding"

    .line 18
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setCompressorname(Ljava/lang/String;)V

    .line 19
    new-instance v1, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;-><init>()V

    .line 20
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 21
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSetList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    .line 22
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->level_idc:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setAvcLevelIndication(I)V

    .line 23
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->profile_idc:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setAvcProfileIndication(I)V

    .line 24
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_luma_minus8:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 25
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->bit_depth_chroma_minus8:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 26
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v2, v2, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setChromaFormat(I)V

    .line 27
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setConfigurationVersion(I)V

    const/4 v2, 0x3

    .line 28
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    .line 29
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSetList:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aget-byte v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 30
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 31
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/FullContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 32
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 33
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 34
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->timescale:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 36
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 37
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private readSamples()Z
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    iput-boolean v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->readSamples:Z

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->findNextStartcode()Z

    .line 4
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->mark()V

    .line 5
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->getPos()J

    move-result-wide v3

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 7
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->findNextStartcode()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 8
    iget-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v7}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->getPos()J

    move-result-wide v7

    sub-long v9, v7, v3

    .line 9
    iget v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->prevScSize:I

    int-to-long v11, v11

    sub-long/2addr v9, v11

    long-to-int v9, v9

    .line 10
    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v10}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->reset()V

    .line 11
    new-array v10, v9, [B

    .line 12
    iget-object v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v11, v10}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->read([B)J

    .line 13
    aget-byte v11, v10, v5

    shr-int/lit8 v12, v11, 0x5

    const/4 v13, 0x3

    and-int/2addr v12, v13

    and-int/lit8 v11, v11, 0x1f

    .line 14
    sget-object v14, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found startcode at "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v16, 0x4

    sub-long v3, v3, v16

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Type: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ref idc: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (size "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 15
    invoke-direct {v0, v12, v11, v10}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->handleNALUnit(II[B)Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$NALActions;

    move-result-object v3

    .line 16
    sget-object v4, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$1;->$SwitchMap$com$googlecode$mp4parser$authoring$tracks$H264TrackImpl$NALActions:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    if-eq v3, v13, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_1
    return v2

    :cond_2
    const/16 v3, 0x16

    add-int/lit8 v6, v6, 0x1

    .line 17
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->createSample(Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v9, 0x5

    if-ne v11, v9, :cond_3

    const/16 v3, 0x26

    move v10, v2

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 19
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-direct {v0, v12}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->cleanBuffer([B)Ljava/io/ByteArrayInputStream;

    move-result-object v12

    .line 20
    new-instance v13, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;

    iget-object v15, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->pictureParameterSet:Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;

    invoke-direct {v13, v12, v15, v2, v10}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;-><init>(Ljava/io/InputStream;Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;Lcom/googlecode/mp4parser/h264/model/PictureParameterSet;Z)V

    .line 21
    iget-object v2, v13, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader;->slice_type:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    sget-object v10, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;->B:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SliceHeader$SliceType;

    if-ne v2, v10, :cond_4

    add-int/lit8 v3, v3, 0x4

    .line 22
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding sample with size "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " and header "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stts:Ljava/util/List;

    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v12, 0x1

    iget v10, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    int-to-long v14, v10

    invoke-direct {v5, v12, v13, v14, v15}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v11, v9, :cond_5

    .line 26
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_5
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seiMessage:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;

    iget v5, v2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->n_frames:I

    const/4 v9, 0x0

    if-nez v5, :cond_6

    .line 28
    iput v9, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    .line 29
    :cond_6
    iget-boolean v10, v2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->clock_timestamp_flag:Z

    if-eqz v10, :cond_7

    .line 30
    iget v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    sub-int/2addr v5, v2

    goto :goto_2

    .line 31
    :cond_7
    iget-boolean v5, v2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->removal_delay_flag:Z

    if-eqz v5, :cond_8

    .line 32
    iget v2, v2, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$SEIMessage;->dpb_removal_delay:I

    div-int/lit8 v5, v2, 0x2

    goto :goto_2

    :cond_8
    move v5, v9

    .line 33
    :goto_2
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ctts:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    iget v10, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frametick:I

    mul-int/2addr v5, v10

    const/4 v10, 0x1

    invoke-direct {v4, v10, v5}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sdtp:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;

    invoke-direct {v4, v3}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    add-int/2addr v2, v10

    iput v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->frameNrInGop:I

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    .line 36
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :goto_3
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    iget v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->currentScSize:I

    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->seek(I)J

    .line 38
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->reader:Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl$ReaderWrapper;->mark()V

    move-wide v3, v7

    move v5, v9

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    return v2
.end method

.method private readVariables()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v1, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_width_in_mbs_minus1:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    .line 2
    iget-boolean v1, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_mbs_only_flag:Z

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3
    :goto_0
    iget v3, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->pic_height_in_map_units_minus1:I

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x10

    mul-int/2addr v3, v1

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    .line 4
    iget-boolean v3, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_cropping_flag:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 5
    iget-boolean v4, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->residual_color_transform_flag:Z

    if-nez v4, :cond_1

    .line 6
    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getId()I

    move-result v3

    :cond_1
    if-eqz v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v0, v0, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubWidth()I

    move-result v0

    .line 8
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget-object v3, v3, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->chroma_format_idc:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->getSubHeight()I

    move-result v3

    mul-int/2addr v1, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 9
    :goto_1
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->seqParameterSet:Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;

    iget v5, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_left_offset:I

    iget v6, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_right_offset:I

    add-int/2addr v5, v6

    mul-int/2addr v0, v5

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->width:I

    .line 10
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    iget v3, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_top_offset:I

    iget v4, v4, Lcom/googlecode/mp4parser/h264/model/SeqParameterSet;->frame_crop_bottom_offset:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->height:I

    :cond_3
    return v2
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->ctts:Ljava/util/List;

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "vide"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .line 2
    new-instance v0, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sdtp:Ljava/util/List;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->stss:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public printAccessUnitDelimiter([B)V
    .locals 3

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/H264TrackImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access unit delimiter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    shr-int/lit8 p1, p1, 0x5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method
