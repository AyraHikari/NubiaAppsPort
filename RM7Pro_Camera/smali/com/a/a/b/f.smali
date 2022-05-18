.class public final Lcom/a/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/a/a/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/a/a/b/f$1;

    invoke-direct {v0}, Lcom/a/a/b/f$1;-><init>()V

    sput-object v0, Lcom/a/a/b/f;->a:Lcom/a/a/b/n;

    .line 127
    new-instance v0, Lcom/a/a/b/f$4;

    invoke-direct {v0}, Lcom/a/a/b/f$4;-><init>()V

    sput-object v0, Lcom/a/a/b/f;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/a/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/a/a/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 1026
    new-instance v0, Lcom/a/a/b/f$3;

    invoke-direct {v0, p0}, Lcom/a/a/b/f$3;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static a()Lcom/a/a/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/n<",
            "TT;>;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/a/a/b/f;->a:Lcom/a/a/b/n;

    return-object v0
.end method

.method static a([Ljava/lang/Object;III)Lcom/a/a/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lcom/a/a/b/n<",
            "TT;>;"
        }
    .end annotation

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 996
    :goto_0
    invoke-static {v0}, Lcom/a/a/a/c;->a(Z)V

    add-int v0, p1, p2

    .line 1000
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/a/a/a/c;->a(III)V

    .line 1001
    invoke-static {p3, p2}, Lcom/a/a/a/c;->b(II)I

    if-nez p2, :cond_1

    .line 1003
    invoke-static {}, Lcom/a/a/b/f;->a()Lcom/a/a/b/n;

    move-result-object p0

    return-object p0

    .line 1011
    :cond_1
    new-instance v0, Lcom/a/a/b/f$2;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/a/a/b/f$2;-><init>(II[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 274
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 278
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 279
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 280
    invoke-static {v0, v2}, Lcom/a/a/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 284
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
