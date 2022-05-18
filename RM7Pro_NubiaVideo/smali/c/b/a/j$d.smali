.class Lc/b/a/j$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/j;


# direct methods
.method constructor <init>(Lc/b/a/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/j$d;->a:Lc/b/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/e;)Lc/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lc/b/a/e<",
            "TA;***>;>(TX;)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/j$d;->a:Lc/b/a/j;

    invoke-static {v0}, Lc/b/a/j;->q(Lc/b/a/j;)Lc/b/a/j$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/j$d;->a:Lc/b/a/j;

    invoke-static {v0}, Lc/b/a/j;->q(Lc/b/a/j;)Lc/b/a/j$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/b/a/j$b;->a(Lc/b/a/e;)V

    :cond_0
    return-object p1
.end method
