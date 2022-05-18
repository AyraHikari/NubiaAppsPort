.class public Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;
.super Ljava/lang/Object;
.source "ProgressiveDownloadInformationBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field initialDelay:J

.field rate:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->rate:J

    .line 60
    iput-wide p3, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->initialDelay:J

    return-void
.end method


# virtual methods
.method public getInitialDelay()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->initialDelay:J

    return-wide v0
.end method

.method public getRate()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->rate:J

    return-wide v0
.end method

.method public setInitialDelay(J)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->initialDelay:J

    return-void
.end method

.method public setRate(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->rate:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->rate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initialDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/ProgressiveDownloadInformationBox$Entry;->initialDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
