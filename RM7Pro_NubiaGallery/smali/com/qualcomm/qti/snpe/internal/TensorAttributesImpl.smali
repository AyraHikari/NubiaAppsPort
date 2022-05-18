.class public Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;
.super Ljava/lang/Object;
.source "TensorAttributesImpl.java"

# interfaces
.implements Lcom/qualcomm/qti/snpe/TensorAttributes;


# instance fields
.field private final mAlignments:[I

.field private final mDimensions:[I

.field private final mElementSize:I

.field private final mEncoding:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mDimensions:[I

    .line 24
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mAlignments:[I

    .line 25
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mElementSize:I

    .line 26
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->getEncoding(I)Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mEncoding:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-void
.end method

.method private getEncoding(I)Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 5

    .line 50
    invoke-static {}, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->values()[Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    iget v4, v3, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->ordinal:I

    if-ne p1, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    sget-object p1, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->UNKNOWN:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-object p1
.end method


# virtual methods
.method public getAlignments()[I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mAlignments:[I

    return-object v0
.end method

.method public getDims()[I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mDimensions:[I

    return-object v0
.end method

.method public getElementSize()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mElementSize:I

    return v0
.end method

.method public getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/TensorAttributesImpl;->mEncoding:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    return-object v0
.end method
