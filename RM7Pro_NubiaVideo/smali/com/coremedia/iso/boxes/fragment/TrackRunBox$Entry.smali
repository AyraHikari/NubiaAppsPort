.class public Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/fragment/TrackRunBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private sampleCompositionTimeOffset:I

.field private sampleDuration:J

.field private sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

.field private sampleSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLcom/coremedia/iso/boxes/fragment/SampleFlags;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J

    .line 4
    iput-wide p3, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J

    .line 5
    iput-object p5, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    .line 6
    iput p6, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;Lcom/coremedia/iso/boxes/fragment/SampleFlags;)Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I

    return p0
.end method

.method static synthetic access$302(Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I

    return p1
.end method


# virtual methods
.method public getSampleCompositionTimeOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I

    return v0
.end method

.method public getSampleDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J

    return-wide v0
.end method

.method public getSampleFlags()Lcom/coremedia/iso/boxes/fragment/SampleFlags;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-object v0
.end method

.method public getSampleSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J

    return-wide v0
.end method

.method public setSampleCompositionTimeOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I

    return-void
.end method

.method public setSampleDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J

    return-void
.end method

.method public setSampleFlags(Lcom/coremedia/iso/boxes/fragment/SampleFlags;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    return-void
.end method

.method public setSampleSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{sampleDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleFlags:Lcom/coremedia/iso/boxes/fragment/SampleFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sampleCompositionTimeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->sampleCompositionTimeOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
