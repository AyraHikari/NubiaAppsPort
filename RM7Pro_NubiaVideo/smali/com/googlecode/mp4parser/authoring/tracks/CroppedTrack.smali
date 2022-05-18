.class public Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fromSample:I

.field origTrack:Lcom/googlecode/mp4parser/authoring/Track;

.field private syncSampleArray:[J

.field private toSample:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    long-to-int p1, p2

    .line 3
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    long-to-int p1, p4

    .line 4
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    return-void
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    sub-int v3, v1, v2

    new-array v4, v3, [I

    sub-int/2addr v1, v2

    const/4 v5, 0x0

    .line 4
    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-ge v5, v3, :cond_2

    .line 6
    aget v1, v4, v5

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    const/4 v6, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 9
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    new-instance v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-direct {v2, v6, v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    sub-int v3, v1, v2

    new-array v4, v3, [J

    sub-int/2addr v1, v2

    const/4 v5, 0x0

    .line 4
    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-ge v5, v3, :cond_2

    .line 6
    aget-wide v1, v4, v5

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    const-wide/16 v7, 0x1

    if-nez v6, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v9

    cmp-long v6, v9, v1

    if-eqz v6, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 9
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-virtual {v1, v9, v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    new-instance v6, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v6, v7, v8, v1, v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 11
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

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

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSyncSamples()[J
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->syncSampleArray:[J

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-wide v5, v1, v4

    .line 5
    iget v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    int-to-long v8, v7

    cmp-long v8, v5, v8

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    int-to-long v8, v8

    cmp-long v8, v5, v8

    if-gez v8, :cond_0

    int-to-long v7, v7

    sub-long/2addr v5, v7

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->syncSampleArray:[J

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->syncSampleArray:[J

    array-length v2, v1

    if-ge v3, v2, :cond_2

    .line 9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 10
    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    const/4 v0, 0x0

    .line 11
    monitor-exit p0

    return-object v0

    .line 12
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method
