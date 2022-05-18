.class public Lb/a/b/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/nio/channels/FileChannel;

.field private e:Ljava/nio/MappedByteBuffer;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/io/RandomAccessFile;

.field private m:Ljava/io/RandomAccessFile;

.field private n:I

.field private o:I

.field private p:[B

.field private q:[B

.field private r:Ljava/util/zip/Adler32;

.field private s:Lb/a/b/c/a/a$a;

.field private t:I

.field private u:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lb/a/b/c/a/a;->p:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lb/a/b/c/a/a;->q:[B

    .line 4
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lb/a/b/c/a/a;->r:Ljava/util/zip/Adler32;

    .line 5
    new-instance v0, Lb/a/b/c/a/a$a;

    invoke-direct {v0}, Lb/a/b/c/a/a$a;-><init>()V

    iput-object v0, p0, Lb/a/b/c/a/a;->s:Lb/a/b/c/a/a$a;

    .line 6
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    .line 7
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    .line 8
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    .line 9
    iput p5, p0, Lb/a/b/c/a/a;->k:I

    if-nez p4, :cond_0

    .line 10
    invoke-direct {p0}, Lb/a/b/c/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p2, p3}, Lb/a/b/c/a/a;->r(II)V

    .line 12
    invoke-direct {p0}, Lb/a/b/c/a/a;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-direct {p0}, Lb/a/b/c/a/a;->d()V

    .line 14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "unable to load index"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(I)V
    .locals 5

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 1
    iget-object v2, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2
    iget p1, p0, Lb/a/b/c/a/a;->f:I

    mul-int/lit8 p1, p1, 0xc

    :goto_0
    if-lez p1, :cond_0

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/a;->d:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lb/a/b/c/a/a;->e(Ljava/io/Closeable;)V

    .line 2
    iget-object v0, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lb/a/b/c/a/a;->e(Ljava/io/Closeable;)V

    .line 3
    iget-object v0, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lb/a/b/c/a/a;->e(Ljava/io/Closeable;)V

    .line 4
    iget-object v0, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lb/a/b/c/a/a;->e(Ljava/io/Closeable;)V

    return-void
.end method

.method static e(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/c/a/a;->f(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/c/a/a;->f(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/b/c/a/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget v0, p0, Lb/a/b/c/a/a;->h:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b/c/a/a;->h:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lb/a/b/c/a/a;->i:I

    const/4 v1, 0x4

    .line 3
    iput v1, p0, Lb/a/b/c/a/a;->j:I

    .line 4
    iget-object v1, p0, Lb/a/b/c/a/a;->p:[B

    const/16 v2, 0xc

    invoke-static {v1, v2, v0}, Lb/a/b/c/a/a;->w([BII)V

    .line 5
    iget-object v0, p0, Lb/a/b/c/a/a;->p:[B

    iget v1, p0, Lb/a/b/c/a/a;->i:I

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lb/a/b/c/a/a;->w([BII)V

    .line 6
    iget-object v0, p0, Lb/a/b/c/a/a;->p:[B

    iget v1, p0, Lb/a/b/c/a/a;->j:I

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Lb/a/b/c/a/a;->w([BII)V

    .line 7
    invoke-direct {p0}, Lb/a/b/c/a/a;->v()V

    .line 8
    invoke-direct {p0}, Lb/a/b/c/a/a;->s()V

    .line 9
    iget v0, p0, Lb/a/b/c/a/a;->n:I

    invoke-direct {p0, v0}, Lb/a/b/c/a/a;->c(I)V

    .line 10
    invoke-virtual {p0}, Lb/a/b/c/a/a;->u()V

    return-void
.end method

.method private i(Ljava/io/RandomAccessFile;ILb/a/b/c/a/a$a;)Z
    .locals 11

    const-string v0, "BlobCache"

    .line 1
    iget-object v1, p0, Lb/a/b/c/a/a;->q:[B

    .line 2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v4, p2

    const/4 v6, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_0

    const-string p2, "cannot read blob header"

    .line 5
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 7
    :cond_0
    :try_start_1
    invoke-static {v1, v6}, Lb/a/b/c/a/a;->q([BI)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 9
    :cond_1
    :try_start_2
    iget-wide v9, p3, Lb/a/b/c/a/a$a;->a:J

    cmp-long v4, v7, v9

    if-eqz v4, :cond_2

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "blob key does not match: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_2
    const/16 v4, 0x8

    .line 12
    :try_start_3
    invoke-static {v1, v4}, Lb/a/b/c/a/a;->p([BI)I

    move-result v4

    const/16 v7, 0xc

    .line 13
    invoke-static {v1, v7}, Lb/a/b/c/a/a;->p([BI)I

    move-result v7

    if-eq v7, p2, :cond_3

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "blob offset does not match: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_3
    const/16 v7, 0x10

    .line 16
    :try_start_4
    invoke-static {v1, v7}, Lb/a/b/c/a/a;->p([BI)I

    move-result v1

    if-ltz v1, :cond_9

    .line 17
    iget v7, p0, Lb/a/b/c/a/a;->g:I

    sub-int/2addr v7, p2

    sub-int/2addr v7, v5

    if-le v1, v7, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    iget-object p2, p3, Lb/a/b/c/a/a$a;->b:[B

    if-eqz p2, :cond_5

    array-length p2, p2

    if-ge p2, v1, :cond_6

    .line 19
    :cond_5
    new-array p2, v1, [B

    iput-object p2, p3, Lb/a/b/c/a/a$a;->b:[B

    .line 20
    :cond_6
    iget-object p2, p3, Lb/a/b/c/a/a$a;->b:[B

    .line 21
    iput v1, p3, Lb/a/b/c/a/a$a;->c:I

    .line 22
    invoke-virtual {p1, p2, v6, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    if-eq p3, v1, :cond_7

    const-string p2, "cannot read blob data"

    .line 23
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    .line 25
    :cond_7
    :try_start_5
    invoke-virtual {p0, p2, v6, v1}, Lb/a/b/c/a/a;->b([BII)I

    move-result p2

    if-eq p2, v4, :cond_8

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "blob checksum does not match: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 27
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :cond_8
    const/4 p2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return p2

    .line 28
    :cond_9
    :goto_0
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid blob length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 29
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :catchall_0
    move-exception p2

    :try_start_7
    const-string p3, "getBlob failed."

    .line 30
    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 31
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    return v6

    :catchall_1
    move-exception p2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    throw p2
.end method

.method private k(J[BI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/a;->q:[B

    .line 2
    invoke-virtual {p0, p3}, Lb/a/b/c/a/a;->a([B)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2, p1, p2}, Lb/a/b/c/a/a;->x([BIJ)V

    const/16 v3, 0x8

    .line 4
    invoke-static {v0, v3, v1}, Lb/a/b/c/a/a;->w([BII)V

    .line 5
    iget v1, p0, Lb/a/b/c/a/a;->j:I

    const/16 v4, 0xc

    invoke-static {v0, v4, v1}, Lb/a/b/c/a/a;->w([BII)V

    const/16 v1, 0x10

    .line 6
    invoke-static {v0, v1, p4}, Lb/a/b/c/a/a;->w([BII)V

    .line 7
    iget-object v1, p0, Lb/a/b/c/a/a;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 8
    iget-object v0, p0, Lb/a/b/c/a/a;->l:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, v2, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 9
    iget-object p3, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    iget v0, p0, Lb/a/b/c/a/a;->t:I

    invoke-virtual {p3, v0, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p1, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    iget p2, p0, Lb/a/b/c/a/a;->t:I

    add-int/2addr p2, v3

    iget p3, p0, Lb/a/b/c/a/a;->j:I

    invoke-virtual {p1, p2, p3}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 11
    iget p1, p0, Lb/a/b/c/a/a;->j:I

    const/16 p2, 0x14

    add-int/2addr p4, p2

    add-int/2addr p1, p4

    iput p1, p0, Lb/a/b/c/a/a;->j:I

    .line 12
    iget-object p3, p0, Lb/a/b/c/a/a;->p:[B

    invoke-static {p3, p2, p1}, Lb/a/b/c/a/a;->w([BII)V

    return-void
.end method

.method private l()Z
    .locals 15

    const-string v0, "BlobCache"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2
    iget-object v2, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    iget-object v2, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    iget-object v2, p0, Lb/a/b/c/a/a;->p:[B

    .line 5
    iget-object v3, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const-string v2, "cannot read header"

    .line 6
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_0
    invoke-static {v2, v1}, Lb/a/b/c/a/a;->p([BI)I

    move-result v3

    const v5, -0x4cd8cfd0

    if-eq v3, v5, :cond_1

    const-string v2, "cannot read header magic"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/16 v3, 0x18

    .line 9
    invoke-static {v2, v3}, Lb/a/b/c/a/a;->p([BI)I

    move-result v3

    iget v5, p0, Lb/a/b/c/a/a;->k:I

    if-eq v3, v5, :cond_2

    const-string v2, "version mismatch"

    .line 10
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 v3, 0x4

    .line 11
    invoke-static {v2, v3}, Lb/a/b/c/a/a;->p([BI)I

    move-result v5

    iput v5, p0, Lb/a/b/c/a/a;->f:I

    const/16 v5, 0x8

    .line 12
    invoke-static {v2, v5}, Lb/a/b/c/a/a;->p([BI)I

    move-result v5

    iput v5, p0, Lb/a/b/c/a/a;->g:I

    const/16 v5, 0xc

    .line 13
    invoke-static {v2, v5}, Lb/a/b/c/a/a;->p([BI)I

    move-result v6

    iput v6, p0, Lb/a/b/c/a/a;->h:I

    const/16 v6, 0x10

    .line 14
    invoke-static {v2, v6}, Lb/a/b/c/a/a;->p([BI)I

    move-result v6

    iput v6, p0, Lb/a/b/c/a/a;->i:I

    const/16 v6, 0x14

    .line 15
    invoke-static {v2, v6}, Lb/a/b/c/a/a;->p([BI)I

    move-result v6

    iput v6, p0, Lb/a/b/c/a/a;->j:I

    const/16 v6, 0x1c

    .line 16
    invoke-static {v2, v6}, Lb/a/b/c/a/a;->p([BI)I

    move-result v7

    .line 17
    invoke-virtual {p0, v2, v1, v6}, Lb/a/b/c/a/a;->b([BII)I

    move-result v2

    if-eq v2, v7, :cond_3

    const-string v2, "header checksum does not match"

    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 19
    :cond_3
    iget v2, p0, Lb/a/b/c/a/a;->f:I

    if-gtz v2, :cond_4

    const-string v2, "invalid max entries"

    .line 20
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 21
    :cond_4
    iget v6, p0, Lb/a/b/c/a/a;->g:I

    if-gtz v6, :cond_5

    const-string v2, "invalid max bytes"

    .line 22
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 23
    :cond_5
    iget v7, p0, Lb/a/b/c/a/a;->h:I

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    if-eq v7, v8, :cond_6

    const-string v2, "invalid active region"

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 25
    :cond_6
    iget v7, p0, Lb/a/b/c/a/a;->i:I

    if-ltz v7, :cond_f

    if-le v7, v2, :cond_7

    goto/16 :goto_1

    .line 26
    :cond_7
    iget v2, p0, Lb/a/b/c/a/a;->j:I

    if-lt v2, v3, :cond_e

    if-le v2, v6, :cond_8

    goto :goto_0

    .line 27
    :cond_8
    iget-object v2, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    iget v2, p0, Lb/a/b/c/a/a;->f:I

    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v2, v6, v4

    if-eqz v2, :cond_9

    const-string v2, "invalid index file length"

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    new-array v2, v3, [B

    .line 29
    iget-object v4, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "cannot read data file magic"

    if-eq v4, v3, :cond_a

    .line 30
    :try_start_1
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 31
    :cond_a
    invoke-static {v2, v1}, Lb/a/b/c/a/a;->p([BI)I

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "invalid data file magic"

    const v7, -0x42db7af0

    if-eq v4, v7, :cond_b

    .line 32
    :try_start_2
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 33
    :cond_b
    iget-object v4, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-eq v4, v3, :cond_c

    .line 34
    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 35
    :cond_c
    invoke-static {v2, v1}, Lb/a/b/c/a/a;->p([BI)I

    move-result v2

    if-eq v2, v7, :cond_d

    .line 36
    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 37
    :cond_d
    iget-object v2, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    iput-object v9, p0, Lb/a/b/c/a/a;->d:Ljava/nio/channels/FileChannel;

    .line 38
    sget-object v10, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v11, 0x0

    iget-object v2, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    .line 39
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13

    .line 40
    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    .line 41
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 42
    invoke-direct {p0}, Lb/a/b/c/a/a;->s()V

    return v8

    :cond_e
    :goto_0
    const-string v2, "invalid active bytes"

    .line 43
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    :goto_1
    const-string v2, "invalid active entries"

    .line 44
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "loadIndex failed."

    .line 45
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private o(JI)Z
    .locals 7

    .line 1
    iget v0, p0, Lb/a/b/c/a/a;->f:I

    int-to-long v1, v0

    rem-long v1, p1, v1

    long-to-int v1, v1

    if-gez v1, :cond_0

    add-int/2addr v1, v0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    mul-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p3

    .line 2
    iget-object v3, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v3

    .line 3
    iget-object v5, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v6, v2, 0x8

    invoke-virtual {v5, v6}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 4
    iput v2, p0, Lb/a/b/c/a/a;->t:I

    return v6

    :cond_2
    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    .line 5
    iput v2, p0, Lb/a/b/c/a/a;->t:I

    .line 6
    iput v5, p0, Lb/a/b/c/a/a;->u:I

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 7
    iget v2, p0, Lb/a/b/c/a/a;->f:I

    if-lt v0, v2, :cond_4

    move v0, v6

    :cond_4
    if-ne v0, v1, :cond_1

    const-string v2, "BlobCache"

    const-string v3, "corrupted index: clear the slot."

    .line 8
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v2, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static p([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static q([BI)J
    .locals 5

    add-int/lit8 v0, p1, 0x7

    .line 1
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x6

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int v3, p1, v2

    .line 2
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private r(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 2
    iget-object v0, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    mul-int/lit8 v3, p1, 0xc

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x20

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 3
    iget-object v0, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    iget-object v0, p0, Lb/a/b/c/a/a;->p:[B

    const/4 v3, 0x0

    const v4, -0x4cd8cfd0

    .line 5
    invoke-static {v0, v3, v4}, Lb/a/b/c/a/a;->w([BII)V

    const/4 v4, 0x4

    .line 6
    invoke-static {v0, v4, p1}, Lb/a/b/c/a/a;->w([BII)V

    const/16 p1, 0x8

    .line 7
    invoke-static {v0, p1, p2}, Lb/a/b/c/a/a;->w([BII)V

    const/16 p1, 0xc

    .line 8
    invoke-static {v0, p1, v3}, Lb/a/b/c/a/a;->w([BII)V

    const/16 p1, 0x10

    .line 9
    invoke-static {v0, p1, v3}, Lb/a/b/c/a/a;->w([BII)V

    const/16 p1, 0x14

    .line 10
    invoke-static {v0, p1, v4}, Lb/a/b/c/a/a;->w([BII)V

    .line 11
    iget p1, p0, Lb/a/b/c/a/a;->k:I

    const/16 p2, 0x18

    invoke-static {v0, p2, p1}, Lb/a/b/c/a/a;->w([BII)V

    const/16 p1, 0x1c

    .line 12
    invoke-virtual {p0, v0, v3, p1}, Lb/a/b/c/a/a;->b([BII)I

    move-result p2

    invoke-static {v0, p1, p2}, Lb/a/b/c/a/a;->w([BII)V

    .line 13
    iget-object p1, p0, Lb/a/b/c/a/a;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 14
    iget-object p1, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 15
    iget-object p1, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 16
    iget-object p1, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    iget-object p1, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const p1, -0x42db7af0

    .line 18
    invoke-static {v0, v3, p1}, Lb/a/b/c/a/a;->w([BII)V

    .line 19
    iget-object p1, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 20
    iget-object p1, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private s()V
    .locals 4

    .line 1
    iget v0, p0, Lb/a/b/c/a/a;->h:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v1, p0, Lb/a/b/c/a/a;->l:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lb/a/b/c/a/a;->m:Ljava/io/RandomAccessFile;

    .line 3
    iget v0, p0, Lb/a/b/c/a/a;->j:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 4
    iget-object v0, p0, Lb/a/b/c/a/a;->l:Ljava/io/RandomAccessFile;

    iget v1, p0, Lb/a/b/c/a/a;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x20

    .line 5
    iput v0, p0, Lb/a/b/c/a/a;->n:I

    .line 6
    iput v0, p0, Lb/a/b/c/a/a;->o:I

    .line 7
    iget v1, p0, Lb/a/b/c/a/a;->h:I

    if-nez v1, :cond_2

    .line 8
    iget v1, p0, Lb/a/b/c/a/a;->f:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lb/a/b/c/a/a;->o:I

    goto :goto_2

    .line 9
    :cond_2
    iget v1, p0, Lb/a/b/c/a/a;->f:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lb/a/b/c/a/a;->n:I

    :goto_2
    return-void
.end method

.method private v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/a;->p:[B

    const/4 v1, 0x0

    const/16 v2, 0x1c

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lb/a/b/c/a/a;->b([BII)I

    move-result v3

    .line 3
    invoke-static {v0, v2, v3}, Lb/a/b/c/a/a;->w([BII)V

    .line 4
    iget-object v0, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget-object v0, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lb/a/b/c/a/a;->p:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static w([BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    .line 1
    aput-byte v2, p0, v1

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static x([BIJ)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int v2, p1, v0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p2

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 1
    aput-byte v3, p0, v2

    shr-long/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a([B)I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 3
    iget-object p1, p0, Lb/a/b/c/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {p1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method b([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 2
    iget-object v0, p0, Lb/a/b/c/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 3
    iget-object p1, p0, Lb/a/b/c/a/a;->r:Ljava/util/zip/Adler32;

    invoke-virtual {p1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/a/a;->t()V

    .line 2
    invoke-direct {p0}, Lb/a/b/c/a/a;->d()V

    return-void
.end method

.method public j(J[B)V
    .locals 3

    .line 1
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lb/a/b/c/a/a;->g:I

    if-gt v0, v1, :cond_3

    .line 2
    iget v0, p0, Lb/a/b/c/a/a;->j:I

    add-int/lit8 v0, v0, 0x14

    array-length v2, p3

    add-int/2addr v0, v2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lb/a/b/c/a/a;->i:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lb/a/b/c/a/a;->f:I

    if-lt v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lb/a/b/c/a/a;->h()V

    .line 4
    :cond_1
    iget v0, p0, Lb/a/b/c/a/a;->n:I

    invoke-direct {p0, p1, p2, v0}, Lb/a/b/c/a/a;->o(JI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lb/a/b/c/a/a;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/b/c/a/a;->i:I

    .line 6
    iget-object v1, p0, Lb/a/b/c/a/a;->p:[B

    const/16 v2, 0x10

    invoke-static {v1, v2, v0}, Lb/a/b/c/a/a;->w([BII)V

    .line 7
    :cond_2
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lb/a/b/c/a/a;->k(J[BI)V

    .line 8
    invoke-direct {p0}, Lb/a/b/c/a/a;->v()V

    return-void

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "blob is too large!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lb/a/b/c/a/a$a;)Z
    .locals 6

    .line 1
    iget-wide v0, p1, Lb/a/b/c/a/a$a;->a:J

    iget v2, p0, Lb/a/b/c/a/a;->n:I

    invoke-direct {p0, v0, v1, v2}, Lb/a/b/c/a/a;->o(JI)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/b/c/a/a;->l:Ljava/io/RandomAccessFile;

    iget v2, p0, Lb/a/b/c/a/a;->u:I

    invoke-direct {p0, v0, v2, p1}, Lb/a/b/c/a/a;->i(Ljava/io/RandomAccessFile;ILb/a/b/c/a/a$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p0, Lb/a/b/c/a/a;->t:I

    .line 4
    iget-wide v2, p1, Lb/a/b/c/a/a$a;->a:J

    iget v4, p0, Lb/a/b/c/a/a;->o:I

    invoke-direct {p0, v2, v3, v4}, Lb/a/b/c/a/a;->o(JI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lb/a/b/c/a/a;->m:Ljava/io/RandomAccessFile;

    iget v3, p0, Lb/a/b/c/a/a;->u:I

    invoke-direct {p0, v2, v3, p1}, Lb/a/b/c/a/a;->i(Ljava/io/RandomAccessFile;ILb/a/b/c/a/a$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    iget v2, p0, Lb/a/b/c/a/a;->j:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p1, Lb/a/b/c/a/a$a;->c:I

    add-int/2addr v2, v3

    iget v4, p0, Lb/a/b/c/a/a;->g:I

    if-gt v2, v4, :cond_2

    iget v2, p0, Lb/a/b/c/a/a;->i:I

    mul-int/lit8 v2, v2, 0x2

    iget v4, p0, Lb/a/b/c/a/a;->f:I

    if-lt v2, v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput v0, p0, Lb/a/b/c/a/a;->t:I

    .line 8
    :try_start_0
    iget-wide v4, p1, Lb/a/b/c/a/a$a;->a:J

    iget-object p1, p1, Lb/a/b/c/a/a$a;->b:[B

    invoke-direct {p0, v4, v5, p1, v3}, Lb/a/b/c/a/a;->k(J[BI)V

    .line 9
    iget p1, p0, Lb/a/b/c/a/a;->i:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/a/b/c/a/a;->i:I

    .line 10
    iget-object v0, p0, Lb/a/b/c/a/a;->p:[B

    const/16 v2, 0x10

    invoke-static {v0, v2, p1}, Lb/a/b/c/a/a;->w([BII)V

    .line 11
    invoke-direct {p0}, Lb/a/b/c/a/a;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "BlobCache"

    const-string v0, "cannot copy over"

    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public n(J)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/a;->s:Lb/a/b/c/a/a$a;

    iput-wide p1, v0, Lb/a/b/c/a/a$a;->a:J

    const/4 p1, 0x0

    .line 2
    iput-object p1, v0, Lb/a/b/c/a/a$a;->b:[B

    .line 3
    invoke-virtual {p0, v0}, Lb/a/b/c/a/a;->m(Lb/a/b/c/a/a$a;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lb/a/b/c/a/a;->s:Lb/a/b/c/a/a$a;

    iget-object p1, p1, Lb/a/b/c/a/a$a;->b:[B

    :cond_0
    return-object p1
.end method

.method public t()V
    .locals 3

    const-string v0, "BlobCache"

    .line 1
    invoke-virtual {p0}, Lb/a/b/c/a/a;->u()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lb/a/b/c/a/a;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "sync data file 0 failed"

    .line 3
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    :try_start_1
    iget-object v1, p0, Lb/a/b/c/a/a;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v2, "sync data file 1 failed"

    .line 5
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/b/c/a/a;->e:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "BlobCache"

    const-string v2, "sync index failed"

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
