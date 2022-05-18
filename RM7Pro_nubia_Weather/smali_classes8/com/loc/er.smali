.class public Lcom/loc/er;
.super Ljava/lang/Object;
.source "FlatBufferBuilder.java"


# static fields
.field static final c:Ljava/nio/charset/Charset;

.field static final synthetic p:Z


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:I

.field d:I

.field e:[I

.field f:I

.field g:Z

.field h:Z

.field i:I

.field j:[I

.field k:I

.field l:I

.field m:Z

.field n:Ljava/nio/charset/CharsetEncoder;

.field o:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/loc/er;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/loc/er;->p:Z

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/loc/er;->c:Ljava/nio/charset/Charset;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    const/16 v2, 0x400

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/er;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/er;->e:[I

    iput v1, p0, Lcom/loc/er;->f:I

    iput-boolean v1, p0, Lcom/loc/er;->g:Z

    iput-boolean v1, p0, Lcom/loc/er;->h:Z

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/loc/er;->j:[I

    iput v1, p0, Lcom/loc/er;->k:I

    iput v1, p0, Lcom/loc/er;->l:I

    iput-boolean v1, p0, Lcom/loc/er;->m:Z

    sget-object v0, Lcom/loc/er;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/er;->n:Ljava/nio/charset/CharsetEncoder;

    iput v2, p0, Lcom/loc/er;->b:I

    invoke-static {v2}, Lcom/loc/er;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/er;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/er;->e:[I

    iput v1, p0, Lcom/loc/er;->f:I

    iput-boolean v1, p0, Lcom/loc/er;->g:Z

    iput-boolean v1, p0, Lcom/loc/er;->h:Z

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/loc/er;->j:[I

    iput v1, p0, Lcom/loc/er;->k:I

    iput v1, p0, Lcom/loc/er;->l:I

    iput-boolean v1, p0, Lcom/loc/er;->m:Z

    sget-object v0, Lcom/loc/er;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/er;->n:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Lcom/loc/er;->a(Ljava/nio/ByteBuffer;)Lcom/loc/er;

    return-void
.end method

.method private a(S)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/loc/er;->b:I

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/loc/er;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private c(II)V
    .locals 6

    iget v0, p0, Lcom/loc/er;->d:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/loc/er;->d:I

    :cond_0
    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/loc/er;->b:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/loc/er;->b:I

    add-int v2, v0, p1

    add-int/2addr v2, p2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/high16 v4, -0x40000000    # -2.0f

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: cannot grow buffer beyond 2 gigabytes."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    shl-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v4}, Lcom/loc/er;->d(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sub-int v3, v4, v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/loc/er;->b:I

    iget-object v3, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    sub-int v1, v3, v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/loc/er;->b:I

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/loc/er;->e(I)V

    return-void
.end method

.method private d()I
    .locals 2

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/loc/er;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private static d(I)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/loc/er;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: object serialization must not be nested."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/loc/er;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/loc/er;->b:I

    invoke-virtual {v2, v3, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 2

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/loc/er;->b:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/loc/er;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private g(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    invoke-direct {p0, p1}, Lcom/loc/er;->f(I)V

    return-void
.end method

.method private h(I)V
    .locals 2

    iget-object v0, p0, Lcom/loc/er;->e:[I

    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v1

    aput v1, v0, p1

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-boolean v0, p0, Lcom/loc/er;->g:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: endVector called without startVector"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/er;->g:Z

    iget v0, p0, Lcom/loc/er;->l:I

    invoke-direct {p0, v0}, Lcom/loc/er;->f(I)V

    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)I
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/loc/er;->n:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/loc/er;->o:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/er;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    const/16 v1, 0x80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/er;->o:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/loc/er;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/nio/CharBuffer;

    :goto_0
    iget-object v0, p0, Lcom/loc/er;->n:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lcom/loc/er;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v0, p0, Lcom/loc/er;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/loc/er;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/loc/er;->a(B)V

    invoke-virtual {p0, v3, v1, v3}, Lcom/loc/er;->a(III)V

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/loc/er;->b:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/loc/er;->b:I

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/loc/er;->a()I

    move-result v0

    return v0

    :cond_3
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/nio/ByteBuffer;)Lcom/loc/er;
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/er;->d:I

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/loc/er;->b:I

    iput v2, p0, Lcom/loc/er;->f:I

    iput-boolean v2, p0, Lcom/loc/er;->g:Z

    iput-boolean v2, p0, Lcom/loc/er;->h:Z

    iput v2, p0, Lcom/loc/er;->i:I

    iput v2, p0, Lcom/loc/er;->k:I

    iput v2, p0, Lcom/loc/er;->l:I

    return-object p0
.end method

.method public final a(B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/loc/er;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/loc/er;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    sget-boolean v0, Lcom/loc/er;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lcom/loc/er;->f(I)V

    return-void
.end method

.method public final a(IB)V
    .locals 1

    iget-boolean v0, p0, Lcom/loc/er;->m:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/loc/er;->a(B)V

    invoke-direct {p0, p1}, Lcom/loc/er;->h(I)V

    :cond_1
    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/loc/er;->m:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/loc/er;->g(I)V

    invoke-direct {p0, p1}, Lcom/loc/er;->h(I)V

    :cond_1
    return-void
.end method

.method public final a(III)V
    .locals 2

    invoke-direct {p0}, Lcom/loc/er;->e()V

    iput p2, p0, Lcom/loc/er;->l:I

    const/4 v0, 0x4

    mul-int v1, p1, p2

    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    mul-int v0, p1, p2

    invoke-direct {p0, p3, v0}, Lcom/loc/er;->c(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/er;->g:Z

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    iget-boolean v0, p0, Lcom/loc/er;->m:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/loc/er;->b:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lcom/loc/er;->b:I

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/loc/er;->h(I)V

    :cond_1
    return-void
.end method

.method public final a(IS)V
    .locals 1

    iget-boolean v0, p0, Lcom/loc/er;->m:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/loc/er;->a(S)V

    invoke-direct {p0, p1}, Lcom/loc/er;->h(I)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/loc/er;->m:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/loc/er;->b:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/loc/er;->b:I

    if-eqz p1, :cond_2

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {v2, v3, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/loc/er;->h(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final b()I
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/er;->e:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/er;->g:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: endObject called without startObject"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/loc/er;->g(I)V

    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v3

    iget v0, p0, Lcom/loc/er;->f:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/loc/er;->e:[I

    aget v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/er;->e:[I

    aget v0, v0, v2

    sub-int v0, v3, v0

    :goto_1
    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/loc/er;->a(S)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/loc/er;->i:I

    sub-int v0, v3, v0

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/loc/er;->a(S)V

    iget v0, p0, Lcom/loc/er;->f:I

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/loc/er;->a(S)V

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/loc/er;->k:I

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v4, p0, Lcom/loc/er;->j:[I

    aget v4, v4, v0

    sub-int v4, v2, v4

    iget v5, p0, Lcom/loc/er;->b:I

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    if-ne v6, v2, :cond_5

    const/4 v2, 0x2

    :goto_3
    if-ge v2, v6, :cond_4

    iget-object v7, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    add-int v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    iget-object v8, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    add-int v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v8

    if-ne v7, v8, :cond_5

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/loc/er;->j:[I

    aget v0, v2, v0

    :goto_4
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/loc/er;->b:I

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/loc/er;->b:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_5
    iput-boolean v1, p0, Lcom/loc/er;->g:Z

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/loc/er;->k:I

    iget-object v2, p0, Lcom/loc/er;->j:[I

    array-length v2, v2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/loc/er;->j:[I

    iget v2, p0, Lcom/loc/er;->k:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/loc/er;->j:[I

    :cond_7
    iget-object v0, p0, Lcom/loc/er;->j:[I

    iget v2, p0, Lcom/loc/er;->k:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/loc/er;->k:I

    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v4

    aput v4, v0, v2

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_4
.end method

.method public final b(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/loc/er;->e()V

    iget-object v0, p0, Lcom/loc/er;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/er;->e:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/loc/er;->e:[I

    :cond_1
    iput p1, p0, Lcom/loc/er;->f:I

    iget-object v0, p0, Lcom/loc/er;->e:[I

    iget v1, p0, Lcom/loc/er;->f:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/er;->g:Z

    invoke-direct {p0}, Lcom/loc/er;->d()I

    move-result v0

    iput v0, p0, Lcom/loc/er;->i:I

    return-void
.end method

.method public final b(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/loc/er;->m:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/loc/er;->a(I)V

    invoke-direct {p0, p1}, Lcom/loc/er;->h(I)V

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 2

    iget v0, p0, Lcom/loc/er;->d:I

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/loc/er;->c(II)V

    invoke-virtual {p0, p1}, Lcom/loc/er;->a(I)V

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/loc/er;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/er;->h:Z

    return-void
.end method

.method public final c()[B
    .locals 3

    iget v0, p0, Lcom/loc/er;->b:I

    iget-object v1, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/loc/er;->b:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/loc/er;->h:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish()."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    new-array v1, v1, [B

    iget-object v2, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/loc/er;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
