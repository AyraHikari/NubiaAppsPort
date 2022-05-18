.class final Lc/d/a/a/a/b/c/a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/a/a/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private c:Z

.field private d:Lc/d/a/a/a/b/c/a$c;

.field private e:J

.field final synthetic f:Lc/d/a/a/a/b/c/a;


# direct methods
.method private constructor <init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/a/b/c/a$d;->f:Lc/d/a/a/a/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/d/a/a/a/b/c/a$d;->a:Ljava/lang/String;

    invoke-static {p1}, Lc/d/a/a/a/b/c/a;->c(Lc/d/a/a/a/b/c/a;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lc/d/a/a/a/b/c/a$d;->b:[J

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;Lc/d/a/a/a/b/c/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/d/a/a/a/b/c/a$d;-><init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/a/a/b/c/a$d;)[J
    .locals 0

    iget-object p0, p0, Lc/d/a/a/a/b/c/a$d;->b:[J

    return-object p0
.end method

.method static synthetic b(Lc/d/a/a/a/b/c/a$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/d/a/a/a/b/c/a$d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/d/a/a/a/b/c/a$d;)J
    .locals 2

    iget-wide v0, p0, Lc/d/a/a/a/b/c/a$d;->e:J

    return-wide v0
.end method

.method static synthetic d(Lc/d/a/a/a/b/c/a$d;J)J
    .locals 0

    iput-wide p1, p0, Lc/d/a/a/a/b/c/a$d;->e:J

    return-wide p1
.end method

.method static synthetic e(Lc/d/a/a/a/b/c/a$d;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/a/a/b/c/a$d;->c:Z

    return p0
.end method

.method static synthetic f(Lc/d/a/a/a/b/c/a$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lc/d/a/a/a/b/c/a$d;->c:Z

    return p1
.end method

.method static synthetic g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;
    .locals 0

    iget-object p0, p0, Lc/d/a/a/a/b/c/a$d;->d:Lc/d/a/a/a/b/c/a$c;

    return-object p0
.end method

.method static synthetic h(Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$c;
    .locals 0

    iput-object p1, p0, Lc/d/a/a/a/b/c/a$d;->d:Lc/d/a/a/a/b/c/a$c;

    return-object p1
.end method

.method static synthetic i(Lc/d/a/a/a/b/c/a$d;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/a$d;->n([Ljava/lang/String;)V

    return-void
.end method

.method private m([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$d;->f:Lc/d/a/a/a/b/c/a;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a;->c(Lc/d/a/a/a/b/c/a;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$d;->b:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/a$d;->m([Ljava/lang/String;)Ljava/io/IOException;

    throw v2

    :cond_1
    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/a$d;->m([Ljava/lang/String;)Ljava/io/IOException;

    throw v2
.end method


# virtual methods
.method public j(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$d;->f:Lc/d/a/a/a/b/c/a;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a;->e(Lc/d/a/a/a/b/c/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/d/a/a/a/b/c/a$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public k(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$d;->f:Lc/d/a/a/a/b/c/a;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a;->e(Lc/d/a/a/a/b/c/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/d/a/a/a/b/c/a$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/d/a/a/a/b/c/a$d;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
