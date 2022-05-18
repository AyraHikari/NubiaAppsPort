.class public final Lcom/loc/dd;
.super Ljava/lang/Object;
.source "AmapWifi.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:S

.field public h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x71

    iput v0, p0, Lcom/loc/dd;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/dd;->f:J

    iput-boolean p1, p0, Lcom/loc/dd;->h:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 9

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-wide/16 v2, 0x0

    :cond_1
    :goto_0
    return-wide v2

    :cond_2
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_1
    if-ltz v1, :cond_7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x30

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    const-wide/16 v6, 0x39

    cmp-long v6, v4, v6

    if-gtz v6, :cond_4

    const-wide/16 v6, 0x30

    sub-long/2addr v4, v6

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    const-wide/16 v6, 0x61

    cmp-long v6, v4, v6

    if-ltz v6, :cond_5

    const-wide/16 v6, 0x66

    cmp-long v6, v4, v6

    if-gtz v6, :cond_5

    const-wide/16 v6, 0x61

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x41

    cmp-long v6, v4, v6

    if-ltz v6, :cond_6

    const-wide/16 v6, 0x46

    cmp-long v6, v4, v6

    if-gtz v6, :cond_6

    const-wide/16 v6, 0x41

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long/2addr v4, v6

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0x3a

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    const-wide/16 v6, 0x7c

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_7
    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/loc/dd;

    iget-boolean v1, p0, Lcom/loc/dd;->h:Z

    invoke-direct {v0, v1}, Lcom/loc/dd;-><init>(Z)V

    iget-wide v2, p0, Lcom/loc/dd;->a:J

    iput-wide v2, v0, Lcom/loc/dd;->a:J

    iget-object v1, p0, Lcom/loc/dd;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/loc/dd;->b:Ljava/lang/String;

    iget v1, p0, Lcom/loc/dd;->c:I

    iput v1, v0, Lcom/loc/dd;->c:I

    iget v1, p0, Lcom/loc/dd;->d:I

    iput v1, v0, Lcom/loc/dd;->d:I

    iget-wide v2, p0, Lcom/loc/dd;->e:J

    iput-wide v2, v0, Lcom/loc/dd;->e:J

    iget-wide v2, p0, Lcom/loc/dd;->f:J

    iput-wide v2, v0, Lcom/loc/dd;->f:J

    iget-short v1, p0, Lcom/loc/dd;->g:S

    iput-short v1, v0, Lcom/loc/dd;->g:S

    iget-boolean v1, p0, Lcom/loc/dd;->h:Z

    iput-boolean v1, v0, Lcom/loc/dd;->h:Z

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapWifi{mac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/loc/dd;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/dd;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/dd;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/loc/dd;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdateUtcMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/loc/dd;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", freshness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/loc/dd;->g:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/dd;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
