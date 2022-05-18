.class Lc/d/a/b/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/h;->k(Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/j/b$a;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lc/d/a/b/h;


# direct methods
.method constructor <init>(Lc/d/a/b/h;Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/h$b;->c:Lc/d/a/b/h;

    iput-object p2, p0, Lc/d/a/b/h$b;->a:Lc/d/a/b/j/b$a;

    iput-object p3, p0, Lc/d/a/b/h$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lc/d/a/b/h$b;->c:Lc/d/a/b/h;

    iget-object v0, v0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-virtual {v0}, Lc/d/a/b/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/h$b;->c:Lc/d/a/b/h;

    iget-object v1, v0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    iget-object v2, v0, Lc/d/a/b/h;->m:Lc/d/a/b/c;

    invoke-static {v0}, Lc/d/a/b/h;->b(Lc/d/a/b/h;)Lc/d/a/b/e;

    move-result-object v0

    iget-object v0, v0, Lc/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Lc/d/a/b/c;->A(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Lc/d/a/b/n/a;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    iget-object v0, p0, Lc/d/a/b/h$b;->c:Lc/d/a/b/h;

    iget-object v1, v0, Lc/d/a/b/h;->n:Lc/d/a/b/o/a;

    iget-object v2, v0, Lc/d/a/b/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    invoke-interface {v0}, Lc/d/a/b/n/a;->f()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lc/d/a/b/j/b;

    iget-object v4, p0, Lc/d/a/b/h$b;->a:Lc/d/a/b/j/b$a;

    iget-object v5, p0, Lc/d/a/b/h$b;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lc/d/a/b/j/b;-><init>(Lc/d/a/b/j/b$a;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v0, v3}, Lc/d/a/b/o/a;->c(Ljava/lang/String;Landroid/view/View;Lc/d/a/b/j/b;)V

    return-void
.end method
