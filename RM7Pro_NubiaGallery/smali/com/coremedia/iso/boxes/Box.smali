.class public interface abstract Lcom/coremedia/iso/boxes/Box;
.super Ljava/lang/Object;
.source "Box.java"


# virtual methods
.method public abstract getBox(Ljava/nio/channels/WritableByteChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getParent()Lcom/coremedia/iso/boxes/ContainerBox;
.end method

.method public abstract getSize()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
.end method
