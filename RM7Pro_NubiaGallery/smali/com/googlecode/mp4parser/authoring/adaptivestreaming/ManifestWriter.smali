.class public interface abstract Lcom/googlecode/mp4parser/authoring/adaptivestreaming/ManifestWriter;
.super Ljava/lang/Object;
.source "ManifestWriter.java"


# virtual methods
.method public abstract calculateFragmentDurations(Lcom/googlecode/mp4parser/authoring/Track;Lcom/googlecode/mp4parser/authoring/Movie;)[J
.end method

.method public abstract getBitrate(Lcom/googlecode/mp4parser/authoring/Track;)J
.end method

.method public abstract getManifest(Lcom/googlecode/mp4parser/authoring/Movie;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
