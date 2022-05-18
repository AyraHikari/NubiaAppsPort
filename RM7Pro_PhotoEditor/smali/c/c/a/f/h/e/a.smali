.class public Lc/c/a/f/h/e/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc/c/a/f/h/e/a;->c(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lc/c/a/f/h/e/a;->c(Ljava/net/URI;)V

    return-void
.end method

.method private b(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/c/a/f/h/e/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lc/c/a/f/h/e/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_1
    iget-object v1, p0, Lc/c/a/f/h/e/a;->c:Ljava/lang/String;

    const-string v2, "//"

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/f/h/e/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lc/c/a/f/h/e/a;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/f/h/e/a;->e:Ljava/lang/String;

    const-string v2, "@"

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lc/c/a/f/h/e/a;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-direct {p0, v1, p1}, Lc/c/a/f/h/e/a;->g(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lc/c/a/f/h/e/a;->f:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/f/h/e/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lc/c/a/f/h/e/a;->f:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/f/h/e/a;->g:I

    if-ltz v1, :cond_6

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/f/h/e/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    :goto_4
    iget-object v1, p0, Lc/c/a/f/h/e/a;->i:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lc/c/a/f/h/e/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lc/c/a/f/h/e/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lc/c/a/f/h/e/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lc/c/a/f/h/e/a;->e(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    :goto_6
    iget-object v1, p0, Lc/c/a/f/h/e/a;->j:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/f/h/e/a;->j:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lc/c/a/f/h/e/a;->k:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/f/h/e/a;->k:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lc/c/a/f/h/e/a;->f(Ljava/util/List;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_a
    :goto_7
    iget-object v1, p0, Lc/c/a/f/h/e/a;->m:Ljava/lang/String;

    const-string v2, "#"

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc/c/a/f/h/e/a;->m:Ljava/lang/String;

    :goto_8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lc/c/a/f/h/e/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/f/h/e/a;->l:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lc/c/a/f/h/e/a;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_c
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/net/URI;)V
    .locals 1

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lc/c/a/f/h/e/a;->g:I

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/c/a/f/h/e/a;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->k:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/f/h/e/a;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/f/h/e/a;->l:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lc/c/a/f/h/e/b;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lc/c/a/f/h/e/b;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "+"

    const-string v0, "20%"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/util/List;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1, p2}, Lc/c/a/f/h/e/b;->e(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lc/c/a/f/h/e/b;->c(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private i(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lc/c/a/f/h/e/b;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Ljava/net/URI;
    .locals 1

    new-instance v0, Ljava/net/URI;

    invoke-direct {p0, p1}, Lc/c/a/f/h/e/a;->b(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
