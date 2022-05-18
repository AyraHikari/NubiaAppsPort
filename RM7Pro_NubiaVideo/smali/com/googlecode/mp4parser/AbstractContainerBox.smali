.class public abstract Lcom/googlecode/mp4parser/AbstractContainerBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/ContainerBox;


# static fields
.field private static LOG:Ljava/util/logging/Logger;


# instance fields
.field protected boxParser:Lcom/coremedia/iso/BoxParser;

.field protected boxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/AbstractContainerBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/AbstractContainerBox;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public addBox(Lcom/coremedia/iso/boxes/Box;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBoxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoxes(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBoxes(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 4
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

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_0

    .line 7
    instance-of v3, v2, Lcom/coremedia/iso/boxes/ContainerBox;

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Lcom/coremedia/iso/boxes/ContainerBox;

    invoke-interface {v2, p1, p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 2
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getNumOfBytesToFirstChild()J
    .locals 2

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxParser:Lcom/coremedia/iso/BoxParser;

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/AbstractBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    return-void
.end method

.method protected final parseChildBoxes(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    iget-object v1, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxParser:Lcom/coremedia/iso/BoxParser;

    new-instance v2, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v2, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v1, v2, p0}, Lcom/coremedia/iso/BoxParser;->parseBox(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;->setDeadBytes(Ljava/nio/ByteBuffer;)V

    .line 5
    sget-object p1, Lcom/googlecode/mp4parser/AbstractContainerBox;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Something\'s wrong with the sizes. There are dead bytes in a container box."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeBox(Lcom/coremedia/iso/boxes/Box;)V
    .locals 1

    .line 1
    invoke-interface {p1, p0}, Lcom/coremedia/iso/boxes/Box;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    .line 2
    iget-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBoxes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/Box;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ";"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final writeChildBoxes(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;

    invoke-direct {v0, p1}, Lcom/googlecode/mp4parser/util/ByteBufferByteChannel;-><init>(Ljava/nio/ByteBuffer;)V

    .line 2
    iget-object p1, p0, Lcom/googlecode/mp4parser/AbstractContainerBox;->boxes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 3
    :try_start_0
    invoke-interface {v1, v0}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot happen to me"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method
