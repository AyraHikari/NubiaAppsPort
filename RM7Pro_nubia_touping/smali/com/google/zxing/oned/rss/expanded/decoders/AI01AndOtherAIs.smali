.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01AndOtherAIs.java"


# static fields
.field private static final HEADER_SIZE:I = 0x4


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0
    .param p1, "information"    # Lcom/google/zxing/common/BitArray;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 43
    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "buff":Ljava/lang/StringBuilder;
    const-string v3, "(01)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 51
    .local v2, "initialGtinPosition":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    .line 52
    .local v1, "firstGtinDigit":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const/16 v3, 0x8

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V

    .line 56
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v0, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
