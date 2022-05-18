.class public Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "SubtitleMediaHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "sthd"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "sthd"

    .line 10
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SubtitleMediaHeaderBox"

    return-object v0
.end method
