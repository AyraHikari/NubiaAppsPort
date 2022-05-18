.class public final Lcom/loc/da;
.super Lcom/loc/cw;
.source "AmapCellWcdma.java"


# instance fields
.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    const v1, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/loc/cw;-><init>(ZZ)V

    iput v0, p0, Lcom/loc/da;->j:I

    iput v0, p0, Lcom/loc/da;->k:I

    iput v1, p0, Lcom/loc/da;->l:I

    iput v1, p0, Lcom/loc/da;->m:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/loc/cw;
    .locals 3

    new-instance v0, Lcom/loc/da;

    iget-boolean v1, p0, Lcom/loc/da;->h:Z

    iget-boolean v2, p0, Lcom/loc/da;->i:Z

    invoke-direct {v0, v1, v2}, Lcom/loc/da;-><init>(ZZ)V

    invoke-virtual {v0, p0}, Lcom/loc/da;->a(Lcom/loc/cw;)V

    iget v1, p0, Lcom/loc/da;->j:I

    iput v1, v0, Lcom/loc/da;->j:I

    iget v1, p0, Lcom/loc/da;->k:I

    iput v1, v0, Lcom/loc/da;->k:I

    iget v1, p0, Lcom/loc/da;->l:I

    iput v1, v0, Lcom/loc/da;->l:I

    iget v1, p0, Lcom/loc/da;->m:I

    iput v1, v0, Lcom/loc/da;->m:I

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/loc/da;->a()Lcom/loc/cw;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmapCellWcdma{lac="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/loc/da;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/da;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/da;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uarfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/loc/da;->m:I

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
