.class public abstract Lcom/loc/av;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field c:I

.field d:I

.field e:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4e20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/loc/av;->c:I

    iput v0, p0, Lcom/loc/av;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/av;->e:Ljava/net/Proxy;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/loc/av;->e()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/loc/av;->b_()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/loc/at;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/loc/av;->c:I

    return-void
.end method

.method public final a(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/av;->e:Ljava/net/Proxy;

    return-void
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/loc/av;->d:I

    return-void
.end method

.method public abstract b_()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/loc/av;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final m()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/loc/av;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final n()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/loc/av;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/loc/av;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
