.class final Lc/d/a/b/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lc/d/a/b/f;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lc/d/a/b/g;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lc/d/a/b/f;Landroid/graphics/Bitmap;Lc/d/a/b/g;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i;->a:Lc/d/a/b/f;

    iput-object p2, p0, Lc/d/a/b/i;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lc/d/a/b/i;->c:Lc/d/a/b/g;

    iput-object p4, p0, Lc/d/a/b/i;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/i;->c:Lc/d/a/b/g;

    iget-object v1, v1, Lc/d/a/b/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PostProcess image before displaying [%s]"

    invoke-static {v1, v0}, Lc/d/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/i;->c:Lc/d/a/b/g;

    iget-object v0, v0, Lc/d/a/b/g;->e:Lc/d/a/b/c;

    invoke-virtual {v0}, Lc/d/a/b/c;->D()Lc/d/a/b/p/a;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/i;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lc/d/a/b/p/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lc/d/a/b/b;

    iget-object v2, p0, Lc/d/a/b/i;->c:Lc/d/a/b/g;

    iget-object v3, p0, Lc/d/a/b/i;->a:Lc/d/a/b/f;

    sget-object v4, Lc/d/a/b/j/f;->c:Lc/d/a/b/j/f;

    invoke-direct {v1, v0, v2, v3, v4}, Lc/d/a/b/b;-><init>(Landroid/graphics/Bitmap;Lc/d/a/b/g;Lc/d/a/b/f;Lc/d/a/b/j/f;)V

    iget-object v0, p0, Lc/d/a/b/i;->c:Lc/d/a/b/g;

    iget-object v0, v0, Lc/d/a/b/g;->e:Lc/d/a/b/c;

    invoke-virtual {v0}, Lc/d/a/b/c;->J()Z

    move-result v0

    iget-object v2, p0, Lc/d/a/b/i;->d:Landroid/os/Handler;

    iget-object v3, p0, Lc/d/a/b/i;->a:Lc/d/a/b/f;

    invoke-static {v1, v0, v2, v3}, Lc/d/a/b/h;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/d/a/b/f;)V

    return-void
.end method
