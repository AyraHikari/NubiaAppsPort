.class public Lcom/dd/plist/Base64$B64InputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dd/plist/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "B64InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 1724
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dd/plist/Base64$B64InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1725
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1749
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1750
    iput p2, p0, Lcom/dd/plist/Base64$B64InputStream;->options:I

    .line 1751
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dd/plist/Base64$B64InputStream;->breakLines:Z

    .line 1752
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/dd/plist/Base64$B64InputStream;->encode:Z

    .line 1753
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/dd/plist/Base64$B64InputStream;->bufferLength:I

    .line 1754
    iget v0, p0, Lcom/dd/plist/Base64$B64InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dd/plist/Base64$B64InputStream;->buffer:[B

    .line 1755
    const/4 v0, -0x1

    iput v0, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    .line 1756
    iput v2, p0, Lcom/dd/plist/Base64$B64InputStream;->lineLength:I

    .line 1757
    invoke-static {p2}, Lcom/dd/plist/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/Base64$B64InputStream;->decodabet:[B

    .line 1758
    return-void

    :cond_0
    move v0, v2

    .line 1751
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1752
    goto :goto_1

    .line 1753
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1771
    iget v0, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    if-gez v0, :cond_1

    .line 1772
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64InputStream;->encode:Z

    if-eqz v0, :cond_3

    .line 1773
    new-array v0, v5, [B

    move v3, v1

    move v2, v1

    .line 1775
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1776
    iget-object v4, p0, Lcom/dd/plist/Base64$B64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1779
    if-ltz v4, :cond_0

    .line 1780
    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 1781
    add-int/lit8 v4, v2, 0x1

    .line 1775
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_0

    .line 1788
    :cond_0
    if-lez v2, :cond_2

    .line 1789
    iget-object v3, p0, Lcom/dd/plist/Base64$B64InputStream;->buffer:[B

    iget v5, p0, Lcom/dd/plist/Base64$B64InputStream;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/dd/plist/Base64;->access$100([BII[BII)[B

    .line 1790
    iput v1, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    .line 1791
    iput v7, p0, Lcom/dd/plist/Base64$B64InputStream;->numSigBytes:I

    .line 1833
    :cond_1
    :goto_1
    iget v0, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    if-ltz v0, :cond_d

    .line 1835
    iget v0, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    iget v2, p0, Lcom/dd/plist/Base64$B64InputStream;->numSigBytes:I

    if-lt v0, v2, :cond_a

    move v0, v6

    .line 1854
    :goto_2
    return v0

    :cond_2
    move v0, v6

    .line 1794
    goto :goto_2

    .line 1800
    :cond_3
    new-array v2, v7, [B

    move v0, v1

    .line 1802
    :goto_3
    if-ge v0, v7, :cond_6

    .line 1806
    :cond_4
    iget-object v3, p0, Lcom/dd/plist/Base64$B64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 1808
    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/dd/plist/Base64$B64InputStream;->decodabet:[B

    and-int/lit8 v5, v3, 0x7f

    aget-byte v4, v4, v5

    const/4 v5, -0x5

    if-le v4, v5, :cond_4

    .line 1810
    :cond_5
    if-gez v3, :cond_7

    .line 1817
    :cond_6
    if-ne v0, v7, :cond_8

    .line 1818
    iget-object v0, p0, Lcom/dd/plist/Base64$B64InputStream;->buffer:[B

    iget v3, p0, Lcom/dd/plist/Base64$B64InputStream;->options:I

    invoke-static {v2, v1, v0, v1, v3}, Lcom/dd/plist/Base64;->access$200([BI[BII)I

    move-result v0

    iput v0, p0, Lcom/dd/plist/Base64$B64InputStream;->numSigBytes:I

    .line 1819
    iput v1, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    goto :goto_1

    .line 1814
    :cond_7
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 1802
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1821
    :cond_8
    if-nez v0, :cond_9

    move v0, v6

    .line 1822
    goto :goto_2

    .line 1826
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Improperly padded Base64 input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :cond_a
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64InputStream;->encode:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64InputStream;->breakLines:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/dd/plist/Base64$B64InputStream;->lineLength:I

    const/16 v2, 0x4c

    if-lt v0, v2, :cond_b

    .line 1840
    iput v1, p0, Lcom/dd/plist/Base64$B64InputStream;->lineLength:I

    .line 1841
    const/16 v0, 0xa

    goto :goto_2

    .line 1844
    :cond_b
    iget v0, p0, Lcom/dd/plist/Base64$B64InputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dd/plist/Base64$B64InputStream;->lineLength:I

    .line 1848
    iget-object v0, p0, Lcom/dd/plist/Base64$B64InputStream;->buffer:[B

    iget v1, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    aget-byte v0, v0, v1

    .line 1850
    iget v1, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    iget v2, p0, Lcom/dd/plist/Base64$B64InputStream;->bufferLength:I

    if-lt v1, v2, :cond_c

    .line 1851
    iput v6, p0, Lcom/dd/plist/Base64$B64InputStream;->position:I

    .line 1854
    :cond_c
    and-int/lit16 v0, v0, 0xff

    goto :goto_2

    .line 1861
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Base64 code reading stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 1883
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1884
    invoke-virtual {p0}, Lcom/dd/plist/Base64$B64InputStream;->read()I

    move-result v1

    .line 1886
    if-ltz v1, :cond_0

    .line 1887
    add-int v2, p2, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    .line 1883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1888
    :cond_0
    if-nez v0, :cond_1

    .line 1889
    const/4 v0, -0x1

    .line 1894
    :cond_1
    return v0
.end method
