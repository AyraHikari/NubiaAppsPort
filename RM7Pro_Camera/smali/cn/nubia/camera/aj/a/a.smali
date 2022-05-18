.class public Lcn/nubia/camera/aj/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/a/a;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/k/ah;

.field private d:Lcn/nubia/camera/aj/a/g;

.field private e:Lcn/nubia/camera/aj/a/h;

.field private f:Lcn/nubia/camera/aj/a/c;

.field private g:Lcn/nubia/camera/aj/a/b;

.field private h:Lcn/nubia/camera/aj/a/d;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/a/a;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/nubia/camera/aj/a/a;->a:Lcn/nubia/camera/a/a;

    .line 29
    iput-object p2, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    .line 30
    iput-object p3, p0, Lcn/nubia/camera/aj/a/a;->c:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method private b()Lcn/nubia/camera/aj/a/g;
    .locals 4

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->d:Lcn/nubia/camera/aj/a/g;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcn/nubia/camera/aj/a/g;

    iget-object v1, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    iget-object v2, p0, Lcn/nubia/camera/aj/a/a;->c:Lcn/nubia/camera/k/ah;

    iget-object v3, p0, Lcn/nubia/camera/aj/a/a;->a:Lcn/nubia/camera/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/aj/a/g;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/a/a;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/a/a;->d:Lcn/nubia/camera/aj/a/g;

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->d:Lcn/nubia/camera/aj/a/g;

    return-object v0
.end method

.method private c()Lcn/nubia/camera/aj/a/h;
    .locals 3

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->e:Lcn/nubia/camera/aj/a/h;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcn/nubia/camera/aj/a/h;

    iget-object v1, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    iget-object v2, p0, Lcn/nubia/camera/aj/a/a;->a:Lcn/nubia/camera/a/a;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/aj/a/h;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/a/a;)V

    iput-object v0, p0, Lcn/nubia/camera/aj/a/a;->e:Lcn/nubia/camera/aj/a/h;

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->e:Lcn/nubia/camera/aj/a/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->f:Lcn/nubia/camera/aj/a/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/camera/aj/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->a:Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->a(Z)V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcn/nubia/camera/aj/a/a;->f:Lcn/nubia/camera/aj/a/c;

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->q()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->h:Lcn/nubia/camera/aj/a/d;

    if-eqz v0, :cond_1

    .line 84
    invoke-interface {v0}, Lcn/nubia/camera/aj/a/d;->o()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/camera/aj/a/b;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/nubia/camera/aj/a/a;->g:Lcn/nubia/camera/aj/a/b;

    return-void
.end method

.method public a(Lcn/nubia/camera/aj/a/d;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/camera/aj/a/a;->h:Lcn/nubia/camera/aj/a/d;

    return-void
.end method

.method public a(ZZ)Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->D()Lcn/nubia/k/a/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/k/a/a;->b(J)Lcn/nubia/k/a/a$b;

    move-result-object v0

    .line 45
    sget-object v1, Lcn/nubia/k/a/a$b;->c:Lcn/nubia/k/a/a$b;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "can not add request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContinuousShot"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    .line 50
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    return v2

    .line 54
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->h:Lcn/nubia/camera/aj/a/d;

    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v0}, Lcn/nubia/camera/aj/a/d;->n()V

    .line 57
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->g:Lcn/nubia/camera/aj/a/b;

    invoke-virtual {v0, p2}, Lcn/nubia/camera/aj/a/b;->a(Z)V

    if-eqz p1, :cond_4

    .line 58
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/a;->c()Lcn/nubia/camera/aj/a/h;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/a;->b()Lcn/nubia/camera/aj/a/g;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/aj/a/a;->f:Lcn/nubia/camera/aj/a/c;

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/aj/a/a;->g:Lcn/nubia/camera/aj/a/b;

    invoke-interface {p1, v0}, Lcn/nubia/camera/aj/a/c;->a(Lcn/nubia/camera/aj/a/b;)V

    .line 60
    iget-object p1, p0, Lcn/nubia/camera/aj/a/a;->f:Lcn/nubia/camera/aj/a/c;

    invoke-interface {p1}, Lcn/nubia/camera/aj/a/c;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 61
    iget-object p1, p0, Lcn/nubia/camera/aj/a/a;->a:Lcn/nubia/camera/a/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/a/a;->a(Z)V

    if-nez p2, :cond_5

    .line 63
    iget-object p1, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 64
    iget-object p1, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aw/a;->q()V

    .line 67
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 68
    iget-object p1, p0, Lcn/nubia/camera/aj/a/a;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/l/a/b;->a(Z)V

    return v0

    :cond_6
    return v2
.end method
