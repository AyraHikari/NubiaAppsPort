.class public abstract Lcom/qualcomm/qti/snpe/UserBufferTensor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    }
.end annotation


# instance fields
.field private final mSize:I

.field private final mStrides:[I


# direct methods
.method constructor <init>(I[I)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mSize:I

    .line 22
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mStrides:[I

    .line 23
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public abstract getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
.end method

.method public getSize()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mSize:I

    return v0
.end method

.method public getStrides()[I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/UserBufferTensor;->mStrides:[I

    return-object v0
.end method

.method public abstract release()V
.end method
