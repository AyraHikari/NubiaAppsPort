.class public final Lcom/bumptech/glide/load/b/j$a;
.super Ljava/lang/Object;
.source "LazyHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 95
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/j$a;->a:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 106
    sget-object v1, Lcom/bumptech/glide/load/b/j$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    const-string v1, "User-Agent"

    new-instance v2, Lcom/bumptech/glide/load/b/j$b;

    sget-object v3, Lcom/bumptech/glide/load/b/j$a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    const-string v1, "Accept-Encoding"

    new-instance v2, Lcom/bumptech/glide/load/b/j$b;

    const-string v3, "identity"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/b/j$b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->c:Z

    .line 118
    sget-object v0, Lcom/bumptech/glide/load/b/j$a;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$a;->d:Ljava/util/Map;

    .line 119
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->e:Z

    .line 120
    iput-boolean v1, p0, Lcom/bumptech/glide/load/b/j$a;->f:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/b/j;
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/j$a;->c:Z

    .line 216
    new-instance v0, Lcom/bumptech/glide/load/b/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/j;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
