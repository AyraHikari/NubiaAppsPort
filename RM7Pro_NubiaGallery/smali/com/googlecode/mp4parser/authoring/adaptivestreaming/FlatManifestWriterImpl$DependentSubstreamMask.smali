.class Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
.super Ljava/lang/Object;
.source "FlatManifestWriterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DependentSubstreamMask"
.end annotation


# instance fields
.field private dWChannelMaskFirstByte:B

.field private dWChannelMaskSecondByte:B

.field private entry:Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;BBLcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->this$0:Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-byte p2, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskFirstByte:B

    .line 607
    iput-byte p3, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    .line 608
    iput-object p4, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->entry:Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    return-void
.end method


# virtual methods
.method public getdWChannelMaskFirstByte()B
    .locals 1

    .line 612
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskFirstByte:B

    return v0
.end method

.method public getdWChannelMaskSecondByte()B
    .locals 1

    .line 616
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    return v0
.end method

.method public process()Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->entry:Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;

    iget v0, v0, Lcom/googlecode/mp4parser/boxes/EC3SpecificBox$Entry;->chan_loc:I

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 637
    :cond_0
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    or-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    goto :goto_0

    .line 634
    :cond_1
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    or-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    goto :goto_0

    .line 631
    :cond_2
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    goto :goto_0

    .line 628
    :cond_3
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskSecondByte:B

    goto :goto_0

    .line 625
    :cond_4
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskFirstByte:B

    or-int/lit8 v0, v0, 0xc

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskFirstByte:B

    goto :goto_0

    .line 622
    :cond_5
    iget-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskFirstByte:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/googlecode/mp4parser/authoring/adaptivestreaming/FlatManifestWriterImpl$DependentSubstreamMask;->dWChannelMaskFirstByte:B

    :goto_0
    return-object p0
.end method
