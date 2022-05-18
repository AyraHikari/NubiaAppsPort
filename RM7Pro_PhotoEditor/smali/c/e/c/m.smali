.class abstract Lc/e/c/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/c/k;


# instance fields
.field protected a:Lc/e/c/f;

.field private b:Lc/e/c/a;

.field private c:Ljava/io/DataInputStream;

.field private d:Lc/e/c/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/e/c/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/e/c/m;->c:Ljava/io/DataInputStream;

    iput-object v0, p0, Lc/e/c/m;->d:Lc/e/c/p;

    iput-object p2, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p2, p1}, Lc/e/c/f;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/e/c/m;->c()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lc/e/c/m;->b:Lc/e/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/e/c/a;->close()V

    iput-object v1, p0, Lc/e/c/m;->b:Lc/e/c/a;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/e/c/m;->c:Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iput-object v1, p0, Lc/e/c/m;->c:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {v0}, Lc/e/c/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/e/c/m;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lc/e/c/m;->e()V

    invoke-direct {p0}, Lc/e/c/m;->l()V

    invoke-direct {p0}, Lc/e/c/m;->g()V

    invoke-direct {p0}, Lc/e/c/m;->b()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/e/c/m;->d:Lc/e/c/p;

    if-nez v0, :cond_0

    new-instance v0, Lc/e/c/p;

    invoke-direct {v0}, Lc/e/c/p;-><init>()V

    iput-object v0, p0, Lc/e/c/m;->d:Lc/e/c/p;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/e/c/m;->d:Lc/e/c/p;

    invoke-virtual {v0, p1}, Lc/e/c/p;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {v0}, Lc/e/c/f;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {v2}, Lc/e/c/f;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/data/readme.xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {v0}, Lc/e/c/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lc/e/c/a;

    const/16 v4, 0x14

    const/high16 v5, 0x500000

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lc/e/c/a;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lc/e/c/m;->b:Lc/e/c/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/f;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/f;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/f;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/f;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc/e/c/m;->h()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc/e/c/m;->b:Lc/e/c/a;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v2, "values"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lc/e/c/a;->i(J)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lc/e/c/m;->c:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private l()V
    .locals 0

    invoke-direct {p0}, Lc/e/c/m;->k()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p1}, Lc/e/c/f;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p1}, Lc/e/c/f;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p1}, Lc/e/c/f;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lc/e/c/m;->i(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0, p1}, Lc/e/c/m;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract f(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected h()V
    .locals 6

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lc/e/c/m;->a:Lc/e/c/f;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected i(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc/e/c/m;->b:Lc/e/c/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lc/e/c/m;->e()V

    :cond_0
    iget-object v0, p0, Lc/e/c/m;->b:Lc/e/c/a;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lc/e/c/a;->i(J)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lc/e/c/m;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lc/e/c/m;->b()V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :goto_1
    invoke-direct {p0}, Lc/e/c/m;->b()V

    throw p1
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/e/c/m;->c:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
