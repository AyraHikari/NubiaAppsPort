.class public Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;
.super Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;-><init>(Lcom/googlecode/mp4parser/authoring/builder/FragmentIntersectionFinder;)V

    return-void
.end method

.method private getAacAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 4

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;-><init>()V

    .line 2
    const-class v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-virtual {p2, v1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 3
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getSbrPresentFlag()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "AACH"

    .line 5
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getPsPresentFlag()I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v2, "AACP"

    .line 7
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "AACL"

    .line 8
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    const/16 p1, 0xff

    .line 10
    iput p1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    .line 11
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    .line 12
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result p1

    iput p1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    .line 13
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result p1

    iput p1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    const/4 p1, 0x4

    .line 14
    iput p1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    .line 15
    invoke-direct {p0, v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAudioCodecPrivateData(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    return-object v0
.end method

.method private getAudioCodecPrivateData(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->getConfigBytes()[B

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAacAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ec-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getEc3AudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getDtsAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I don\'t know what to do with audio of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAvcCodecPrivateData(Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;)[B
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->getSequenceParameterSets()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->getPictureParameterSets()Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x4

    :try_start_0
    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    const/4 v5, 0x1

    aput-byte v4, v3, v5

    const/4 v6, 0x2

    aput-byte v4, v3, v6

    const/4 v7, 0x3

    aput-byte v5, v3, v7

    .line 4
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 6
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [B

    aput-byte v4, v0, v4

    aput-byte v4, v0, v5

    aput-byte v4, v0, v6

    aput-byte v5, v0, v7

    .line 7
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 9
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 11
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "ByteArrayOutputStream do not throw IOException ?!?!?"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDtsAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 9

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;

    if-eqz v0, :cond_4

    const/16 v2, 0x16

    .line 2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getFrameDuration()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/16 v3, 0x1000

    goto :goto_0

    :cond_1
    const/16 v3, 0x800

    goto :goto_0

    :cond_2
    const/16 v3, 0x400

    goto :goto_0

    :cond_3
    const/16 v3, 0x200

    :goto_0
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    .line 4
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v6, 0x8

    ushr-int/2addr v3, v6

    int-to-byte v3, v3

    .line 5
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 6
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getNumChannelsAndMask(Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;)[I

    move-result-object v3

    aget v3, v3, v5

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    .line 7
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    .line 8
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    .line 9
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    new-array v7, v3, [B

    .line 11
    fill-array-data v7, :array_0

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 13
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getStreamConstruction()I

    move-result v7

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getChannelLayout()I

    move-result v7

    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    .line 15
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    .line 16
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v8, v7, 0x10

    int-to-byte v8, v8

    .line 17
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    .line 18
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getMultiAssetFlag()I

    move-result v7

    shl-int/lit8 v5, v7, 0x1

    int-to-byte v5, v5

    .line 20
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getLBRDurationMod()I

    move-result v7

    or-int/2addr v5, v7

    int-to-byte v5, v5

    .line 21
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-array v4, v4, [B

    .line 22
    fill-array-data v4, :array_1

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    new-instance v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;-><init>()V

    .line 24
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getAvgBitRate()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    const p2, 0xfffe

    .line 26
    iput p2, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    .line 27
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getDTSSamplingFrequency()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    .line 28
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getNumChannelsAndMask(Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;)[I

    move-result-object p2

    aget p2, p2, v1

    iput p2, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    .line 29
    iput v3, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    .line 30
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iput p1, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    return-object v4

    .line 32
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "DTS track misses DTSSpecificBox!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 1
        -0x52t
        -0x1ct
        -0x41t
        0x5et
        0x61t
        0x5et
        0x41t
        -0x79t
        -0x6et
        -0x4t
        -0x5ct
        -0x7ft
        0x26t
        -0x67t
        0x2t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private getEc3AudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;
    .locals 10

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->getEntries()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    .line 3
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->acmod:I

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    add-int/lit8 v5, v5, 0x5

    int-to-short v5, v5

    .line 4
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v8, :cond_1

    .line 5
    new-instance v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    invoke-direct {v8, p0, v3, v4, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v8

    .line 6
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 7
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v8

    goto/16 :goto_2

    :cond_1
    or-int/lit16 v3, v3, 0xec

    goto/16 :goto_4

    :pswitch_1
    add-int/lit8 v5, v5, 0x4

    int-to-short v5, v5

    .line 8
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v8, :cond_2

    .line 9
    new-instance v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    invoke-direct {v8, p0, v3, v4, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 11
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v8

    goto/16 :goto_2

    :cond_2
    or-int/lit16 v3, v3, 0xcc

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v5, v5, 0x4

    int-to-short v5, v5

    .line 12
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v8, :cond_3

    .line 13
    new-instance v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    invoke-direct {v8, p0, v3, v4, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v8

    .line 14
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 15
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v8

    goto/16 :goto_2

    :cond_3
    or-int/lit16 v3, v3, 0xe0

    goto :goto_1

    :pswitch_3
    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    .line 16
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v8, :cond_4

    .line 17
    new-instance v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    invoke-direct {v8, p0, v3, v4, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 19
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v8

    goto :goto_2

    :cond_4
    or-int/lit16 v3, v3, 0xc0

    :goto_1
    int-to-byte v3, v3

    or-int/lit16 v4, v4, 0x80

    goto :goto_3

    :pswitch_4
    add-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    .line 20
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v8, :cond_5

    .line 21
    new-instance v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    invoke-direct {v8, p0, v3, v4, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v8

    .line 22
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 23
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v8

    goto :goto_2

    :cond_5
    or-int/lit16 v3, v3, 0xe0

    goto :goto_4

    :pswitch_5
    add-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    .line 24
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v8, :cond_6

    .line 25
    new-instance v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    invoke-direct {v8, p0, v3, v4, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v8

    .line 26
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 27
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v8

    goto :goto_2

    :cond_6
    or-int/lit16 v3, v3, 0xc0

    goto :goto_4

    :pswitch_6
    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    .line 28
    iget v8, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->num_dep_sub:I

    if-lez v8, :cond_7

    .line 29
    new-instance v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    invoke-direct {v8, p0, v3, v4, v7}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;-><init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V

    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;

    move-result-object v8

    .line 30
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskFirstByte()B

    move-result v9

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 31
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->getdWChannelMaskSecondByte()B

    move-result v8

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    int-to-byte v4, v4

    goto :goto_5

    :cond_7
    or-int/lit8 v3, v3, 0x20

    :goto_4
    int-to-byte v3, v3

    goto :goto_5

    .line 32
    :pswitch_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Smooth Streaming doesn\'t support DDP 1+1 mode"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :goto_5
    iget v7, v7, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->lfeon:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x16

    .line 34
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v7, 0x2

    new-array v8, v7, [B

    .line 35
    fill-array-data v8, :array_0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-array v3, v7, [B

    .line 38
    fill-array-data v3, :array_1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    new-array v4, v3, [B

    .line 39
    fill-array-data v4, :array_2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->getContentSize()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 41
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox;->getContent(Ljava/nio/ByteBuffer;)V

    .line 42
    new-instance v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;-><init>()V

    const-string v7, "EC-3"

    .line 43
    iput-object v7, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    const v7, 0xfffe

    .line 45
    iput v7, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    .line 46
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    add-int/2addr v5, v6

    .line 47
    iput v5, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    .line 48
    iput v3, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    .line 49
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    iput p1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-static {p2}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    return-object v0

    .line 51
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "EC-3 track misses EC3SpecificBox!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        0x6t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x51t
        -0x79t
        -0x5t
        -0x59t
        0x2t
        0x2dt
        -0x5t
        0x42t
        -0x5ct
        -0x2ct
        0x5t
        -0x33t
        -0x6dt
        -0x7ct
        0x3bt
        -0x23t
    .end array-data
.end method

.method private getNumChannelsAndMask(Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;)[I
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/boxes/DTSSpecificBox;->getChannelLayout()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v1

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    move v4, v0

    :goto_0
    and-int/lit8 v5, p1, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    add-int/lit8 v0, v0, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v6

    :cond_1
    and-int/lit8 v5, p1, 0x4

    const/16 v7, 0x20

    if-ne v5, v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    or-int/lit8 v1, v4, 0x10

    or-int/lit8 v4, v1, 0x20

    :cond_2
    and-int/lit8 v1, p1, 0x8

    const/16 v5, 0x8

    if-ne v1, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    or-int/lit8 v4, v4, 0x8

    :cond_3
    and-int/lit8 v1, p1, 0x10

    const/16 v5, 0x10

    if-ne v1, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    or-int/lit16 v4, v4, 0x100

    :cond_4
    and-int/lit8 v1, p1, 0x20

    const/16 v5, 0x4000

    if-ne v1, v7, :cond_5

    add-int/lit8 v0, v0, 0x2

    or-int/lit16 v1, v4, 0x1000

    or-int/lit16 v4, v1, 0x4000

    :cond_5
    and-int/lit8 v1, p1, 0x40

    const/16 v8, 0x40

    if-ne v1, v8, :cond_6

    add-int/lit8 v0, v0, 0x2

    or-int/lit8 v1, v4, 0x10

    or-int/lit8 v4, v1, 0x20

    :cond_6
    and-int/lit16 v1, p1, 0x80

    const/16 v8, 0x80

    if-ne v1, v8, :cond_7

    add-int/lit8 v0, v0, 0x1

    or-int/lit16 v4, v4, 0x2000

    :cond_7
    and-int/lit16 v1, p1, 0x100

    const/16 v9, 0x100

    if-ne v1, v9, :cond_8

    add-int/lit8 v0, v0, 0x1

    or-int/lit16 v4, v4, 0x800

    :cond_8
    and-int/lit16 v1, p1, 0x200

    const/16 v9, 0x200

    if-ne v1, v9, :cond_9

    add-int/lit8 v0, v0, 0x2

    or-int/lit8 v1, v4, 0x40

    or-int/lit16 v4, v1, 0x80

    :cond_9
    and-int/lit16 v1, p1, 0x400

    const/16 v8, 0x400

    if-ne v1, v8, :cond_a

    add-int/lit8 v0, v0, 0x2

    or-int/lit16 v1, v4, 0x200

    or-int/lit16 v4, v1, 0x400

    :cond_a
    and-int/lit16 v1, p1, 0x800

    const/16 v8, 0x800

    if-ne v1, v8, :cond_b

    add-int/lit8 v0, v0, 0x2

    or-int/lit8 v1, v4, 0x10

    or-int/lit8 v4, v1, 0x20

    :cond_b
    and-int/lit16 v1, p1, 0x1000

    const/16 v8, 0x1000

    if-ne v1, v8, :cond_c

    add-int/lit8 v0, v0, 0x1

    or-int/lit8 v4, v4, 0x8

    :cond_c
    and-int/lit16 v1, p1, 0x2000

    const/16 v8, 0x2000

    if-ne v1, v8, :cond_d

    add-int/lit8 v0, v0, 0x2

    or-int/lit8 v1, v4, 0x10

    or-int/lit8 v4, v1, 0x20

    :cond_d
    and-int/lit16 v1, p1, 0x4000

    const/high16 v7, 0x10000

    if-ne v1, v5, :cond_e

    add-int/lit8 v0, v0, 0x1

    or-int/2addr v4, v7

    :cond_e
    const v1, 0x8000

    and-int v5, p1, v1

    const/high16 v8, 0x20000

    if-ne v5, v1, :cond_f

    add-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v4

    or-int v4, v1, v8

    :cond_f
    and-int v1, p1, v7

    if-ne v1, v7, :cond_10

    add-int/lit8 v0, v0, 0x1

    :cond_10
    and-int/2addr p1, v8

    if-ne p1, v8, :cond_11

    add-int/lit8 v0, v0, 0x2

    :cond_11
    new-array p1, v6, [I

    aput v0, p1, v2

    aput v4, p1, v3

    return-object p1
.end method

.method private getVideoQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;
    .locals 4

    .line 1
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "avc1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;

    .line 3
    new-instance v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->bitrate:J

    .line 5
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAvcCodecPrivateData(Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/coremedia/iso/Hex;->encodeHex([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->codecPrivateData:Ljava/lang/String;

    const-string p1, "AVC1"

    .line 6
    iput-object p1, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->fourCC:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getWidth()I

    move-result p1

    iput p1, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->width:I

    .line 8
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->getHeight()I

    move-result p1

    iput p1, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->height:I

    .line 9
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/h264/AvcConfigurationBox;->getLengthSizeMinusOne()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->nalLength:I

    return-object v1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I don\'t know how to handle video of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->getFormat(Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected customizeManifest(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Document;
    .locals 0

    return-object p1
.end method

.method public getManifest(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/lang/String;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, -0x1

    move-wide v7, v5

    move-wide v9, v7

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/googlecode/mp4parser/authoring/Track;

    .line 4
    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v12

    instance-of v12, v12, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    if-eqz v12, :cond_1

    .line 5
    iget-object v12, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->videoFragmentsDurations:[J

    invoke-virtual {v1, v11, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->checkFragmentsAlign([J[J)[J

    move-result-object v12

    iput-object v12, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->videoFragmentsDurations:[J

    .line 6
    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v12

    .line 7
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v12

    check-cast v12, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    invoke-direct {v1, v11, v12}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getVideoQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    cmp-long v12, v7, v5

    if-nez v12, :cond_1

    .line 8
    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v7

    .line 9
    :cond_1
    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v12

    instance-of v12, v12, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    if-eqz v12, :cond_0

    .line 10
    iget-object v12, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->audioFragmentsDurations:[J

    invoke-virtual {v1, v11, v0}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->checkFragmentsAlign([J[J)[J

    move-result-object v12

    iput-object v12, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->audioFragmentsDurations:[J

    .line 11
    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v12

    .line 12
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    move-result-object v12

    check-cast v12, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-direct {v1, v11, v12}, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;->getAudioQuality(Lcom/googlecode/mp4parser/authoring/Track;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    cmp-long v12, v9, v5

    if-nez v12, :cond_0

    .line 13
    invoke-interface {v11}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v9

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 15
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v4, "SmoothStreamingMedia"

    .line 17
    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 18
    invoke-interface {v0, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v5, "MajorVersion"

    const-string v6, "2"

    .line 19
    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MinorVersion"

    const-string v6, "1"

    .line 20
    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Duration"

    const-string v6, "0"

    .line 21
    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v5, Lcom/googlecode/mp4parser/Version;->VERSION:Ljava/lang/String;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v5, "StreamIndex"

    .line 23
    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    const-string v11, "Type"

    const-string v12, "video"

    .line 24
    invoke-interface {v6, v11, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TimeScale"

    invoke-interface {v6, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v7, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->videoFragmentsDurations:[J

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v12, "Chunks"

    invoke-interface {v6, v12, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Url"

    const-string v13, "video/{bitrate}/{start time}"

    .line 27
    invoke-interface {v6, v7, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "QualityLevels"

    invoke-interface {v6, v14, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v15, 0x0

    .line 30
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v13

    move-object/from16 v16, v4

    const-string v4, "CodecPrivateData"

    move-object/from16 v17, v14

    const-string v14, "FourCC"

    move-object/from16 v18, v3

    const-string v3, "Bitrate"

    move-object/from16 v19, v7

    const-string v7, "Index"

    move-object/from16 v20, v12

    const-string v12, "QualityLevel"

    if-ge v15, v13, :cond_3

    .line 31
    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;

    .line 32
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    move-object/from16 v21, v2

    .line 33
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v7, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    .line 34
    iget-wide v7, v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->bitrate:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v3, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v3, v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->fourCC:Ljava/lang/String;

    invoke-interface {v12, v14, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget v3, v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->width:I

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v7, "MaxWidth"

    invoke-interface {v12, v7, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v3, v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->height:I

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v7, "MaxHeight"

    invoke-interface {v12, v7, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v3, v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->codecPrivateData:Ljava/lang/String;

    invoke-interface {v12, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v3, v13, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/VideoQuality;->nalLength:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NALUnitLengthField"

    invoke-interface {v12, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {v6, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v15, v15, 0x1

    move-object v8, v2

    move-object/from16 v4, v16

    move-object/from16 v14, v17

    move-object/from16 v3, v18

    move-object/from16 v7, v19

    move-object/from16 v12, v20

    move-object/from16 v2, v21

    goto :goto_1

    :cond_3
    move-object v2, v8

    const/4 v8, 0x0

    .line 41
    :goto_2
    iget-object v13, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->videoFragmentsDurations:[J

    array-length v13, v13

    const-string v15, "d"

    move-object/from16 v21, v4

    const-string v4, "n"

    move-object/from16 v22, v3

    const-string v3, "c"

    if-ge v8, v13, :cond_4

    .line 42
    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 43
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v4, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v4, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->videoFragmentsDurations:[J

    aget-wide v23, v4, v8

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v15, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v6, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    goto :goto_2

    .line 46
    :cond_4
    iget-object v6, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->audioFragmentsDurations:[J

    if-eqz v6, :cond_6

    .line 47
    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string v6, "audio"

    .line 48
    invoke-interface {v5, v11, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->audioFragmentsDurations:[J

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v20

    invoke-interface {v5, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio/{bitrate}/{start time}"

    move-object/from16 v6, v19

    .line 51
    invoke-interface {v5, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v17

    invoke-interface {v5, v6, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v16

    .line 53
    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    .line 54
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    move-object/from16 v6, v18

    .line 55
    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;

    .line 56
    invoke-interface {v0, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v7, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v10, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->fourCC:Ljava/lang/String;

    invoke-interface {v9, v14, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-wide v10, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitrate:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v22

    invoke-interface {v9, v11, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget v10, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->audioTag:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "AudioTag"

    invoke-interface {v9, v13, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v7

    .line 61
    iget-wide v6, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->samplingRate:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SamplingRate"

    invoke-interface {v9, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget v6, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->channels:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Channels"

    invoke-interface {v9, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget v6, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->bitPerSample:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BitsPerSample"

    invoke-interface {v9, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget v6, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->packetSize:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PacketSize"

    invoke-interface {v9, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v6, v8, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AudioQuality;->codecPrivateData:Ljava/lang/String;

    move-object/from16 v7, v21

    invoke-interface {v9, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    move-object v7, v10

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 67
    :goto_4
    iget-object v2, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->audioFragmentsDurations:[J

    array-length v2, v2

    if-ge v13, v2, :cond_6

    .line 68
    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 69
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v6, v1, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/AbstractManifestWriter;->audioFragmentsDurations:[J

    aget-wide v7, v6, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v15, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {v5, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    .line 72
    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->setXmlStandalone(Z)V

    .line 73
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 74
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 75
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 76
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    .line 77
    :try_start_1
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v4

    const-string v5, "indent"

    const-string v6, "yes"

    .line 78
    invoke-virtual {v4, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 82
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 83
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
