.class public Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;
.super Ljava/lang/Object;
.source "FlatPackageWriterImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/adaptivestreaming/PackageWriter;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field private debugOutput:Z

.field private ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

.field manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

.field private outputDirectory:Ljava/io/File;

.field timeScale:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x989680

    .line 38
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    .line 46
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 47
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    .line 49
    new-instance v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-direct {v1, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x989680

    .line 38
    iput-wide v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    .line 59
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 60
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/authoring/builder/SyncSampleIntersectFinderImpl;-><init>(I)V

    .line 61
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->setIntersectionFinder(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    .line 62
    new-instance p1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-direct {p1, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    return-void
.end method

.method private removeUnknownTracks(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 5

    .line 169
    new-instance v0, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 170
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/Track;

    .line 171
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vide"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v2

    const-string v3, "soun"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    sget-object v2, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed track "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public correctTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;
    .locals 7

    .line 189
    new-instance v0, Lcom/googlecode/mp4parser/authoring/Movie;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/Movie;-><init>()V

    .line 190
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/Track;

    .line 191
    new-instance v3, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;

    iget-wide v4, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->timeScale:J

    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-result-object v6

    invoke-interface {v6, v2, p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;->sampleNumbers(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/googlecode/mp4parser/authoring/tracks/ChangeTimeScaleTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;J[J)V

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setDebugOutput(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    return-void
.end method

.method public setIsmvBuilder(Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;)V
    .locals 1

    .line 76
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    .line 77
    new-instance v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->getFragmentIntersectionFinder()Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    return-void
.end method

.method public setManifestWriter(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    return-void
.end method

.method public setOutputDirectory(Ljava/io/File;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    return-void
.end method

.method public write(Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 93
    iget-boolean v1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 95
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    move-object/from16 v2, p1

    .line 96
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v1

    .line 97
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    const-string v5, "debug_1_muxed.mp4"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 99
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 100
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 102
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->removeUnknownTracks(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->correctTimescale(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v1

    .line 105
    iget-boolean v2, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    if-eqz v2, :cond_1

    .line 106
    new-instance v2, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    .line 107
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v2

    .line 108
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    const-string v5, "debug_2_timescale.mp4"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 111
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 113
    :cond_1
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->ismvBuilder:Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/authoring/builder/FragmentedMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object v2

    .line 114
    iget-boolean v3, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->debugOutput:Z

    if-eqz v3, :cond_2

    .line 115
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    const-string v5, "debug_3_fragmented.mp4"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 118
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 122
    :cond_2
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/authoring/Track;

    .line 123
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    invoke-interface {v5, v4}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTrackId()J

    move-result-wide v6

    .line 125
    invoke-virtual {v2}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 127
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v9

    instance-of v9, v9, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    if-eqz v9, :cond_4

    .line 128
    new-instance v9, Ljava/io/File;

    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    const-string v11, "audio"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    .line 130
    :cond_4
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v9

    instance-of v9, v9, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    if-eqz v9, :cond_6

    .line 131
    new-instance v9, Ljava/io/File;

    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    const-string v11, "video"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    :goto_2
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 138
    sget-object v5, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->LOG:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Created : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 140
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    invoke-interface {v5, v4, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v4

    const-wide/16 v11, 0x0

    const/4 v5, 0x0

    move v9, v5

    .line 143
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 144
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coremedia/iso/boxes/Box;

    .line 145
    instance-of v14, v13, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    if-eqz v14, :cond_5

    .line 147
    move-object v14, v13

    check-cast v14, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v14}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackNumbers()[J

    move-result-object v14

    aget-wide v14, v14, v5

    cmp-long v14, v14, v6

    if-nez v14, :cond_5

    .line 148
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v15, Ljava/io/File;

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v10, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    add-int/lit8 v5, v9, 0x1

    .line 149
    aget-wide v15, v4, v9

    add-long/2addr v11, v15

    .line 150
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 151
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/coremedia/iso/boxes/Box;

    .line 153
    invoke-interface {v13, v9}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 154
    invoke-interface {v14, v9}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 155
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 156
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    move v9, v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 133
    :cond_6
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping Track with handler "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 162
    :cond_7
    new-instance v2, Ljava/io/FileWriter;

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->outputDirectory:Ljava/io/File;

    const-string v5, "Manifest"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 163
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatPackageWriterImpl;->manifestWriter:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;

    invoke-interface {v3, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;->getManifest(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    return-void
.end method
