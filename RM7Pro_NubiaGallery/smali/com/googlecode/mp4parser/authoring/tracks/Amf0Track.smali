.class public Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "Amf0Track.java"


# instance fields
.field rawSamples:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 34
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track$1;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    .line 36
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 45
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    .line 46
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 47
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 48
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 49
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-string v0, "eng"

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    return-void
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 70
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 73
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 74
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 75
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    const-wide/16 v7, 0x1

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v5

    add-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_1

    .line 78
    :cond_0
    new-instance v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v2, v7, v8, v5, v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "data"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 109
    new-instance v0, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;-><init>()V

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
    .locals 3

    .line 61
    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    .line 62
    new-instance v1, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;-><init>()V

    const/4 v2, 0x1

    .line 63
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->setDataReferenceIndex(I)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 54
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->rawSamples:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 55
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
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

    .line 101
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method
