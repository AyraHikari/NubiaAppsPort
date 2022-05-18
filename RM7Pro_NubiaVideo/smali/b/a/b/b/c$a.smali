.class Lb/a/b/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/b/c;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lb/a/b/b/c;


# direct methods
.method constructor <init>(Lb/a/b/b/c;Ljava/io/File;IIILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    iput-object p2, p0, Lb/a/b/b/c$a;->a:Ljava/io/File;

    iput p3, p0, Lb/a/b/b/c$a;->b:I

    iput p4, p0, Lb/a/b/b/c$a;->c:I

    iput p5, p0, Lb/a/b/b/c$a;->d:I

    iput-object p6, p0, Lb/a/b/b/c$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->a(Lb/a/b/b/c;)Lb/a/b/b/a;

    move-result-object v1

    iget-object v1, v1, Lb/a/b/b/a;->a:Ljava/io/File;

    const-string v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x18

    cmp-long v1, v1, v3

    const v2, -0x55c1aa49

    if-lez v1, :cond_4

    .line 3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x8

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const v3, -0x55c1aa48

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0xc

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 10
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 11
    :cond_4
    :goto_2
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v3, v1, Lb/a/b/b/d;->a:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->d:J

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-gez v1, :cond_8

    .line 12
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->d:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->a:J

    sub-long/2addr v5, v7

    long-to-int v1, v5

    .line 13
    iget-object v5, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v5}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v5

    iget-wide v5, v5, Lb/a/b/b/d;->b:J

    iget-object v7, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v7}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v7

    iget-wide v7, v7, Lb/a/b/b/d;->d:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v3, v1

    .line 14
    :goto_3
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->b:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->d:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_6

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    .line 15
    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->b:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->e:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_6

    .line 16
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v3, v1, Lb/a/b/b/d;->d:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->a:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 17
    iget-object v3, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v3}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v3

    iget-wide v3, v3, Lb/a/b/b/d;->b:J

    iget-object v5, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v5}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v5

    iget-wide v5, v5, Lb/a/b/b/d;->a:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move v4, v3

    move v3, v1

    .line 18
    :cond_6
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->b:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->e:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_7

    .line 19
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v3, v1, Lb/a/b/b/d;->d:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->a:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    .line 20
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v4, v1, Lb/a/b/b/d;->e:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v6, v1, Lb/a/b/b/d;->a:J

    goto/16 :goto_5

    :cond_7
    move v1, v4

    goto/16 :goto_6

    .line 21
    :cond_8
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->a:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->d:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_b

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    .line 22
    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->a:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->e:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_b

    .line 23
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->b:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->e:J

    cmp-long v1, v5, v7

    if-gez v1, :cond_9

    .line 24
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v4, v1, Lb/a/b/b/d;->b:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v6, v1, Lb/a/b/b/d;->a:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    move v4, v3

    goto :goto_4

    :cond_9
    move v1, v4

    .line 25
    :goto_4
    iget-object v5, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v5}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v5

    iget-wide v5, v5, Lb/a/b/b/d;->b:J

    iget-object v7, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v7}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v7

    iget-wide v7, v7, Lb/a/b/b/d;->e:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_a

    .line 26
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v4, v1, Lb/a/b/b/d;->e:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v6, v1, Lb/a/b/b/d;->a:J

    :goto_5
    sub-long/2addr v4, v6

    long-to-int v1, v4

    goto :goto_6

    :cond_a
    move v3, v4

    goto :goto_6

    .line 27
    :cond_b
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v5, v1, Lb/a/b/b/d;->a:J

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v1

    iget-wide v7, v1, Lb/a/b/b/d;->e:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_c

    move v1, v3

    goto :goto_6

    :cond_c
    move v1, v4

    move v3, v1

    .line 28
    :goto_6
    iget-object v4, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v4}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v4

    iget-wide v4, v4, Lb/a/b/b/d;->g:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 29
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 31
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v1, 0x18

    .line 32
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 33
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->a(Lb/a/b/b/c;)Lb/a/b/b/a;

    move-result-object v1

    iget-object v1, v1, Lb/a/b/b/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->a(Lb/a/b/b/c;)Lb/a/b/b/a;

    move-result-object v1

    iget-object v1, v1, Lb/a/b/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    .line 2
    :try_start_0
    iget-object v2, p0, Lb/a/b/b/c$a;->a:Ljava/io/File;

    iget-object v3, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v3}, Lb/a/b/b/c;->a(Lb/a/b/b/c;)Lb/a/b/b/a;

    move-result-object v3

    iget-object v3, v3, Lb/a/b/b/a;->a:Ljava/io/File;

    iget v4, p0, Lb/a/b/b/c$a;->b:I

    iget v5, p0, Lb/a/b/b/c$a;->c:I

    invoke-static {v2, v3, v4, v5}, Lb/a/b/b/e;->c(Ljava/io/File;Ljava/io/File;II)V

    .line 3
    iget-object v2, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v2}, Lb/a/b/b/c;->b(Lb/a/b/b/c;)Lb/a/b/b/d;

    move-result-object v2

    iget-boolean v2, v2, Lb/a/b/b/d;->c:Z

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {p0}, Lb/a/b/b/c$a;->a()V

    :cond_0
    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lb/a/b/b/c$a;->d:I

    if-nez v3, :cond_2

    .line 6
    iget-object v3, p0, Lb/a/b/b/c$a;->e:Ljava/lang/String;

    iget-object v4, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v4}, Lb/a/b/b/c;->a(Lb/a/b/b/c;)Lb/a/b/b/a;

    move-result-object v4

    iget-object v5, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v5}, Lb/a/b/b/c;->c(Lb/a/b/b/c;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lb/a/b/b/b;->d(Ljava/lang/String;Lb/a/b/b/a;Landroid/content/ContentResolver;)I

    move-result v3

    if-lez v3, :cond_1

    .line 7
    iget-object v2, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v2}, Lb/a/b/b/c;->d(Lb/a/b/b/c;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v3}, Lb/a/b/b/c;->e(Lb/a/b/b/c;)Lb/a/b/b/c$b;

    move-result-object v3

    invoke-interface {v3, v1}, Lb/a/b/b/c$b;->a(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v2}, Lb/a/b/b/c;->a(Lb/a/b/b/c;)Lb/a/b/b/a;

    move-result-object v2

    iget-object v3, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v3}, Lb/a/b/b/c;->c(Lb/a/b/b/c;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v4}, Lb/a/b/b/c;->d(Lb/a/b/b/c;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lb/a/b/b/b;->c(Lb/a/b/b/a;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v2, v0}, Lb/a/b/b/c;->f(Lb/a/b/b/c;Ljava/lang/String;)V

    const-string v2, "VideoTrim"

    const-string v3, "trim file scanne error"

    .line 11
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_3
    iget-object v3, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v3}, Lb/a/b/b/c;->e(Lb/a/b/b/c;)Lb/a/b/b/c$b;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 13
    iget-object v3, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v3}, Lb/a/b/b/c;->e(Lb/a/b/b/c;)Lb/a/b/b/c$b;

    move-result-object v3

    iget-object v4, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v4}, Lb/a/b/b/c;->a(Lb/a/b/b/c;)Lb/a/b/b/a;

    move-result-object v4

    iget-object v4, v4, Lb/a/b/b/a;->d:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lb/a/b/b/c$b;->b(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 15
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1}, Lb/a/b/b/c;->e(Lb/a/b/b/c;)Lb/a/b/b/c$b;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-interface {v1, v2}, Lb/a/b/b/c$b;->a(I)V

    .line 16
    iget v1, p0, Lb/a/b/b/c$a;->d:I

    if-eqz v1, :cond_4

    .line 17
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1, v0}, Lb/a/b/b/c;->f(Lb/a/b/b/c;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 18
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    iget-object v2, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v2}, Lb/a/b/b/c;->e(Lb/a/b/b/c;)Lb/a/b/b/c$b;

    move-result-object v2

    invoke-interface {v2, v1}, Lb/a/b/b/c$b;->a(I)V

    .line 20
    iget v1, p0, Lb/a/b/b/c$a;->d:I

    if-eqz v1, :cond_4

    .line 21
    iget-object v1, p0, Lb/a/b/b/c$a;->f:Lb/a/b/b/c;

    invoke-static {v1, v0}, Lb/a/b/b/c;->f(Lb/a/b/b/c;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
