.class public Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AACTrackImpl.java"


# static fields
.field public static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field avgBitRate:J

.field bitrate:I

.field bufferSizeDB:I

.field channelCount:I

.field channelconfig:I

.field private inputStream:Ljava/io/BufferedInputStream;

.field private lang:Ljava/lang/String;

.field maxBitRate:J

.field readSamples:Z

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
    .locals 22

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v3, 0x15888

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v5, 0xfa00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v7, 0xbb80

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v9, 0xac44

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v11, 0x7d00

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v13, 0x5dc0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v15, 0x5622

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x7

    move-object/from16 v17, v13

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v13, 0x3e80

    move-object/from16 v18, v15

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v19, 0x8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v13, 0x2ee0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v20, 0x9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v13, 0x2b11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v21, 0xa

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v13, 0x1f40

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v15, 0xb

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3e80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2ee0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 64
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    const-string v0, "und"

    .line 80
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 64
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    const-string v0, "und"

    .line 80
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method private parse(Ljava/io/InputStream;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    .line 94
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->stts:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readVariables()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 100
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    .line 101
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    iget p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v2

    .line 106
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v2, v0

    const-wide/16 v4, 0x0

    .line 109
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    .line 110
    :goto_0
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 111
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    int-to-long v9, v8

    add-long/2addr v4, v9

    .line 113
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v8, v8, v0

    if-lez v8, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    double-to-int v9, v0

    if-ne v8, v9, :cond_2

    move v8, v6

    move v9, v8

    .line 119
    :goto_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ge v8, v10, :cond_1

    .line 120
    invoke-virtual {p1, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    int-to-double v8, v9

    mul-double/2addr v8, v10

    .line 122
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v8, v0

    .line 123
    iget-wide v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->maxBitRate:J

    long-to-double v10, v10

    cmpl-double v10, v8, v10

    if-lez v10, :cond_2

    double-to-int v8, v8

    int-to-long v8, v8

    .line 124
    iput-wide v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->maxBitRate:J

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x8

    mul-long/2addr v4, v0

    long-to-double v0, v4

    div-double/2addr v0, v2

    double-to-int p1, v0

    int-to-long v0, p1

    .line 129
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->avgBitRate:J

    const/16 p1, 0x600

    .line 131
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->bufferSizeDB:I

    .line 133
    new-instance p1, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 134
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v0, "mp4a"

    invoke-direct {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 135
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 136
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setDataReferenceIndex(I)V

    const/16 v1, 0x10

    .line 138
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 141
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 142
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    .line 143
    invoke-virtual {v2, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 145
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    .line 146
    invoke-virtual {v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 147
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 149
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    const/16 v4, 0x40

    .line 150
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    const/4 v4, 0x5

    .line 151
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    .line 152
    iget v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->bufferSizeDB:I

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    .line 153
    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->maxBitRate:J

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 154
    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->avgBitRate:J

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 156
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    .line 157
    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    .line 158
    sget-object v0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    .line 159
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelconfig:I

    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    .line 160
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    .line 162
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 164
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 166
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 167
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 169
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 170
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 171
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    return-void

    .line 102
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 97
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private readSamples()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 247
    :cond_0
    iput-boolean v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->readSamples:Z

    const/16 v0, 0xf

    new-array v2, v0, [B

    .line 250
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, -0x1

    .line 251
    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v6, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 253
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 254
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->reset()V

    .line 255
    new-instance v5, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v5, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v4, 0xc

    .line 256
    invoke-virtual {v5, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    const/16 v6, 0xfff

    if-eq v4, v6, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x3

    .line 260
    invoke-virtual {v5, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 261
    invoke-virtual {v5, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    const/16 v6, 0xe

    .line 262
    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/16 v6, 0xd

    .line 263
    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v6

    const/16 v7, 0xb

    .line 264
    invoke-virtual {v5, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v7, 0x2

    .line 265
    invoke-virtual {v5, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 266
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->getPosition()I

    move-result v5

    int-to-double v7, v5

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    if-nez v4, :cond_2

    add-int/lit8 v5, v5, 0x2

    .line 270
    :cond_2
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    int-to-long v7, v5

    invoke-virtual {v4, v7, v8}, Ljava/io/BufferedInputStream;->skip(J)J

    sub-int/2addr v6, v5

    .line 273
    new-array v4, v6, [B

    .line 274
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 275
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->stts:Ljava/util/List;

    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x400

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    move v4, v1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private readVariables()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x64

    new-array v1, v0, [B

    .line 217
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 218
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-eq v0, v2, :cond_0

    return v3

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->inputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 222
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0xc

    .line 224
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v0

    const/16 v2, 0xfff

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x1

    .line 228
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v2, 0x2

    .line 229
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 230
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 231
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 232
    sget-object v3, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    .line 233
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    const/4 v3, 0x3

    .line 234
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    move-result v3

    iput v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelconfig:I

    .line 235
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 236
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    .line 237
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BitReaderBuffer;->readBits(I)I

    return v0
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

    .line 180
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->stts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "soun"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 208
    new-instance v0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

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

    .line 176
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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

    .line 204
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samples:Ljava/util/List;

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

    .line 196
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AACTrackImpl{samplerate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->samplerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelconfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AACTrackImpl;->channelconfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
