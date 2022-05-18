.class public Lc/c/a/h/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/c/a/h/a;->a:Ljava/util/List;

    const-string v1, "ISO-8859-1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GB2312"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GBK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GB18030"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "US-ASCII"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ASCII"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ISO-2022-KR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ISO-8859-2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ISO-2022-JP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ISO-2022-JP-2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "UTF-8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lc/c/a/h/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lc/c/a/h/a;->b(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const-string v1, "ISO-8859-1"

    :goto_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p2}, Lc/c/a/h/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lc/c/a/h/c;->e(Ljava/lang/Throwable;)V

    return-object p0
.end method
