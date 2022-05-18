.class public Lcom/coremedia/iso/boxes/MediaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MediaBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mdia"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "mdia"

    .line 30
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/coremedia/iso/boxes/MediaBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 53
    instance-of v2, v1, Lcom/coremedia/iso/boxes/HandlerBox;

    if-eqz v2, :cond_0

    .line 54
    check-cast v1, Lcom/coremedia/iso/boxes/HandlerBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/coremedia/iso/boxes/MediaBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 44
    instance-of v2, v1, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    if-eqz v2, :cond_0

    .line 45
    check-cast v1, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/coremedia/iso/boxes/MediaBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/Box;

    .line 35
    instance-of v2, v1, Lcom/coremedia/iso/boxes/MediaInformationBox;

    if-eqz v2, :cond_0

    .line 36
    check-cast v1, Lcom/coremedia/iso/boxes/MediaInformationBox;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
