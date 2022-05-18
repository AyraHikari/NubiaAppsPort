.class public Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;
.super Ljava/lang/Object;
.source "TrackFragmentRandomAccessBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field private moofOffset:J

.field private sampleNumber:J

.field private time:J

.field private trafNumber:J

.field private trunNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-wide p3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    .line 203
    iput-wide p9, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    .line 204
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    .line 205
    iput-wide p5, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    .line 206
    iput-wide p7, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    return-void
.end method

.method static synthetic access$000(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;)J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;J)J
    .locals 0

    .line 191
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    return-wide p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    check-cast p1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;

    .line 267
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 268
    :cond_2
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 269
    :cond_3
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 270
    :cond_4
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    return v1

    .line 271
    :cond_5
    iget-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    iget-wide v4, p1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public getMoofOffset()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    return-wide v0
.end method

.method public getSampleNumber()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    return-wide v0
.end method

.method public getTrafNumber()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    return-wide v0
.end method

.method public getTrunNumber()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 278
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 280
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 282
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setMoofOffset(J)V
    .locals 0

    .line 234
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    return-void
.end method

.method public setSampleNumber(J)V
    .locals 0

    .line 246
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 230
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    return-void
.end method

.method public setTrafNumber(J)V
    .locals 0

    .line 238
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    return-void
.end method

.method public setTrunNumber(J)V
    .locals 0

    .line 242
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", moofOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->moofOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trafNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trafNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trunNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->trunNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/TrackFragmentRandomAccessBox$Entry;->sampleNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
