.class public Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MovieExtendsHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mehd"


# instance fields
.field private fragmentDuration:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "mehd"

    .line 39
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 50
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 56
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 57
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt64(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 60
    :cond_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/IsoTypeWriter;->writeUInt32(Ljava/nio/ByteBuffer;J)V

    :goto_0
    return-void
.end method

.method protected getContentSize()J
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0xc

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x8

    :goto_0
    return-wide v0
.end method

.method public getFragmentDuration()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J

    return-wide v0
.end method

.method public setFragmentDuration(J)V
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsHeaderBox;->fragmentDuration:J

    return-void
.end method
