.class public Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "Mp4TrackImpl.java"


# instance fields
.field private compositionTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private decodingTimeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ljava/lang/String;

.field private mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private sampleDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:[J

.field private trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .locals 27

    move-object/from16 v0, p0

    .line 43
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [J

    .line 37
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 39
    new-instance v2, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v2

    .line 45
    new-instance v4, Lcom/coremedia/iso/boxes/mdat/SampleList;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lcom/coremedia/iso/boxes/mdat/SampleList;-><init>(Lcom/coremedia/iso/boxes/TrackBox;)V

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v4

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MediaBox;->getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/HandlerBox;->getHandlerType()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v6

    iput-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 50
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    .line 51
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    .line 52
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    .line 54
    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->getEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 56
    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->getEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_0
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 59
    iget-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;->getEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    :cond_1
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 62
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/SyncSampleBox;->getSampleNumber()[J

    move-result-object v6

    iput-object v6, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 66
    :cond_2
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v4

    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v4

    const-class v6, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface {v4, v6}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 68
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_15

    .line 69
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    .line 70
    const-class v7, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 71
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 72
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-nez v8, :cond_12

    .line 73
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v9

    const-class v10, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v9, v10}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-wide/16 v12, 0x1

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 77
    const-class v15, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v14, v15}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v14

    .line 78
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 79
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v16

    cmp-long v16, v16, v2

    if-nez v16, :cond_f

    .line 80
    const-class v1, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v15, v1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 82
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v17

    check-cast v17, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v17

    .line 84
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v11, 0x1

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 85
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleDurationPresent()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 86
    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    .line 87
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v21

    move-object/from16 v22, v1

    const/16 v20, 0x1

    add-int/lit8 v1, v21, -0x1

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v23

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v25

    cmp-long v1, v23, v25

    if-eqz v1, :cond_3

    goto :goto_6

    .line 90
    :cond_3
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 91
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v23

    move-wide/from16 v25, v2

    move-object v10, v4

    const-wide/16 v2, 0x1

    add-long v4, v23, v2

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    move-object/from16 v21, v6

    goto :goto_7

    :cond_4
    move-object/from16 v22, v1

    :goto_6
    move-wide/from16 v25, v2

    move-object v10, v4

    const-wide/16 v2, 0x1

    .line 88
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move-object/from16 v21, v6

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleDuration()J

    move-result-wide v5

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_5
    move-object/from16 v22, v1

    move-wide/from16 v25, v2

    move-object v10, v4

    move-object/from16 v21, v6

    const-wide/16 v2, 0x1

    .line 94
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleDuration()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleDuration()J

    move-result-wide v5

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 97
    :cond_6
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleDuration()J

    move-result-wide v5

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_7
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleCompositionTimeOffsetPresent()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    .line 103
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v1

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()I

    move-result v2

    if-eq v1, v2, :cond_7

    goto :goto_8

    .line 106
    :cond_7
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 107
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto :goto_9

    :cond_8
    const/4 v3, 0x1

    .line 104
    :goto_8
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

    new-instance v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleCompositionTimeOffset()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_9
    const/4 v3, 0x1

    .line 111
    :goto_9
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleFlagsPresent()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 112
    invoke-virtual/range {v19 .. v19}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v1

    goto :goto_a

    :cond_a
    if-eqz v11, :cond_b

    .line 114
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isFirstSampleFlagsPresent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 115
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getFirstSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v1

    goto :goto_a

    .line 117
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleFlags()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 118
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v1

    goto :goto_a

    .line 120
    :cond_c
    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    move-result-object v1

    :goto_a
    if-eqz v1, :cond_d

    .line 124
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/SampleFlags;->isSampleIsDifferenceSample()Z

    move-result v1

    if-nez v1, :cond_d

    .line 126
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    const-wide/16 v1, 0x1

    add-long/2addr v12, v1

    move-object/from16 v5, p1

    move-object v4, v10

    move-object/from16 v6, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v25

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_e
    move-wide/from16 v25, v2

    move-object/from16 v5, p1

    goto/16 :goto_4

    :cond_f
    move-wide/from16 v25, v2

    move-object v10, v4

    move-object/from16 v21, v6

    const-wide/16 v1, 0x1

    move-object/from16 v5, p1

    move-object v4, v10

    move-object/from16 v6, v21

    move-wide/from16 v2, v25

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_10
    move-wide/from16 v25, v2

    move-object/from16 v5, p1

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_11
    move-wide/from16 v25, v2

    move-object v10, v4

    move-object/from16 v21, v6

    .line 136
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 137
    array-length v2, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    .line 138
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 140
    array-length v1, v1

    .line 141
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 143
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v1

    move v1, v6

    goto :goto_b

    :cond_12
    move-wide/from16 v25, v2

    move-object v10, v4

    move-object/from16 v21, v6

    move v4, v1

    :cond_13
    move-object/from16 v5, p1

    move v1, v4

    move-object v4, v10

    move-object/from16 v6, v21

    move-wide/from16 v2, v25

    goto/16 :goto_1

    :cond_14
    move-object/from16 v5, p1

    goto/16 :goto_0

    .line 149
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v1

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setEnabled(Z)V

    .line 153
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInMovie()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInMovie(Z)V

    .line 154
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPoster()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInPoster(Z)V

    .line 155
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->isInPreview()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->setInPreview(Z)V

    .line 157
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTrackId(J)V

    .line 158
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getCreationTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 159
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLanguage(Ljava/lang/String;)V

    .line 165
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getModificationTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/authoring/DateHelper;->convert(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 166
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    .line 167
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setHeight(D)V

    .line 168
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setWidth(D)V

    .line 169
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getLayer()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setLayer(I)V

    .line 170
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setMatrix([J)V

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

    .line 187
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->compositionTimeEntries:Ljava/util/List;

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

    .line 183
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->decodingTimeEntries:Ljava/util/List;

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->mihd:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public bridge synthetic getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

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

    .line 195
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

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

    .line 174
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->samples:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->syncSamples:[J

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mp4TrackImpl{handler=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/Mp4TrackImpl;->handler:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
