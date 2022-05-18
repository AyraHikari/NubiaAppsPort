.class public Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "AppendTrack.java"


# instance fields
.field stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field tracks:[Lcom/googlecode/mp4parser/authoring/Track;


# direct methods
.method public varargs constructor <init>([Lcom/googlecode/mp4parser/authoring/Track;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 46
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    if-nez v4, :cond_0

    .line 47
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    goto/16 :goto_1

    .line 49
    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v6

    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 52
    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 53
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 54
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 56
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 59
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-direct {p0, v2, v0}, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->setBoxes(Ljava/util/List;)V

    return-void

    .line 67
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot append "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " since their Sample Description Boxes differ: \n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n vs. \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private mergeAudioSampleEntries(Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;)Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 75
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 77
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerFrame()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerFrame(J)V

    .line 81
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 82
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerPacket()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerPacket(J)V

    .line 86
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 87
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBytesPerSample()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setBytesPerSample(J)V

    .line 91
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 92
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 96
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 97
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getPacketSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setPacketSize(I)V

    .line 101
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 102
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getCompressionId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setCompressionId(I)V

    .line 106
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 107
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 111
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 112
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 116
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 117
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSamplesPerPacket()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSamplesPerPacket(J)V

    .line 121
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 122
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion(I)V

    .line 126
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 127
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSoundVersion2Data()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSoundVersion2Data([B)V

    .line 131
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 132
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getBoxes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 134
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    .line 136
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 137
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    invoke-static {v4}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 140
    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 141
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {v2}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "esds"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    move-object v4, v2

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 146
    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    .line 147
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v4

    .line 148
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    move-result-object v3

    .line 149
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLFlag()I

    move-result v6

    if-eq v5, v6, :cond_2

    return-object v1

    .line 152
    :cond_2
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLLength()I

    move-result v6

    if-eq v5, v6, :cond_3

    return-object v1

    .line 155
    :cond_3
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDependsOnEsId()I

    move-result v6

    if-eq v5, v6, :cond_4

    return-object v1

    .line 158
    :cond_4
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getEsId()I

    move-result v6

    if-eq v5, v6, :cond_5

    return-object v1

    .line 161
    :cond_5
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCREsId()I

    move-result v6

    if-eq v5, v6, :cond_6

    return-object v1

    .line 164
    :cond_6
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getoCRstreamFlag()I

    move-result v6

    if-eq v5, v6, :cond_7

    return-object v1

    .line 167
    :cond_7
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getRemoteODFlag()I

    move-result v6

    if-eq v5, v6, :cond_8

    return-object v1

    .line 170
    :cond_8
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamDependenceFlag()I

    move-result v6

    if-eq v5, v6, :cond_9

    return-object v1

    .line 173
    :cond_9
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    move-result v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getStreamPriority()I

    move-result v6

    if-eq v5, v6, :cond_a

    return-object v1

    .line 176
    :cond_a
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_1

    :cond_b
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getURLString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    :goto_1
    return-object v1

    .line 179
    :cond_c
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto :goto_2

    :cond_d
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 180
    :goto_2
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v5

    .line 181
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getDecoderConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    move-result-object v6

    .line 182
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v7

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAudioSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    return-object v1

    .line 185
    :cond_e
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getAvgBitRate()J

    .line 188
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getBufferSizeDB()I

    .line 192
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v7

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_3

    :cond_f
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getDecoderSpecificInfo()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderSpecificInfo;

    move-result-object v7

    if-eqz v7, :cond_10

    :goto_3
    return-object v1

    .line 196
    :cond_10
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getMaxBitRate()J

    .line 199
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getProfileLevelIndicationDescriptors()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    return-object v1

    .line 203
    :cond_11
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v7

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getObjectTypeIndication()I

    move-result v8

    if-eq v7, v8, :cond_12

    return-object v1

    .line 206
    :cond_12
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v7

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getStreamType()I

    move-result v8

    if-eq v7, v8, :cond_13

    return-object v1

    .line 209
    :cond_13
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v5

    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->getUpStream()I

    move-result v6

    if-eq v5, v6, :cond_14

    return-object v1

    .line 215
    :cond_14
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto :goto_4

    :cond_15
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getOtherDescriptors()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_16

    :goto_4
    return-object v1

    .line 218
    :cond_16
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v4

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_5

    :cond_17
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->getSlConfigDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    move-result-object v3

    if-eqz v3, :cond_18

    :goto_5
    return-object v1

    .line 221
    :cond_18
    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_0

    :cond_19
    return-object v0

    :cond_1a
    return-object v1
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 276
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 277
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 278
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->blowupCompositionTimes(Ljava/util/List;)[I

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 281
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 282
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    .line 283
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    if-eq v7, v6, :cond_2

    goto :goto_2

    .line 287
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    .line 288
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v7

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto :goto_3

    .line 284
    :cond_3
    :goto_2
    new-instance v7, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-direct {v7, v8, v6}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 285
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 251
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 252
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 253
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->blowupTimeToSamples(Ljava/util/List;)[J

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 258
    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-wide v6, v3, v5

    .line 259
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    const-wide/16 v9, 0x1

    if-nez v8, :cond_3

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v11

    cmp-long v8, v11, v6

    if-eqz v8, :cond_2

    goto :goto_2

    .line 263
    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .line 264
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v7

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_3

    .line 260
    :cond_3
    :goto_2
    new-instance v8, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v8, v9, v10, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 261
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 323
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 324
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->stsd:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 239
    invoke-interface {v4}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 15

    .line 299
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    .line 302
    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    :cond_0
    new-array v0, v4, [J

    const-wide/16 v2, 0x0

    .line 308
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    array-length v5, v4

    move v6, v1

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    .line 309
    invoke-interface {v8}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v9

    array-length v10, v9

    move v11, v1

    :goto_2
    if-ge v11, v10, :cond_1

    aget-wide v12, v9, v11

    add-int/lit8 v14, v7, 0x1

    add-long/2addr v12, v2

    .line 310
    aput-wide v12, v0, v7

    add-int/lit8 v11, v11, 0x1

    move v7, v14

    goto :goto_2

    .line 312
    :cond_1
    invoke-interface {v8}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/AppendTrack;->tracks:[Lcom/googlecode/mp4parser/authoring/Track;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method
