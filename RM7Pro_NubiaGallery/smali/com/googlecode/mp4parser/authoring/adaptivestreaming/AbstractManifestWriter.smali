.class public abstract Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;
.super Ljava/lang/Object;
.source "AbstractManifestWriter.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected audioFragmentsDurations:[J

.field private intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

.field protected videoFragmentsDurations:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    return-void
.end method

.method protected static getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 7

    .line 77
    invoke-interface {p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 78
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


# virtual methods
.method public calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
    .locals 11

    .line 43
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->intersectionFinder:Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    invoke-interface {v0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object p2

    .line 44
    array-length v0, p2

    new-array v0, v0, [J

    .line 48
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 49
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v5

    add-int/2addr v5, v3

    :goto_0
    if-ge v3, v5, :cond_0

    .line 52
    array-length v6, p2

    sub-int/2addr v6, v1

    if-eq v2, v6, :cond_1

    int-to-long v6, v3

    add-int/lit8 v8, v2, 0x1

    aget-wide v9, p2, v8

    cmp-long v6, v6, v9

    if-nez v6, :cond_1

    move v2, v8

    .line 56
    :cond_1
    aget-wide v6, v0, v2

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    add-long/2addr v6, v8

    aput-wide v6, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected checkFragmentsAlign([J[J)[J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 85
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 88
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [J

    .line 89
    array-length v2, p1

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v2, p2

    sub-int/2addr v2, v1

    new-array v2, v2, [J

    .line 91
    array-length v4, p2

    sub-int/2addr v4, v1

    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Reference     :  ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    array-length v4, p1

    move v5, v3

    :goto_0
    const-string v6, "%10d,"

    if-ge v5, v4, :cond_1

    aget-wide v7, p1, v5

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v9, v3

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    sget-object v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v4, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v2, p2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "Current       :  ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    array-length v2, p2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-wide v7, p2, v4

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 109
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    sget-object p2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 111
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Track does not have the same fragment borders as its predecessor."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-object p2
.end method

.method public getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J
    .locals 6

    .line 67
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    long-to-double v0, v1

    .line 71
    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getDuration(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;
    .locals 3

    .line 119
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encv"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "enca"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    const-class v0, Lcom/coremedia/iso/boxes/OriginalFormatBox;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coremedia/iso/boxes/OriginalFormatBox;

    .line 122
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/OriginalFormatBox;->getDataFormat()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
