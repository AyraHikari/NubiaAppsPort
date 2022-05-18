.class public Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;
.super Ljava/lang/Object;
.source "ChangeTimeScaleTrack.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


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

.field source:Lcom/googlecode/mp4parser/authoring/Track;

.field timeScale:J

.field tts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;J[J)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    .line 51
    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->timeScale:J

    long-to-double v0, p2

    .line 52
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 53
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->adjustCtts(Ljava/util/List;D)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->ctts:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, p4, p2, p3}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->getTimes(Lcom/googlecode/mp4parser/authoring/Track;[JJ)[J

    move-result-object p1

    invoke-static {v2, v0, v1, p4, p1}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->adjustTts(Ljava/util/List;D[J[J)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->tts:Ljava/util/List;

    return-void
.end method

.method static adjustCtts(Ljava/util/List;D)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;D)",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 146
    new-instance v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v3

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v3, v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static adjustTts(Ljava/util/List;D[J[J)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;D[J[J)",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-static/range {p0 .. p0}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v0

    .line 159
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move v5, v2

    .line 160
    :goto_0
    array-length v6, v0

    if-gt v5, v6, :cond_3

    add-int/lit8 v6, v5, -0x1

    .line 161
    aget-wide v6, v0, v6

    long-to-double v6, v6

    mul-double v6, v6, p1

    .line 163
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 166
    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    add-int/lit8 v9, v5, 0x1

    int-to-long v10, v9

    move-object/from16 v12, p3

    .line 168
    invoke-static {v12, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    if-ltz v10, :cond_0

    .line 170
    aget-wide v13, p4, v10

    cmp-long v11, v13, v3

    if-eqz v11, :cond_0

    .line 171
    aget-wide v13, p4, v10

    add-long v15, v3, v6

    sub-long/2addr v13, v15

    .line 172
    sget-object v11, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->LOG:Ljava/util/logging/Logger;

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v15, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v15, v2

    const/4 v5, 0x2

    aget-wide v16, p4, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v15, v5

    const/4 v5, 0x3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v15, v5

    const-string v5, "Sample %d %d / %d - correct by %d"

    invoke-static {v5, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    add-long/2addr v6, v13

    :cond_0
    add-long/2addr v3, v6

    const-wide/16 v10, 0x1

    if-nez v8, :cond_1

    .line 178
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v5, v10, v11, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v13

    cmp-long v5, v13, v6

    if-eqz v5, :cond_2

    .line 180
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v5, v10, v11, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v5

    add-long/2addr v5, v10

    invoke-virtual {v8, v5, v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    :goto_1
    move v5, v9

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static getTimes(Lcom/googlecode/mp4parser/authoring/Track;[JJ)[J
    .locals 20

    move-object/from16 v0, p1

    .line 58
    array-length v1, v0

    new-array v1, v1, [J

    .line 59
    new-instance v2, Ljava/util/LinkedList;

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v7, v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_0
    int-to-long v14, v7

    .line 68
    array-length v3, v0

    sub-int/2addr v3, v5

    aget-wide v3, v0, v3

    cmp-long v3, v14, v3

    if-gtz v3, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 69
    aget-wide v3, v0, v6

    cmp-long v3, v14, v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v6, 0x1

    mul-long v14, v8, p2

    .line 70
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v18

    div-long v14, v14, v18

    aput-wide v14, v1, v6

    move v6, v3

    :cond_0
    const-wide/16 v3, 0x1

    sub-long v14, v10, v3

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    if-nez v10, :cond_1

    .line 73
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 74
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v11

    sub-long/2addr v11, v3

    .line 75
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v3

    move-wide v10, v11

    move-wide v12, v3

    goto :goto_1

    :cond_1
    move-wide v10, v14

    :goto_1
    add-long/2addr v8, v12

    goto :goto_0

    :cond_2
    return-object v1
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

    .line 92
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->ctts:Ljava/util/List;

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

    .line 88
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->tts:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

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

    .line 100
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

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

    .line 130
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 105
    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->timeScale:J

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInMovie()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v0

    return v0
.end method

.method public isInPoster()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v0

    return v0
.end method

.method public isInPreview()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeTimeScaleTrack{source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
