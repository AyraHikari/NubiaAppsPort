.class public interface abstract Lcom/coremedia/iso/boxes/ContainerBox;
.super Ljava/lang/Object;
.source "ContainerBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/Box;


# virtual methods
.method public abstract getBoxes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBoxes(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/Box;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getIsoFile()Lcom/coremedia/iso/IsoFile;
.end method

.method public abstract getNumOfBytesToFirstChild()J
.end method

.method public abstract getParent()Lcom/coremedia/iso/boxes/ContainerBox;
.end method

.method public abstract setBoxes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation
.end method
