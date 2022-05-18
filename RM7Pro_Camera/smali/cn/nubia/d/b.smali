.class Lcn/nubia/d/b;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true


# instance fields
.field private b:I

.field private final c:[B

.field private final d:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcn/nubia/d/b;->b:I

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 32
    iput-object p1, p0, Lcn/nubia/d/b;->c:[B

    .line 33
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/d/b;->d:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 40
    iget v0, p0, Lcn/nubia/d/b;->b:I

    return v0
.end method

.method public a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 132
    new-array p1, p1, [B

    .line 133
    invoke-virtual {p0, p1}, Lcn/nubia/d/b;->a([B)V

    .line 134
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public a(J)V
    .locals 2

    .line 72
    invoke-virtual {p0, p1, p2}, Lcn/nubia/d/b;->skip(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public a(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcn/nubia/d/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcn/nubia/d/b;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/d/b;->read([BII)I

    move-result p1

    if-ne p1, p3, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public b()Ljava/nio/ByteOrder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/d/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 2

    .line 76
    iget v0, p0, Lcn/nubia/d/b;->b:I

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 78
    sget-boolean v0, Lcn/nubia/d/b;->a:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/d/b;->a(J)V

    return-void
.end method

.method public c()S
    .locals 3

    .line 100
    iget-object v0, p0, Lcn/nubia/d/b;->c:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/d/b;->a([BII)V

    .line 101
    iget-object v0, p0, Lcn/nubia/d/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 102
    iget-object v0, p0, Lcn/nubia/d/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcn/nubia/d/b;->c()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 3

    .line 110
    iget-object v0, p0, Lcn/nubia/d/b;->c:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/d/b;->a([BII)V

    .line 111
    iget-object v0, p0, Lcn/nubia/d/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 112
    iget-object v0, p0, Lcn/nubia/d/b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public f()J
    .locals 4

    .line 116
    invoke-virtual {p0}, Lcn/nubia/d/b;->e()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 3

    .line 59
    iget-object v0, p0, Lcn/nubia/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 60
    iget v1, p0, Lcn/nubia/d/b;->b:I

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/d/b;->b:I

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 45
    iget-object v0, p0, Lcn/nubia/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 46
    iget v0, p0, Lcn/nubia/d/b;->b:I

    if-ltz p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/d/b;->b:I

    return p1
.end method

.method public read([BII)I
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/nubia/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 53
    iget p2, p0, Lcn/nubia/d/b;->b:I

    if-ltz p1, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/2addr p2, p3

    iput p2, p0, Lcn/nubia/d/b;->b:I

    return p1
.end method

.method public skip(J)J
    .locals 2

    .line 66
    iget-object v0, p0, Lcn/nubia/d/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 67
    iget v0, p0, Lcn/nubia/d/b;->b:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcn/nubia/d/b;->b:I

    return-wide p1
.end method
