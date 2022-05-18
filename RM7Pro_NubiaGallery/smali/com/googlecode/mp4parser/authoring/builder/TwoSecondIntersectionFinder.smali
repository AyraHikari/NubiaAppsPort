.class public Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;
.super Ljava/lang/Object;
.source "TwoSecondIntersectionFinder.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 7

    .line 33
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 34
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v5

    mul-long/2addr v3, v5

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 17

    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/Track;

    move-object/from16 v5, p0

    .line 47
    invoke-virtual {v5, v4}, Lcom/googlecode/mp4parser/authoring/builder/TwoSecondIntersectionFinder;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v6

    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-double v6, v6

    cmpg-double v4, v2, v6

    if-gez v4, :cond_0

    move-wide v2, v6

    goto :goto_0

    :cond_1
    move-object/from16 v5, p0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v1, v2, :cond_2

    move v1, v2

    .line 58
    :cond_2
    new-array v3, v1, [J

    const-wide/16 v6, -0x1

    .line 59
    invoke-static {v3, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    const-wide/16 v8, 0x1

    const/4 v4, 0x0

    .line 60
    aput-wide v8, v3, v4

    const-wide/16 v8, 0x0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v10, v4

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move v12, v4

    :goto_2
    int-to-long v13, v12

    .line 65
    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-gez v13, :cond_3

    .line 66
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v13

    div-long v13, v8, v13

    const-wide/16 v15, 0x2

    div-long/2addr v13, v15

    long-to-int v13, v13

    add-int/2addr v13, v2

    if-lt v13, v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v10, 0x1

    int-to-long v14, v10

    .line 70
    aput-wide v14, v3, v13

    .line 71
    invoke-virtual {v11}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v13

    add-long/2addr v8, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v10, v2

    int-to-long v8, v10

    sub-int/2addr v1, v2

    :goto_3
    if-ltz v1, :cond_7

    .line 77
    aget-wide v10, v3, v1

    cmp-long v0, v10, v6

    if-nez v0, :cond_6

    .line 78
    aput-wide v8, v3, v1

    .line 80
    :cond_6
    aget-wide v8, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    return-object v3
.end method
