.class Lc/d/a/b/h$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/h;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/h;


# direct methods
.method constructor <init>(Lc/d/a/b/h;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/h$c;->a:Lc/d/a/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/h$c;->a:Lc/d/a/b/h;

    iget-object v1, v0, Lc/d/a/b/h;->n:Lc/d/a/b/o/a;

    iget-object v2, v0, Lc/d/a/b/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    invoke-interface {v0}, Lc/d/a/b/n/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lc/d/a/b/o/a;->d(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
