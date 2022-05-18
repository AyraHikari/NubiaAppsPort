.class public Lb/a/b/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lb/a/b/c/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc800000

    const/4 v3, 0x7

    .line 2
    invoke-static {p1, v0, v1, v2, v3}, Lb/a/b/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;III)Lb/a/b/c/a/a;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/a/f;->a:Lb/a/b/c/a/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 3
    aput-byte v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    .line 4
    aput-byte v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static c([B[B)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static d(Ljava/lang/String;IJ)[B
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/b/c/a/f;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;IJLb/a/b/c/a/b$b;)Z
    .locals 1

    .line 1
    invoke-static {p1, p2, p3, p4}, Lb/a/b/c/a/f;->d(Ljava/lang/String;IJ)[B

    move-result-object p1

    .line 2
    invoke-static {p1}, Lb/a/b/d/e;->f([B)J

    move-result-wide p2

    const/4 p4, 0x0

    .line 3
    :try_start_0
    new-instance v0, Lb/a/b/c/a/a$a;

    invoke-direct {v0}, Lb/a/b/c/a/a$a;-><init>()V

    .line 4
    iput-wide p2, v0, Lb/a/b/c/a/a$a;->a:J

    .line 5
    iget-object p2, p5, Lb/a/b/c/a/b$b;->a:[B

    iput-object p2, v0, Lb/a/b/c/a/a$a;->b:[B

    .line 6
    iget-object p2, p0, Lb/a/b/c/a/f;->a:Lb/a/b/c/a/a;

    if-nez p2, :cond_0

    return p4

    .line 7
    :cond_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object p3, p0, Lb/a/b/c/a/f;->a:Lb/a/b/c/a/a;

    invoke-virtual {p3, v0}, Lb/a/b/c/a/a;->m(Lb/a/b/c/a/a$a;)Z

    move-result p3

    if-nez p3, :cond_1

    monitor-exit p2

    return p4

    .line 9
    :cond_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object p2, v0, Lb/a/b/c/a/a$a;->b:[B

    invoke-static {p1, p2}, Lb/a/b/c/a/f;->c([B[B)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, v0, Lb/a/b/c/a/a$a;->b:[B

    iput-object p2, p5, Lb/a/b/c/a/b$b;->a:[B

    .line 12
    array-length p1, p1

    iput p1, p5, Lb/a/b/c/a/b$b;->b:I

    .line 13
    iget p2, v0, Lb/a/b/c/a/a$a;->c:I

    sub-int/2addr p2, p1

    iput p2, p5, Lb/a/b/c/a/b$b;->c:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    return p4
.end method

.method public e(Ljava/lang/String;IJ[B)V
    .locals 1

    .line 1
    invoke-static {p1, p2, p3, p4}, Lb/a/b/c/a/f;->d(Ljava/lang/String;IJ)[B

    move-result-object p1

    .line 2
    invoke-static {p1}, Lb/a/b/d/e;->f([B)J

    move-result-wide p2

    .line 3
    array-length p4, p1

    array-length v0, p5

    add-int/2addr p4, v0

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 4
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 6
    iget-object p1, p0, Lb/a/b/c/a/f;->a:Lb/a/b/c/a/a;

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p5, p0, Lb/a/b/c/a/f;->a:Lb/a/b/c/a/a;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {p5, p2, p3, p4}, Lb/a/b/c/a/a;->j(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 9
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
