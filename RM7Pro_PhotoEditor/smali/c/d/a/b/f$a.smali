.class Lc/d/a/b/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/f;->r(Lc/d/a/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/h;

.field final synthetic b:Lc/d/a/b/f;


# direct methods
.method constructor <init>(Lc/d/a/b/f;Lc/d/a/b/h;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/f$a;->b:Lc/d/a/b/f;

    iput-object p2, p0, Lc/d/a/b/f$a;->a:Lc/d/a/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/f$a;->b:Lc/d/a/b/f;

    iget-object v0, v0, Lc/d/a/b/f;->a:Lc/d/a/b/e;

    iget-object v0, v0, Lc/d/a/b/e;->o:Lc/d/a/a/a/a;

    iget-object v1, p0, Lc/d/a/b/f$a;->a:Lc/d/a/b/h;

    invoke-virtual {v1}, Lc/d/a/b/h;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/d/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/a/b/f$a;->b:Lc/d/a/b/f;

    invoke-static {v1}, Lc/d/a/b/f;->a(Lc/d/a/b/f;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/f$a;->b:Lc/d/a/b/f;

    invoke-static {v0}, Lc/d/a/b/f;->b(Lc/d/a/b/f;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc/d/a/b/f$a;->b:Lc/d/a/b/f;

    invoke-static {v0}, Lc/d/a/b/f;->c(Lc/d/a/b/f;)Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lc/d/a/b/f$a;->a:Lc/d/a/b/h;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
