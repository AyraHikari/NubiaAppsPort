.class public final Lcom/loc/cx;
.super Lcom/loc/cw;
.source "AmapCellCdma.java"


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/loc/cw;-><init>(ZZ)V

    iput v0, p0, Lcom/loc/cx;->j:I

    iput v0, p0, Lcom/loc/cx;->k:I

    iput v0, p0, Lcom/loc/cx;->l:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/loc/cw;
    .locals 3

    new-instance v0, Lcom/loc/cx;

    iget-boolean v1, p0, Lcom/loc/cx;->h:Z

    iget-boolean v2, p0, Lcom/loc/cx;->i:Z

    invoke-direct {v0, v1, v2}, Lcom/loc/cx;-><init>(ZZ)V

    invoke-virtual {v0, p0}, Lcom/loc/cx;->a(Lcom/loc/cw;)V

    iget v1, v0, Lcom/loc/cx;->j:I

    iput v1, p0, Lcom/loc/cx;->j:I

    iget v1, v0, Lcom/loc/cx;->k:I

    iput v1, p0, Lcom/loc/cx;->k:I

    iget v1, v0, Lcom/loc/cx;->l:I

    iput v1, p0, Lcom/loc/cx;->l:I

    iget v1, v0, Lcom/loc/cx;->m:I

    iput v1, p0, Lcom/loc/cx;->m:I

    iget v1, v0, Lcom/loc/cx;->n:I

    iput v1, p0, Lcom/loc/cx;->n:I

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/cx;->a()Lcom/loc/cw;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapCellCdma{sid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/loc/cx;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cx;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cx;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cx;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cx;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/loc/cw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
