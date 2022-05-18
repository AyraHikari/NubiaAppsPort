.class public final Lcom/loc/cz;
.super Lcom/loc/cw;
.source "AmapCellLte.java"


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7fffffff

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/loc/cw;-><init>(ZZ)V

    iput v2, p0, Lcom/loc/cz;->j:I

    iput v2, p0, Lcom/loc/cz;->k:I

    iput v1, p0, Lcom/loc/cz;->l:I

    iput v1, p0, Lcom/loc/cz;->m:I

    iput v1, p0, Lcom/loc/cz;->n:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/loc/cw;
    .locals 2

    new-instance v0, Lcom/loc/cz;

    iget-boolean v1, p0, Lcom/loc/cz;->h:Z

    invoke-direct {v0, v1}, Lcom/loc/cz;-><init>(Z)V

    invoke-virtual {v0, p0}, Lcom/loc/cz;->a(Lcom/loc/cw;)V

    iget v1, p0, Lcom/loc/cz;->j:I

    iput v1, v0, Lcom/loc/cz;->j:I

    iget v1, p0, Lcom/loc/cz;->k:I

    iput v1, v0, Lcom/loc/cz;->k:I

    iget v1, p0, Lcom/loc/cz;->l:I

    iput v1, v0, Lcom/loc/cz;->l:I

    iget v1, p0, Lcom/loc/cz;->m:I

    iput v1, v0, Lcom/loc/cz;->m:I

    iget v1, p0, Lcom/loc/cz;->n:I

    iput v1, v0, Lcom/loc/cz;->n:I

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/cz;->a()Lcom/loc/cw;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapCellLte{lac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/loc/cz;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cz;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cz;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", earfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cz;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timingAdvance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/cz;->n:I

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
