.class public interface abstract Lcom/coremedia/iso/boxes/Box;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getBox(Ljava/nio/channels/WritableByteChannel;)V
.end method

.method public abstract getParent()Lcom/coremedia/iso/boxes/ContainerBox;
.end method

.method public abstract getSize()J
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
.end method

.method public abstract setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
.end method
