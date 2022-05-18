.class public interface abstract Lcom/coremedia/iso/BoxParser;
.super Ljava/lang/Object;
.source "BoxParser.java"


# virtual methods
.method public abstract getClassForFourCc(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
