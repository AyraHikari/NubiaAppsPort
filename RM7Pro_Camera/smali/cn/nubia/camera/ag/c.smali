.class public Lcn/nubia/camera/ag/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/ag/h;

.field private b:Lcn/nubia/camera/k/q;

.field private c:Lcn/nubia/camera/ad/a;

.field private d:Lcn/nubia/camera/g/e;

.field private e:Lcn/nubia/camera/aj/i;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/ag/h;Lcn/nubia/camera/z/b;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/nubia/camera/ag/c;->c:Lcn/nubia/camera/ad/a;

    .line 28
    new-instance v0, Lcn/nubia/camera/g/h;

    iget-object v1, p0, Lcn/nubia/camera/ag/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ag/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object v0, p0, Lcn/nubia/camera/ag/c;->b:Lcn/nubia/camera/k/q;

    .line 29
    iput-object p2, p0, Lcn/nubia/camera/ag/c;->a:Lcn/nubia/camera/ag/h;

    .line 30
    new-instance p2, Lcn/nubia/camera/g/e;

    iget-object v0, p0, Lcn/nubia/camera/ag/c;->a:Lcn/nubia/camera/ag/h;

    new-instance v1, Lcn/nubia/camera/ag/c$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ag/c$1;-><init>(Lcn/nubia/camera/ag/c;)V

    invoke-direct {p2, p1, v0, p3, v1}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object p2, p0, Lcn/nubia/camera/ag/c;->d:Lcn/nubia/camera/g/e;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ag/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/ag/c;->c:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/ag/c;)Lcn/nubia/camera/aj/i;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/ag/c;->e:Lcn/nubia/camera/aj/i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/ag/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ag/c;->e:Lcn/nubia/camera/aj/i;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/ag/c;->a:Lcn/nubia/camera/ag/h;

    invoke-virtual {v0}, Lcn/nubia/camera/ag/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v0

    .line 57
    sget-wide v2, Lcn/nubia/camera/aq/f;->h:J

    div-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 58
    iget-object v2, p0, Lcn/nubia/camera/ag/c;->e:Lcn/nubia/camera/aj/i;

    invoke-interface {v2, v0, v1}, Lcn/nubia/camera/aj/i;->a(J)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/ag/c;->a:Lcn/nubia/camera/ag/h;

    iget-object v1, p0, Lcn/nubia/camera/ag/c;->b:Lcn/nubia/camera/k/q;

    iget-object v2, p0, Lcn/nubia/camera/ag/c;->d:Lcn/nubia/camera/g/e;

    invoke-virtual {v2}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ag/h;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/ag/c;->c:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/camera/aj/i;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/ag/c;->e:Lcn/nubia/camera/aj/i;

    return-void
.end method
