.class Lc/b/a/n/k/h/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/k/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lc/b/a/n/k/h/f;


# direct methods
.method private constructor <init>(Lc/b/a/n/k/h/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/n/k/h/f$d;->a:Lc/b/a/n/k/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/b/a/n/k/h/f;Lc/b/a/n/k/h/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/b/a/n/k/h/f$d;-><init>(Lc/b/a/n/k/h/f;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/b/a/n/k/h/f$b;

    .line 3
    iget-object v0, p0, Lc/b/a/n/k/h/f$d;->a:Lc/b/a/n/k/h/f;

    invoke-virtual {v0, p1}, Lc/b/a/n/k/h/f;->e(Lc/b/a/n/k/h/f$b;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/b/a/n/k/h/f$b;

    .line 5
    invoke-static {p1}, Lc/b/a/g;->g(Lc/b/a/r/h/j;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
