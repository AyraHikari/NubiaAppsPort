.class Lcn/nubia/d/k;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x4

    .line 26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a(I)Lcn/nubia/d/k;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 46
    iget-object v0, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    iget-object p1, p0, Lcn/nubia/d/k;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-object p0
.end method

.method public a(Lcn/nubia/d/l;)Lcn/nubia/d/k;
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcn/nubia/d/l;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    .line 53
    invoke-virtual {p1}, Lcn/nubia/d/l;->b()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/d/k;->a(I)Lcn/nubia/d/k;

    return-object p0
.end method

.method public a(Ljava/nio/ByteOrder;)Lcn/nubia/d/k;
    .locals 1

    .line 33
    iget-object v0, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public a(S)Lcn/nubia/d/k;
    .locals 3

    .line 38
    iget-object v0, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    iget-object v0, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 40
    iget-object p1, p0, Lcn/nubia/d/k;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcn/nubia/d/k;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-object p0
.end method
