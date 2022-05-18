.class public Lcn/nubia/camera/pretty/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/b;


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/pretty/j;

.field private c:Lcn/nubia/camera/g/e;

.field private d:Lcn/nubia/camera/g/h;

.field private e:Z

.field private f:Lcn/nubia/camera/pretty/b$a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/pretty/j;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/i;->e:Z

    .line 24
    iput-object p1, p0, Lcn/nubia/camera/pretty/i;->a:Lcn/nubia/camera/ad/a;

    .line 25
    iput-object p2, p0, Lcn/nubia/camera/pretty/i;->b:Lcn/nubia/camera/pretty/j;

    .line 27
    new-instance p2, Lcn/nubia/camera/g/e;

    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->b:Lcn/nubia/camera/pretty/j;

    new-instance v1, Lcn/nubia/camera/pretty/i$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/i$1;-><init>(Lcn/nubia/camera/pretty/i;)V

    const/4 v2, 0x0

    invoke-direct {p2, p1, v0, v2, v1}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object p2, p0, Lcn/nubia/camera/pretty/i;->c:Lcn/nubia/camera/g/e;

    .line 34
    new-instance p2, Lcn/nubia/camera/pretty/i$2;

    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lcn/nubia/camera/pretty/i$2;-><init>(Lcn/nubia/camera/pretty/i;Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p2, p0, Lcn/nubia/camera/pretty/i;->d:Lcn/nubia/camera/g/h;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/pretty/i;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/pretty/i;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/pretty/i;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/nubia/camera/pretty/i;->g()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 83
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/i;->e:Z

    if-nez v0, :cond_0

    const-string v0, "SingleBokehShutterButtonClickListener"

    const-string v1, "Fragment is not resume"

    .line 84
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->b:Lcn/nubia/camera/pretty/j;

    iget-object v1, p0, Lcn/nubia/camera/pretty/i;->d:Lcn/nubia/camera/g/h;

    iget-object v2, p0, Lcn/nubia/camera/pretty/i;->c:Lcn/nubia/camera/g/e;

    invoke-virtual {v2}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/pretty/j;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 90
    invoke-direct {p0}, Lcn/nubia/camera/pretty/i;->g()V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->f:Lcn/nubia/camera/pretty/b$a;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcn/nubia/camera/pretty/b$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/i;->e:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/pretty/b$a;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/nubia/camera/pretty/i;->f:Lcn/nubia/camera/pretty/b$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/pretty/i;->f:Lcn/nubia/camera/pretty/b$a;

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Lcn/nubia/camera/pretty/b$a;->a()V

    .line 57
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/pretty/i;->f()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/i;->e:Z

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
