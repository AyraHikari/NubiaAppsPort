.class public Lcom/hpplay/nanohttpd/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hpplay/nanohttpd/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->a:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->b:Ljava/util/ArrayList;

    .line 58
    const-string v0, "cookie"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_1

    .line 60
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 63
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 64
    iget-object v5, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->a:Ljava/util/HashMap;

    aget-object v6, v4, v1

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/hpplay/nanohttpd/a/a/a/b;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public a(Lcom/hpplay/nanohttpd/a/a/c/c;)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/nanohttpd/a/a/a/b;

    .line 125
    invoke-virtual {v0}, Lcom/hpplay/nanohttpd/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/nanohttpd/a/a/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "-delete-"

    const/16 v1, -0x1e

    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/nanohttpd/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/hpplay/nanohttpd/a/a/a/b;

    invoke-static {p3}, Lcom/hpplay/nanohttpd/a/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/hpplay/nanohttpd/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hpplay/nanohttpd/a/a/a/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
