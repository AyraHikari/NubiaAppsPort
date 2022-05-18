.class public abstract Lcom/qualcomm/qti/snpe/Tensor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mShape:[I


# direct methods
.method protected varargs constructor <init>([I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/Tensor;->mShape:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getShape()[I
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/Tensor;->mShape:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/snpe/Tensor;->mShape:[I

    invoke-static {v0}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->sizeOf([I)I

    move-result v0

    return v0
.end method

.method public abstract release()V
.end method
