.class Lc/b/a/n/k/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/h/f$e;,
        Lc/b/a/n/k/h/f$b;,
        Lc/b/a/n/k/h/f$d;,
        Lc/b/a/n/k/h/f$c;
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/k/h/f$c;

.field private final b:Lc/b/a/l/a;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lc/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/e<",
            "Lc/b/a/l/a;",
            "Lc/b/a/l/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lc/b/a/n/k/h/f$b;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/n/k/h/f$c;Lc/b/a/l/a;II)V
    .locals 1

    .line 1
    invoke-static {p1}, Lc/b/a/g;->i(Landroid/content/Context;)Lc/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/a/g;->l()Lc/b/a/n/i/m/c;

    move-result-object v0

    invoke-static {p1, p3, p4, p5, v0}, Lc/b/a/n/k/h/f;->c(Landroid/content/Context;Lc/b/a/l/a;IILc/b/a/n/i/m/c;)Lc/b/a/e;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p0, p2, p3, p4, p1}, Lc/b/a/n/k/h/f;-><init>(Lc/b/a/n/k/h/f$c;Lc/b/a/l/a;Landroid/os/Handler;Lc/b/a/e;)V

    return-void
.end method

.method constructor <init>(Lc/b/a/n/k/h/f$c;Lc/b/a/l/a;Landroid/os/Handler;Lc/b/a/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/k/h/f$c;",
            "Lc/b/a/l/a;",
            "Landroid/os/Handler;",
            "Lc/b/a/e<",
            "Lc/b/a/l/a;",
            "Lc/b/a/l/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/b/a/n/k/h/f;->d:Z

    .line 4
    iput-boolean v0, p0, Lc/b/a/n/k/h/f;->e:Z

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lc/b/a/n/k/h/f$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc/b/a/n/k/h/f$d;-><init>(Lc/b/a/n/k/h/f;Lc/b/a/n/k/h/f$a;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lc/b/a/n/k/h/f;->a:Lc/b/a/n/k/h/f$c;

    .line 7
    iput-object p2, p0, Lc/b/a/n/k/h/f;->b:Lc/b/a/l/a;

    .line 8
    iput-object p3, p0, Lc/b/a/n/k/h/f;->c:Landroid/os/Handler;

    .line 9
    iput-object p4, p0, Lc/b/a/n/k/h/f;->f:Lc/b/a/e;

    return-void
.end method

.method private static c(Landroid/content/Context;Lc/b/a/l/a;IILc/b/a/n/i/m/c;)Lc/b/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/b/a/l/a;",
            "II",
            "Lc/b/a/n/i/m/c;",
            ")",
            "Lc/b/a/e<",
            "Lc/b/a/l/a;",
            "Lc/b/a/l/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/n/k/h/h;

    invoke-direct {v0, p4}, Lc/b/a/n/k/h/h;-><init>(Lc/b/a/n/i/m/c;)V

    .line 2
    new-instance p4, Lc/b/a/n/k/h/g;

    invoke-direct {p4}, Lc/b/a/n/k/h/g;-><init>()V

    .line 3
    invoke-static {}, Lc/b/a/n/k/a;->b()Lc/b/a/n/b;

    move-result-object v1

    .line 4
    invoke-static {p0}, Lc/b/a/g;->t(Landroid/content/Context;)Lc/b/a/j;

    move-result-object p0

    const-class v2, Lc/b/a/l/a;

    invoke-virtual {p0, p4, v2}, Lc/b/a/j;->z(Lc/b/a/n/j/l;Ljava/lang/Class;)Lc/b/a/j$c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lc/b/a/j$c;->c(Ljava/lang/Object;)Lc/b/a/j$c$a;

    move-result-object p0

    const-class p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lc/b/a/j$c$a;->a(Ljava/lang/Class;)Lc/b/a/f;

    move-result-object p0

    invoke-virtual {p0, v1}, Lc/b/a/e;->t(Lc/b/a/n/b;)Lc/b/a/e;

    invoke-virtual {p0, v0}, Lc/b/a/e;->g(Lc/b/a/n/e;)Lc/b/a/e;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lc/b/a/e;->s(Z)Lc/b/a/e;

    sget-object p1, Lc/b/a/n/i/b;->d:Lc/b/a/n/i/b;

    invoke-virtual {p0, p1}, Lc/b/a/e;->h(Lc/b/a/n/i/b;)Lc/b/a/e;

    invoke-virtual {p0, p2, p3}, Lc/b/a/e;->p(II)Lc/b/a/e;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/k/h/f;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/b/a/n/k/h/f;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/b/a/n/k/h/f;->e:Z

    .line 3
    iget-object v0, p0, Lc/b/a/n/k/h/f;->b:Lc/b/a/l/a;

    invoke-virtual {v0}, Lc/b/a/l/a;->a()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lc/b/a/n/k/h/f;->b:Lc/b/a/l/a;

    invoke-virtual {v2}, Lc/b/a/l/a;->i()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 5
    new-instance v2, Lc/b/a/n/k/h/f$b;

    iget-object v3, p0, Lc/b/a/n/k/h/f;->c:Landroid/os/Handler;

    iget-object v4, p0, Lc/b/a/n/k/h/f;->b:Lc/b/a/l/a;

    invoke-virtual {v4}, Lc/b/a/l/a;->d()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lc/b/a/n/k/h/f$b;-><init>(Landroid/os/Handler;IJ)V

    .line 6
    iget-object v0, p0, Lc/b/a/n/k/h/f;->f:Lc/b/a/e;

    new-instance v1, Lc/b/a/n/k/h/f$e;

    invoke-direct {v1}, Lc/b/a/n/k/h/f$e;-><init>()V

    invoke-virtual {v0, v1}, Lc/b/a/e;->r(Lc/b/a/n/c;)Lc/b/a/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc/b/a/e;->l(Lc/b/a/r/h/j;)Lc/b/a/r/h/j;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/n/k/h/f;->h()V

    .line 2
    iget-object v0, p0, Lc/b/a/n/k/h/f;->g:Lc/b/a/n/k/h/f$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lc/b/a/g;->g(Lc/b/a/r/h/j;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lc/b/a/n/k/h/f;->g:Lc/b/a/n/k/h/f$b;

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lc/b/a/n/k/h/f;->h:Z

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/h/f;->g:Lc/b/a/n/k/h/f$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/b/a/n/k/h/f$b;->o()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method e(Lc/b/a/n/k/h/f$b;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/k/h/f;->h:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/n/k/h/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/n/k/h/f;->g:Lc/b/a/n/k/h/f$b;

    .line 4
    iput-object p1, p0, Lc/b/a/n/k/h/f;->g:Lc/b/a/n/k/h/f$b;

    .line 5
    iget-object v2, p0, Lc/b/a/n/k/h/f;->a:Lc/b/a/n/k/h/f$c;

    invoke-static {p1}, Lc/b/a/n/k/h/f$b;->n(Lc/b/a/n/k/h/f$b;)I

    move-result p1

    invoke-interface {v2, p1}, Lc/b/a/n/k/h/f$c;->a(I)V

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lc/b/a/n/k/h/f;->c:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lc/b/a/n/k/h/f;->e:Z

    .line 8
    invoke-direct {p0}, Lc/b/a/n/k/h/f;->d()V

    return-void
.end method

.method public f(Lc/b/a/n/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Transformation must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lc/b/a/n/k/h/f;->f:Lc/b/a/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lc/b/a/n/g;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lc/b/a/e;->u([Lc/b/a/n/g;)Lc/b/a/e;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/n/k/h/f;->f:Lc/b/a/e;

    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/k/h/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/b/a/n/k/h/f;->d:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/b/a/n/k/h/f;->h:Z

    .line 4
    invoke-direct {p0}, Lc/b/a/n/k/h/f;->d()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/b/a/n/k/h/f;->d:Z

    return-void
.end method
