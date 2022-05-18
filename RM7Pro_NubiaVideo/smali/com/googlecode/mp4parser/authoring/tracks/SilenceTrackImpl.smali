.class public Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Track;


# instance fields
.field entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

.field samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field source:Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;J)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->samples:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

    .line 4
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/AbstractBox;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v0

    mul-long/2addr v0, p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    .line 6
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    mul-long/2addr v4, p2

    div-long/2addr v4, v0

    div-long/2addr v4, v2

    .line 7
    new-instance p1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {p1, v0, v1, v4, v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    :goto_0
    const-wide/16 p1, 0x1

    sub-long p1, v0, p1

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    .line 8
    iget-object p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->samples:Ljava/util/List;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 10
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, p1

    goto :goto_0

    :cond_0
    return-void

    .line 11
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tracks of type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are not supported"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :array_0
    .array-data 1
        0x21t
        0x10t
        0x4t
        0x60t
        -0x74t
        0x1ct
    .end array-data
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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->entry:Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

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

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->samples:Ljava/util/List;

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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInMovie()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInMovie()Z

    move-result v0

    return v0
.end method

.method public isInPoster()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPoster()Z

    move-result v0

    return v0
.end method

.method public isInPreview()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/SilenceTrackImpl;->source:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->isInPreview()Z

    move-result v0

    return v0
.end method
