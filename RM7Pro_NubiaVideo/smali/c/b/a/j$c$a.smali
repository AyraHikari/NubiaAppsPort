.class public final Lc/b/a/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field final synthetic d:Lc/b/a/j$c;


# direct methods
.method constructor <init>(Lc/b/a/j$c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lc/b/a/j$c$a;->c:Z

    .line 3
    iput-object p2, p0, Lc/b/a/j$c$a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lc/b/a/j;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/j$c$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lc/b/a/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lc/b/a/f<",
            "TA;TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    iget-object v0, v0, Lc/b/a/j$c;->c:Lc/b/a/j;

    invoke-static {v0}, Lc/b/a/j;->p(Lc/b/a/j;)Lc/b/a/j$d;

    move-result-object v0

    new-instance v11, Lc/b/a/f;

    iget-object v1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    iget-object v1, v1, Lc/b/a/j$c;->c:Lc/b/a/j;

    invoke-static {v1}, Lc/b/a/j;->d(Lc/b/a/j;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    iget-object v1, v1, Lc/b/a/j$c;->c:Lc/b/a/j;

    invoke-static {v1}, Lc/b/a/j;->m(Lc/b/a/j;)Lc/b/a/g;

    move-result-object v3

    iget-object v4, p0, Lc/b/a/j$c$a;->b:Ljava/lang/Class;

    iget-object v1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    invoke-static {v1}, Lc/b/a/j$c;->a(Lc/b/a/j$c;)Lc/b/a/n/j/l;

    move-result-object v5

    iget-object v1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    invoke-static {v1}, Lc/b/a/j$c;->b(Lc/b/a/j$c;)Ljava/lang/Class;

    move-result-object v6

    iget-object v1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    iget-object v1, v1, Lc/b/a/j$c;->c:Lc/b/a/j;

    invoke-static {v1}, Lc/b/a/j;->n(Lc/b/a/j;)Lc/b/a/o/m;

    move-result-object v8

    iget-object v1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    iget-object v1, v1, Lc/b/a/j$c;->c:Lc/b/a/j;

    invoke-static {v1}, Lc/b/a/j;->o(Lc/b/a/j;)Lc/b/a/o/g;

    move-result-object v9

    iget-object v1, p0, Lc/b/a/j$c$a;->d:Lc/b/a/j$c;

    iget-object v1, v1, Lc/b/a/j$c;->c:Lc/b/a/j;

    invoke-static {v1}, Lc/b/a/j;->p(Lc/b/a/j;)Lc/b/a/j$d;

    move-result-object v10

    move-object v1, v11

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lc/b/a/f;-><init>(Landroid/content/Context;Lc/b/a/g;Ljava/lang/Class;Lc/b/a/n/j/l;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/o/m;Lc/b/a/o/g;Lc/b/a/j$d;)V

    invoke-virtual {v0, v11}, Lc/b/a/j$d;->a(Lc/b/a/e;)Lc/b/a/e;

    check-cast v11, Lc/b/a/f;

    .line 2
    iget-boolean p1, p0, Lc/b/a/j$c$a;->c:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lc/b/a/j$c$a;->a:Ljava/lang/Object;

    invoke-virtual {v11, p1}, Lc/b/a/e;->n(Ljava/lang/Object;)Lc/b/a/e;

    :cond_0
    return-object v11
.end method
