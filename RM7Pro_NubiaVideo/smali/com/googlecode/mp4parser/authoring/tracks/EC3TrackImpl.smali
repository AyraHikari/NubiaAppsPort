.class public Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bitrate:I

.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field frameSize:I

.field private inputStream:Ljava/io/BufferedInputStream;

.field private lang:Ljava/lang/String;

.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field samplerate:I

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
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

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 9
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    const-string v0, "und"

    .line 12
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 2
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    const-string v0, "und"

    .line 5
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    .line 7
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/16 p1, 0x2710

    .line 2
    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 p1, 0x0

    move v0, p1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 3
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->readVariables()Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 5
    iget v5, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-eq v5, v1, :cond_1

    iget v4, v4, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    iget v5, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    if-ne v4, v5, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    iget v2, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 10
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    .line 11
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    iget v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    .line 12
    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 13
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v2, "ec-3"

    invoke-direct {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 15
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->setDataReferenceIndex(I)V

    const/16 v2, 0x10

    .line 17
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 18
    new-instance v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;-><init>()V

    .line 19
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 20
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 21
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 22
    iget v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-ne v7, v1, :cond_5

    .line 23
    iget v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v8, v3, v7

    add-int/2addr v8, v1

    aput v8, v3, v7

    .line 24
    iget v6, v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    shr-int/lit8 v8, v6, 0x6

    and-int/lit16 v8, v8, 0x100

    shr-int/lit8 v6, v6, 0x5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v8

    aput v6, v4, v7

    goto :goto_2

    .line 25
    :cond_6
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    .line 26
    iget v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-eq v7, v1, :cond_7

    .line 27
    new-instance v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    invoke-direct {v7}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;-><init>()V

    .line 28
    iget v8, v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    iput v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    .line 29
    iget v8, v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    iput v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    .line 30
    iget v8, v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    iput v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    .line 31
    iget v8, v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    iput v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    .line 32
    iget v8, v6, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    iput v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    .line 33
    iput p1, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved:I

    .line 34
    iget v8, v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    aget v9, v3, v8

    iput v9, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    .line 35
    aget v8, v4, v8

    iput v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->chan_loc:I

    .line 36
    iput p1, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->reserved2:I

    .line 37
    invoke-virtual {v2, v7}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->addEntry(Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    .line 38
    :cond_7
    iget v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    iget v8, v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bitrate:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    .line 39
    iget v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    iget v6, v6, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    goto :goto_3

    .line 40
    :cond_8
    iget p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v2, p1}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->setDataRate(I)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 42
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/FullContainerBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 43
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 44
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 45
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 47
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    .line 48
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->readSamples()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 49
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 50
    :cond_a
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private readSamples()Z
    .locals 8

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    .line 3
    new-array v0, v2, [B

    .line 4
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .line 5
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->frameSize:I

    if-ne v2, v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    new-instance v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x600

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private readVariables()Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;
    .locals 15

    const/16 v0, 0xc8

    new-array v1, v0, [B

    .line 1
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    return-object v4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x10

    .line 6
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v2

    const/16 v5, 0xb77

    if-eq v2, v5, :cond_1

    return-object v4

    .line 7
    :cond_1
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;-><init>()V

    const/4 v5, 0x2

    .line 8
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    iput v6, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    const/4 v6, 0x3

    .line 9
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->substreamid:I

    const/16 v7, 0xb

    .line 10
    invoke-virtual {v1, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    mul-int/2addr v7, v5

    .line 11
    iput v7, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    .line 12
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    iput v7, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    const/4 v9, -0x1

    if-ne v7, v6, :cond_2

    .line 13
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v9

    move v7, v6

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    :goto_0
    const/4 v10, 0x6

    if-eqz v7, :cond_6

    if-eq v7, v8, :cond_5

    if-eq v7, v5, :cond_4

    if-eq v7, v6, :cond_3

    move v11, v3

    goto :goto_1

    :cond_3
    move v11, v10

    goto :goto_1

    :cond_4
    move v11, v6

    goto :goto_1

    :cond_5
    move v11, v5

    goto :goto_1

    :cond_6
    move v11, v8

    .line 15
    :goto_1
    iget v12, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    div-int v13, v10, v11

    mul-int/2addr v12, v13

    iput v12, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    .line 16
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v12

    iput v12, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    .line 17
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v12

    iput v12, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    const/4 v12, 0x5

    .line 18
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    iput v13, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsid:I

    .line 19
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 20
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    const/16 v14, 0x8

    if-ne v8, v13, :cond_7

    .line 21
    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 22
    :cond_7
    iget v13, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-nez v13, :cond_8

    .line 23
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 24
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    if-ne v8, v13, :cond_8

    .line 25
    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 26
    :cond_8
    iget v13, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-ne v8, v13, :cond_9

    .line 27
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v13

    if-ne v8, v13, :cond_9

    .line 28
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->chanmap:I

    .line 29
    :cond_9
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_23

    .line 30
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-le v0, v5, :cond_a

    .line 31
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 32
    :cond_a
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    and-int/lit8 v13, v0, 0x1

    if-ne v8, v13, :cond_b

    if-le v0, v5, :cond_b

    .line 33
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 34
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 35
    :cond_b
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    const/4 v13, 0x4

    and-int/2addr v0, v13

    if-lez v0, :cond_c

    .line 36
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 37
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 38
    :cond_c
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    if-ne v8, v0, :cond_d

    .line 39
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_d

    .line 40
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 41
    :cond_d
    iget v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->strmtyp:I

    if-nez v0, :cond_23

    .line 42
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_e

    .line 43
    invoke-virtual {v1, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 44
    :cond_e
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-nez v0, :cond_f

    .line 45
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_f

    .line 46
    invoke-virtual {v1, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 47
    :cond_f
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_10

    .line 48
    invoke-virtual {v1, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 49
    :cond_10
    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_11

    .line 50
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    goto/16 :goto_3

    :cond_11
    if-ne v5, v0, :cond_12

    const/16 v0, 0xc

    .line 51
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    goto/16 :goto_3

    :cond_12
    if-ne v6, v0, :cond_1e

    .line 52
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    .line 53
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_1b

    .line 54
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 55
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_13

    .line 56
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 57
    :cond_13
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_14

    .line 58
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 59
    :cond_14
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_15

    .line 60
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 61
    :cond_15
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_16

    .line 62
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 63
    :cond_16
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_17

    .line 64
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 65
    :cond_17
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_18

    .line 66
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 67
    :cond_18
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_19

    .line 68
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 69
    :cond_19
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_1b

    .line 70
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_1a

    .line 71
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 72
    :cond_1a
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_1b

    .line 73
    invoke-virtual {v1, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 74
    :cond_1b
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_1c

    .line 75
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 76
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_1c

    const/4 v10, 0x7

    .line 77
    invoke-virtual {v1, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 78
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v10

    if-ne v8, v10, :cond_1c

    .line 79
    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_1c
    move v10, v3

    :goto_2
    add-int/lit8 v13, v0, 0x2

    if-ge v10, v13, :cond_1d

    .line 80
    invoke-virtual {v1, v14}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 81
    :cond_1d
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->byteSync()I

    .line 82
    :cond_1e
    :goto_3
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-ge v0, v5, :cond_23

    .line 83
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    const/16 v10, 0xe

    if-ne v8, v0, :cond_1f

    .line 84
    invoke-virtual {v1, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 85
    :cond_1f
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    if-nez v0, :cond_20

    .line 86
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_20

    .line 87
    invoke-virtual {v1, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 88
    :cond_20
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_23

    if-nez v7, :cond_21

    .line 89
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    goto :goto_5

    :cond_21
    move v0, v3

    :goto_4
    if-ge v0, v11, :cond_23

    .line 90
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v7

    if-ne v8, v7, :cond_22

    .line 91
    invoke-virtual {v1, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 92
    :cond_23
    :goto_5
    invoke-virtual {v1, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    if-ne v8, v0, :cond_24

    .line 93
    invoke-virtual {v1, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    iput v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->bsmod:I

    .line 94
    :cond_24
    iget v0, v2, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->fscod:I

    if-eqz v0, :cond_2c

    if-eq v0, v8, :cond_2b

    if-eq v0, v5, :cond_2a

    if-eq v0, v6, :cond_25

    goto :goto_6

    :cond_25
    if-eqz v9, :cond_29

    if-eq v9, v8, :cond_28

    if-eq v9, v5, :cond_27

    if-eq v9, v6, :cond_26

    goto :goto_6

    .line 95
    :cond_26
    iput v3, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto :goto_6

    :cond_27
    const/16 v0, 0x3e80

    .line 96
    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto :goto_6

    :cond_28
    const/16 v0, 0x5622

    .line 97
    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto :goto_6

    :cond_29
    const/16 v0, 0x5dc0

    .line 98
    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto :goto_6

    :cond_2a
    const/16 v0, 0x7d00

    .line 99
    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto :goto_6

    :cond_2b
    const v0, 0xac44

    .line 100
    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    goto :goto_6

    :cond_2c
    const v0, 0xbb80

    .line 101
    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    .line 102
    :goto_6
    iget v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->samplerate:I

    if-nez v0, :cond_2d

    return-object v4

    :cond_2d
    int-to-double v0, v0

    const-wide/high16 v3, 0x4098000000000000L    # 1536.0

    div-double/2addr v0, v3

    .line 103
    iget v3, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->frameSize:I

    int-to-double v3, v3

    mul-double/2addr v0, v3

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, v2, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl$BitStreamInfo;->bitrate:I

    return-object v2
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

    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "soun"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .line 2
    new-instance v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EC3TrackImpl{bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->samplerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/EC3TrackImpl;->entries:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
