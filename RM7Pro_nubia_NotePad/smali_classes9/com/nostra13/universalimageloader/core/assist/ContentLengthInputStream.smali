.class public Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;
.super Ljava/io/InputStream;
.source "ContentLengthInputStream.java"


# instance fields
.field private final length:I

.field private final stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    .line 36
    iput p2, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->length:I

    .line 37
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->length:I

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 47
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 52
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 72
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/ContentLengthInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
