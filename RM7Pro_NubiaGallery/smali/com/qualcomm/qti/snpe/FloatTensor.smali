.class public abstract Lcom/qualcomm/qti/snpe/FloatTensor;
.super Lcom/qualcomm/qti/snpe/Tensor;
.source "FloatTensor.java"


# direct methods
.method protected varargs constructor <init>([I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/Tensor;-><init>([I)V

    return-void
.end method


# virtual methods
.method public varargs abstract read([I)F
.end method

.method public varargs abstract read([FII[I)I
.end method

.method public varargs abstract write(F[I)V
.end method

.method public varargs abstract write([FII[I)V
.end method
