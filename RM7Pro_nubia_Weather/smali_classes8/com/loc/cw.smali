.class public abstract Lcom/loc/cw;
.super Ljava/lang/Object;
.source "AmapCell.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:I

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cw;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/cw;->b:Ljava/lang/String;

    const/16 v0, 0x63

    iput v0, p0, Lcom/loc/cw;->c:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/loc/cw;->d:I

    iput-wide v2, p0, Lcom/loc/cw;->e:J

    iput-wide v2, p0, Lcom/loc/cw;->f:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/cw;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cw;->i:Z

    iput-boolean p1, p0, Lcom/loc/cw;->h:Z

    iput-boolean p2, p0, Lcom/loc/cw;->i:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/loc/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Lcom/loc/cw;
.end method

.method public final a(Lcom/loc/cw;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/loc/cw;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cw;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/loc/cw;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cw;->b:Ljava/lang/String;

    iget v0, p1, Lcom/loc/cw;->c:I

    iput v0, p0, Lcom/loc/cw;->c:I

    iget v0, p1, Lcom/loc/cw;->d:I

    iput v0, p0, Lcom/loc/cw;->d:I

    iget-wide v0, p1, Lcom/loc/cw;->e:J

    iput-wide v0, p0, Lcom/loc/cw;->e:J

    iget-wide v0, p1, Lcom/loc/cw;->f:J

    iput-wide v0, p0, Lcom/loc/cw;->f:J

    iget v0, p1, Lcom/loc/cw;->g:I

    iput v0, p0, Lcom/loc/cw;->g:I

    iget-boolean v0, p1, Lcom/loc/cw;->h:Z

    iput-boolean v0, p0, Lcom/loc/cw;->h:Z

    iget-boolean v0, p1, Lcom/loc/cw;->i:Z

    iput-boolean v0, p0, Lcom/loc/cw;->i:Z

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/loc/cw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/cw;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/loc/cw;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/cw;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/cw;->a()Lcom/loc/cw;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapCell{mcc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/cw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cw;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asulevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cw;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdateSystemMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/loc/cw;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdateUtcMills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/loc/cw;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cw;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", main="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/cw;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newapi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/loc/cw;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
