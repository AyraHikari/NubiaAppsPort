.class public interface abstract Lcom/googlecode/mp4parser/authoring/Track;
.super Ljava/lang/Object;
.source "Track.java"


# virtual methods
.method public abstract getCompositionTimeEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDecodingTimeEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandler()Ljava/lang/String;
.end method

.method public abstract getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
.end method

.method public abstract getSampleDependencies()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
.end method

.method public abstract getSamples()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
.end method

.method public abstract getSyncSamples()[J
.end method

.method public abstract getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isInMovie()Z
.end method

.method public abstract isInPoster()Z
.end method

.method public abstract isInPreview()Z
.end method
