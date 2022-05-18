.class public Lcn/nubia/camera/ai/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ai/d$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/k/ah;

.field private c:Lcn/nubia/camera/g/h;

.field private d:Lcn/nubia/camera/g/e;

.field private e:Lcn/nubia/camera/k/u;

.field private f:Lcn/nubia/camera/aj/i;

.field private g:Lcn/nubia/camera/ai/d$a;

.field private h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcn/nubia/camera/ai/d;->e:Lcn/nubia/camera/k/u;

    .line 30
    iput-object v0, p0, Lcn/nubia/camera/ai/d;->f:Lcn/nubia/camera/aj/i;

    .line 31
    iput-object v0, p0, Lcn/nubia/camera/ai/d;->g:Lcn/nubia/camera/ai/d$a;

    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcn/nubia/camera/ai/d;->h:Z

    .line 154
    new-instance v1, Lcn/nubia/camera/ai/d$4;

    invoke-direct {v1, p0}, Lcn/nubia/camera/ai/d$4;-><init>(Lcn/nubia/camera/ai/d;)V

    iput-object v1, p0, Lcn/nubia/camera/ai/d;->i:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    .line 55
    iput-object p2, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    .line 57
    new-instance p2, Lcn/nubia/camera/ai/d$1;

    iget-object v1, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    .line 58
    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v2

    invoke-direct {p2, p0, v1, v2}, Lcn/nubia/camera/ai/d$1;-><init>(Lcn/nubia/camera/ai/d;Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p2, p0, Lcn/nubia/camera/ai/d;->c:Lcn/nubia/camera/g/h;

    .line 65
    new-instance p2, Lcn/nubia/camera/g/e;

    iget-object v1, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    new-instance v2, Lcn/nubia/camera/ai/d$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/ai/d$2;-><init>(Lcn/nubia/camera/ai/d;)V

    invoke-direct {p2, p1, v1, v0, v2}, Lcn/nubia/camera/g/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/z/b;Lcn/nubia/camera/g/c;)V

    iput-object p2, p0, Lcn/nubia/camera/ai/d;->d:Lcn/nubia/camera/g/e;

    .line 82
    new-instance p1, Lcn/nubia/camera/ai/d$a;

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/ai/d$a;-><init>(Lcn/nubia/camera/ai/d;Lcn/nubia/camera/ai/d$1;)V

    iput-object p1, p0, Lcn/nubia/camera/ai/d;->g:Lcn/nubia/camera/ai/d$a;

    .line 84
    iget-object p1, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    new-instance p2, Lcn/nubia/camera/ai/d$3;

    invoke-direct {p2, p0}, Lcn/nubia/camera/ai/d$3;-><init>(Lcn/nubia/camera/ai/d;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/ai/d;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcn/nubia/camera/ai/d;->h:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/k/u;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/ai/d;->e:Lcn/nubia/camera/k/u;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ai/d$a;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/ai/d;->g:Lcn/nubia/camera/ai/d$a;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 132
    iget-boolean v0, p0, Lcn/nubia/camera/ai/d;->h:Z

    if-nez v0, :cond_0

    const-string v0, "NightSceneOnShutterButtonListener"

    const-string v1, "Fragment is not resume"

    .line 133
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/ai/d;->c:Lcn/nubia/camera/g/h;

    iget-object v2, p0, Lcn/nubia/camera/ai/d;->d:Lcn/nubia/camera/g/e;

    invoke-virtual {v2}, Lcn/nubia/camera/g/e;->a()Lcn/nubia/camera/k/o;

    move-result-object v2

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ak/a;->aP()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcn/nubia/camera/ai/d;->e:Lcn/nubia/camera/k/u;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/ai/d;->f:Lcn/nubia/camera/aj/i;

    if-eqz v0, :cond_3

    .line 139
    invoke-direct {p0}, Lcn/nubia/camera/ai/d;->f()V

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 141
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aP()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/ai/d;->g:Lcn/nubia/camera/ai/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->d:Lcn/nubia/camera/g/e;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/g/e;->a(JZ)V

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/ai/d;->g:Lcn/nubia/camera/ai/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/ai/d;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/camera/ai/d;->f()V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/ai/d;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/ai/d;->i:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/aj/i;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/camera/ai/d;->f:Lcn/nubia/camera/aj/i;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcn/nubia/camera/ai/d;->h:Z

    return-void
.end method

.method public a(Lcn/nubia/camera/aj/i;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcn/nubia/camera/ai/d;->f:Lcn/nubia/camera/aj/i;

    return-void
.end method

.method public a(Lcn/nubia/camera/k/u;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/camera/ai/d;->e:Lcn/nubia/camera/k/u;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 113
    invoke-direct {p0}, Lcn/nubia/camera/ai/d;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcn/nubia/camera/ai/d;->h:Z

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/ai/d;->b:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/ai/d;->g:Lcn/nubia/camera/ai/d$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method
