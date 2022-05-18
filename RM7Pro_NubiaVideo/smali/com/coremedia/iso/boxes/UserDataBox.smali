.class public Lcom/coremedia/iso/boxes/UserDataBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "udta"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "udta"

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->_parseDetails(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContent(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/AbstractContainerBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/BoxParser;)V

    return-void
.end method
