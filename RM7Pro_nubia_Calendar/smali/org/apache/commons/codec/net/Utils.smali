.class Lorg/apache/commons/codec/net/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static digit16(B)I
    .locals 4
    .param p0, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 42
    int-to-char v1, p0

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 43
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 44
    new-instance v1, Lorg/apache/commons/codec/DecoderException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid URL encoding: not a valid digit (radix 16): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    return v0
.end method
