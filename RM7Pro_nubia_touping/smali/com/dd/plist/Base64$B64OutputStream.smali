.class public Lcom/dd/plist/Base64$B64OutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dd/plist/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "B64OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 1935
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dd/plist/Base64$B64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 1936
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1959
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1960
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->breakLines:Z

    .line 1961
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->encode:Z

    .line 1962
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->bufferLength:I

    .line 1963
    iget v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->buffer:[B

    .line 1964
    iput v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    .line 1965
    iput v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->lineLength:I

    .line 1966
    iput-boolean v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->suspendEncoding:Z

    .line 1967
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->b4:[B

    .line 1968
    iput p2, p0, Lcom/dd/plist/Base64$B64OutputStream;->options:I

    .line 1969
    invoke-static {p2}, Lcom/dd/plist/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->decodabet:[B

    .line 1970
    return-void

    :cond_0
    move v0, v2

    .line 1960
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1961
    goto :goto_1

    :cond_2
    move v0, v3

    .line 1962
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2083
    invoke-virtual {p0}, Lcom/dd/plist/Base64$B64OutputStream;->flushBase64()V

    .line 2087
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2089
    iput-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->buffer:[B

    .line 2090
    iput-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->out:Ljava/io/OutputStream;

    .line 2091
    return-void
.end method

.method public flushBase64()V
    .locals 5

    .prologue
    .line 2062
    iget v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    if-lez v0, :cond_0

    .line 2063
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->encode:Z

    if-eqz v0, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->b4:[B

    iget-object v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->buffer:[B

    iget v3, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    iget v4, p0, Lcom/dd/plist/Base64$B64OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lcom/dd/plist/Base64;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2065
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    .line 2072
    :cond_0
    return-void

    .line 2068
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 2116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->suspendEncoding:Z

    .line 2117
    return-void
.end method

.method public suspendEncoding()V
    .locals 1

    .prologue
    .line 2103
    invoke-virtual {p0}, Lcom/dd/plist/Base64$B64OutputStream;->flushBase64()V

    .line 2104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->suspendEncoding:Z

    .line 2105
    return-void
.end method

.method public write(I)V
    .locals 6

    .prologue
    const/4 v2, -0x5

    const/4 v5, 0x0

    .line 1989
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_1

    .line 1990
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->encode:Z

    if-eqz v0, :cond_3

    .line 1996
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->buffer:[B

    iget v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1997
    iget v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    iget v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->bufferLength:I

    if-lt v0, v1, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->b4:[B

    iget-object v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->buffer:[B

    iget v3, p0, Lcom/dd/plist/Base64$B64OutputStream;->bufferLength:I

    iget v4, p0, Lcom/dd/plist/Base64$B64OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lcom/dd/plist/Base64;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2001
    iget v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->lineLength:I

    .line 2002
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->breakLines:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->lineLength:I

    const/16 v1, 0x4c

    if-lt v0, v1, :cond_2

    .line 2003
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 2004
    iput v5, p0, Lcom/dd/plist/Base64$B64OutputStream;->lineLength:I

    .line 2007
    :cond_2
    iput v5, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    goto :goto_0

    .line 2014
    :cond_3
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->decodabet:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-le v0, v2, :cond_4

    .line 2015
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->buffer:[B

    iget v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 2016
    iget v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    iget v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->bufferLength:I

    if-lt v0, v1, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->buffer:[B

    iget-object v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->b4:[B

    iget v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->options:I

    invoke-static {v0, v5, v1, v5, v2}, Lcom/dd/plist/Base64;->access$200([BI[BII)I

    move-result v0

    .line 2019
    iget-object v1, p0, Lcom/dd/plist/Base64$B64OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/dd/plist/Base64$B64OutputStream;->b4:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2020
    iput v5, p0, Lcom/dd/plist/Base64$B64OutputStream;->position:I

    goto :goto_0

    .line 2023
    :cond_4
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->decodabet:[B

    and-int/lit8 v1, p1, 0x7f

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_0

    .line 2024
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid character in Base64 data."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 2043
    iget-boolean v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_1

    .line 2044
    iget-object v0, p0, Lcom/dd/plist/Base64$B64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2052
    :cond_0
    return-void

    .line 2048
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2049
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/dd/plist/Base64$B64OutputStream;->write(I)V

    .line 2048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
