.class Lc/d/a/b/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/h;->l(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lc/d/a/b/h;


# direct methods
.method constructor <init>(Lc/d/a/b/h;II)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/h$a;->c:Lc/d/a/b/h;

    iput p2, p0, Lc/d/a/b/h$a;->a:I

    iput p3, p0, Lc/d/a/b/h$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/h$a;->c:Lc/d/a/b/h;

    iget-object v1, v0, Lc/d/a/b/h;->o:Lc/d/a/b/o/b;

    iget-object v2, v0, Lc/d/a/b/h;->i:Ljava/lang/String;

    iget-object v0, v0, Lc/d/a/b/h;->k:Lc/d/a/b/n/a;

    invoke-interface {v0}, Lc/d/a/b/n/a;->f()Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lc/d/a/b/h$a;->a:I

    iget v4, p0, Lc/d/a/b/h$a;->b:I

    invoke-interface {v1, v2, v0, v3, v4}, Lc/d/a/b/o/b;->a(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
