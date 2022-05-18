.class public Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;
    }
.end annotation


# static fields
.field private static LOG:Ljava/util/logging/Logger;

.field private static getSampleNumbersCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;",
            "[J>;"
        }
    .end annotation
.end field

.field private static getTimesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private final minFragmentDurationSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimesCache:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    return-void
.end method

.method private static calculateTracktimesScalingFactor(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 2
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/mp4parser/util/Math;->lcm(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getSyncSamplesTimestamps(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/Movie;",
            "Lcom/googlecode/mp4parser/authoring/Track;",
            ")",
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 3
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    array-length v3, v3

    if-lez v3, :cond_0

    .line 6
    invoke-static {v2, p0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v2

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getTimes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;

    invoke-direct {v2, v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;-><init>(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 2
    sget-object v3, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimesCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    if-eqz v3, :cond_0

    return-object v3

    .line 3
    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    .line 4
    array-length v4, v3

    new-array v4, v4, [J

    .line 5
    new-instance v5, Ljava/util/LinkedList;

    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    .line 6
    invoke-static {v1, v0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->calculateTracktimesScalingFactor(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v0

    const/4 v9, 0x1

    move v10, v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    :goto_0
    int-to-long v7, v10

    move-wide/from16 v17, v15

    .line 7
    array-length v15, v3

    sub-int/2addr v15, v9

    aget-wide v15, v3, v15

    cmp-long v15, v7, v15

    if-gtz v15, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 8
    aget-wide v15, v3, v6

    cmp-long v7, v7, v15

    if-nez v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    mul-long v15, v11, v0

    .line 9
    aput-wide v15, v4, v6

    move v6, v7

    :cond_1
    const-wide/16 v7, 0x1

    sub-long v15, v13, v7

    const-wide/16 v19, 0x0

    cmp-long v13, v13, v19

    if-nez v13, :cond_2

    .line 10
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 11
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v14

    sub-long/2addr v14, v7

    .line 12
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v7

    move-wide v13, v14

    move-wide v15, v7

    goto :goto_1

    :cond_2
    move-wide v13, v15

    move-wide/from16 v15, v17

    :goto_1
    add-long/2addr v11, v15

    goto :goto_0

    .line 13
    :cond_3
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimesCache:Ljava/util/Map;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4
.end method


# virtual methods
.method public varargs getCommonIndices([J[JJ[[J)[J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    .line 3
    :goto_0
    array-length v8, v2

    const/4 v9, 0x1

    if-ge v7, v8, :cond_3

    .line 4
    array-length v8, v3

    move v10, v6

    move v11, v9

    :goto_1
    if-ge v10, v8, :cond_1

    aget-object v12, v3, v10

    .line 5
    aget-wide v13, v2, v7

    invoke-static {v12, v13, v14}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    if-ltz v12, :cond_0

    move v12, v9

    goto :goto_2

    :cond_0
    move v12, v6

    :goto_2
    and-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    if-eqz v11, :cond_2

    .line 6
    aget-wide v8, v1, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    aget-wide v8, v2, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    array-length v7, v1

    int-to-double v7, v7

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v10

    cmpg-double v2, v2, v7

    if-gez v2, :cond_6

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "%5d - Common:  ["

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v7, "%10d,"

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 12
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    sget-object v5, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v9, [Ljava/lang/Object;

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "%5d - In    :  ["

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    array-length v4, v1

    move v5, v6

    :goto_4
    if-ge v5, v4, :cond_5

    aget-wide v10, v1, v5

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 17
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "There are less than 25% of common sync samples in the given track."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    array-length v7, v1

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    cmpg-double v2, v2, v7

    if-gez v2, :cond_7

    .line 22
    sget-object v1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    const-string v2, "There are less than 50% of common sync samples in the given track. This is implausible but I\'m ok to continue."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_5

    .line 23
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    array-length v3, v1

    if-ge v2, v3, :cond_8

    .line 24
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Common SyncSample positions vs. this tracks SyncSample positions: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " vs. "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 25
    :cond_8
    :goto_5
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 26
    iget v2, v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    if-lez v2, :cond_c

    .line 27
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 28
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, -0x1

    move-wide v7, v4

    .line 29
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v13, v7, v4

    if-eqz v13, :cond_9

    sub-long v13, v11, v7

    .line 32
    div-long v13, v13, p3

    iget v15, v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->minFragmentDurationSeconds:I

    int-to-long v4, v15

    cmp-long v4, v13, v4

    if-ltz v4, :cond_a

    .line 33
    :cond_9
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v7, v11

    :cond_a
    const-wide/16 v4, -0x1

    goto :goto_6

    :cond_b
    move-object v4, v1

    .line 34
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [J

    :goto_7
    if-ge v6, v1, :cond_d

    .line 35
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_d
    return-object v2
.end method

.method public sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    new-instance v7, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;

    invoke-direct {v7, v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl$CacheTuple;-><init>(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 2
    sget-object v2, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    if-eqz v2, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 5
    invoke-static {v1, v0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSyncSamplesTimestamps(Lcom/googlecode/mp4parser/authoring/Movie;Lcom/googlecode/mp4parser/authoring/Track;)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    invoke-static/range {p1 .. p2}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getTimes(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[J

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [[J

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    move-wide v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getCommonIndices([J[JJ[[J)[J

    move-result-object v0

    .line 7
    sget-object v1, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Video Tracks need sync samples. Only tracks other than video may have no sync samples."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v2

    const-string v4, "soun"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "There was absolutely no Track with sync samples. I can\'t work with that!"

    const/4 v10, 0x0

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    .line 10
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/googlecode/mp4parser/authoring/Track;

    .line 11
    invoke-interface {v12}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v13

    array-length v13, v13

    if-lez v13, :cond_3

    move-object v2, v12

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_9

    .line 12
    invoke-virtual {v6, v2, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v3

    .line 13
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 14
    array-length v5, v3

    new-array v11, v5, [J

    const-wide/32 v12, 0x2ee00

    .line 15
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/googlecode/mp4parser/authoring/Track;

    .line 16
    invoke-interface {v14}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 17
    invoke-interface {v14}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v15

    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v15

    check-cast v15, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .line 18
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v16

    cmp-long v16, v16, v12

    if-gez v16, :cond_5

    .line 19
    invoke-virtual {v15}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v12

    .line 20
    invoke-interface {v14}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v8, v1

    long-to-double v8, v8

    int-to-double v1, v2

    div-double/2addr v8, v1

    .line 21
    invoke-interface {v14}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 22
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v1

    move v4, v10

    :goto_2
    if-ge v4, v5, :cond_6

    .line 23
    aget-wide v17, v3, v4

    move-object/from16 v19, v11

    const-wide/16 v14, 0x1

    sub-long v10, v17, v14

    long-to-double v10, v10

    mul-double/2addr v10, v8

    move-wide/from16 v17, v8

    long-to-double v8, v1

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-long v8, v8

    .line 24
    aput-wide v8, v19, v4

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v8, v17

    move-object/from16 v11, v19

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    move-object/from16 v19, v11

    move-object/from16 v11, v19

    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v19, v11

    .line 25
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    .line 26
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 27
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v3

    .line 28
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v0

    long-to-double v0, v0

    long-to-double v8, v12

    div-double/2addr v0, v8

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v8

    cmpl-double v8, v0, v8

    if-nez v8, :cond_8

    move v10, v2

    :goto_3
    if-ge v10, v5, :cond_7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 30
    aget-wide v11, v19, v10

    long-to-double v11, v11

    mul-double/2addr v11, v0

    long-to-double v13, v3

    div-double/2addr v11, v13

    add-double/2addr v11, v8

    double-to-long v8, v11

    aput-wide v8, v19, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 31
    :cond_7
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    move-object/from16 v1, v19

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 32
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sample rates must be a multiple of the lowest sample rate to create a correct file!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v2, v10

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/Track;

    .line 35
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_c

    .line 36
    invoke-virtual {v6, v4, v1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v1

    .line 37
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 38
    array-length v4, v1

    new-array v5, v4, [J

    .line 39
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    long-to-double v8, v8

    int-to-double v10, v3

    div-double/2addr v8, v10

    move v10, v2

    :goto_5
    if-ge v10, v4, :cond_b

    .line 40
    aget-wide v2, v1, v10

    const-wide/16 v11, 0x1

    sub-long/2addr v2, v11

    long-to-double v2, v2

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v2, v11

    .line 41
    aput-wide v2, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 42
    :cond_b
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;->getSampleNumbersCache:Ljava/util/Map;

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    :cond_c
    const-wide/16 v11, 0x1

    goto :goto_4

    .line 43
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
