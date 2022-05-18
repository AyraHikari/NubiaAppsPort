.class public Lcn/nubia/camera/clone/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/clone/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/clone/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/clone/b;

.field private c:Lcn/nubia/camera/clone/c$a;

.field private d:Lcn/nubia/camera/clone/l;

.field private e:I

.field private f:I

.field private g:Lcn/nubia/camera/clone/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/clone/d;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/clone/c$a;Lcn/nubia/camera/clone/l;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/nubia/camera/clone/c;->b:Lcn/nubia/camera/clone/b;

    .line 10
    iput-object v0, p0, Lcn/nubia/camera/clone/c;->c:Lcn/nubia/camera/clone/c$a;

    .line 11
    iput-object v0, p0, Lcn/nubia/camera/clone/c;->d:Lcn/nubia/camera/clone/l;

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcn/nubia/camera/clone/c;->e:I

    .line 13
    iput v1, p0, Lcn/nubia/camera/clone/c;->f:I

    .line 14
    iput-object v0, p0, Lcn/nubia/camera/clone/c;->g:Lcn/nubia/camera/clone/d;

    .line 24
    iput-object p1, p0, Lcn/nubia/camera/clone/c;->g:Lcn/nubia/camera/clone/d;

    .line 25
    iput-object p2, p0, Lcn/nubia/camera/clone/c;->a:Lcn/nubia/camera/ad/a;

    .line 26
    iput-object p3, p0, Lcn/nubia/camera/clone/c;->c:Lcn/nubia/camera/clone/c$a;

    .line 27
    iput-object p4, p0, Lcn/nubia/camera/clone/c;->d:Lcn/nubia/camera/clone/l;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/c;)Lcn/nubia/camera/clone/l;
    .locals 0

    .line 6
    iget-object p0, p0, Lcn/nubia/camera/clone/c;->d:Lcn/nubia/camera/clone/l;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/clone/c;->b:Lcn/nubia/camera/clone/b;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcn/nubia/camera/clone/b;->a(I)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/clone/c;)Lcn/nubia/camera/clone/d;
    .locals 0

    .line 6
    iget-object p0, p0, Lcn/nubia/camera/clone/c;->g:Lcn/nubia/camera/clone/d;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/clone/c;->b:Lcn/nubia/camera/clone/b;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcn/nubia/camera/clone/b;

    iget-object v1, p0, Lcn/nubia/camera/clone/c;->a:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, v1}, Lcn/nubia/camera/clone/b;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/c;->b:Lcn/nubia/camera/clone/b;

    .line 53
    invoke-virtual {v0, p0}, Lcn/nubia/camera/clone/b;->a(Lcn/nubia/camera/clone/b$a;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/clone/c;->b:Lcn/nubia/camera/clone/b;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcn/nubia/camera/clone/b;->a()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/clone/c;->b:Lcn/nubia/camera/clone/b;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcn/nubia/camera/clone/c;->e:I

    .line 93
    iput v0, p0, Lcn/nubia/camera/clone/c;->f:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/camera/clone/c;->e:I

    .line 38
    iput p2, p0, Lcn/nubia/camera/clone/c;->f:I

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/clone/c;->g:Lcn/nubia/camera/clone/d;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/clone/c$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/camera/clone/c$1;-><init>(Lcn/nubia/camera/clone/c;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iget p1, p0, Lcn/nubia/camera/clone/c;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcn/nubia/camera/clone/c;->e:I

    .line 117
    iget-object p1, p0, Lcn/nubia/camera/clone/c;->g:Lcn/nubia/camera/clone/d;

    invoke-virtual {p1}, Lcn/nubia/camera/clone/d;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/clone/c$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/clone/c$2;-><init>(Lcn/nubia/camera/clone/c;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/clone/c;->f()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/clone/c;->c:Lcn/nubia/camera/clone/c$a;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Lcn/nubia/camera/clone/c$a;->a()V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/clone/c;->e()V

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/clone/c;->d:Lcn/nubia/camera/clone/l;

    invoke-virtual {v0}, Lcn/nubia/camera/clone/l;->j()V

    .line 47
    iget v0, p0, Lcn/nubia/camera/clone/c;->f:I

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/c;->a(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 61
    iget v0, p0, Lcn/nubia/camera/clone/c;->e:I

    if-lez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcn/nubia/camera/clone/c;->e()V

    .line 63
    iget v0, p0, Lcn/nubia/camera/clone/c;->f:I

    invoke-direct {p0, v0}, Lcn/nubia/camera/clone/c;->a(I)V

    goto :goto_0

    :cond_0
    const-string v0, "CloneDelayShootManager"

    const-string v1, "goOn stop, because is finished!"

    .line 65
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/clone/c;->d()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/clone/c;->c:Lcn/nubia/camera/clone/c$a;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcn/nubia/camera/clone/c$a;->b()V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/clone/c;->f()V

    .line 81
    invoke-direct {p0}, Lcn/nubia/camera/clone/c;->g()V

    return-void
.end method
