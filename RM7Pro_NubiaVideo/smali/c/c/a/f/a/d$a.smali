.class Lc/c/a/f/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/f/a/d;->e(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/f/a/d;


# direct methods
.method constructor <init>(Lc/c/a/f/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/d$a;->a:Lc/c/a/f/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/d$a;->a:Lc/c/a/f/a/d;

    invoke-static {v0}, Lc/c/a/f/a/d;->t(Lc/c/a/f/a/d;)Lc/c/a/f/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/d$a;->a:Lc/c/a/f/a/d;

    invoke-static {v0}, Lc/c/a/f/a/d;->t(Lc/c/a/f/a/d;)Lc/c/a/f/a/d$b;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/f/a/d$a;->a:Lc/c/a/f/a/d;

    invoke-static {v1}, Lc/c/a/f/a/d;->u(Lc/c/a/f/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/a/f/a/d$b;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
