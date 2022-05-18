.class public Lcn/nubia/camera/aimoon/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/aimoon/e$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/q/b;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/aimoon/h;

.field private d:Lcn/nubia/camera/g/h;

.field private e:Lcn/nubia/camera/aimoon/g;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/aimoon/h;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcn/nubia/camera/aimoon/e;->f:I

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/e;->g:Z

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    .line 37
    iput-object p2, p0, Lcn/nubia/camera/aimoon/e;->c:Lcn/nubia/camera/aimoon/h;

    .line 39
    new-instance p1, Lcn/nubia/camera/aimoon/e$1;

    iget-object p2, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    .line 40
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcn/nubia/camera/aimoon/e$1;-><init>(Lcn/nubia/camera/aimoon/e;Landroid/content/Context;Lcn/nubia/j/a;)V

    iput-object p1, p0, Lcn/nubia/camera/aimoon/e;->d:Lcn/nubia/camera/g/h;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/e;)Lcn/nubia/camera/q/b;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/aimoon/e;->a:Lcn/nubia/camera/q/b;

    return-object p0
.end method

.method private a(Lcn/nubia/b/a/f;)[B
    .locals 14

    .line 197
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 198
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 199
    invoke-interface {p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 200
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 201
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 202
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    invoke-interface {p1}, Lcn/nubia/b/a/f;->f()I

    move-result v12

    invoke-interface {p1}, Lcn/nubia/b/a/f;->c()I

    move-result v13

    .line 200
    invoke-static/range {v3 .. v13}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcn/nubia/algorithm/utils/a;->a()V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/aimoon/e;Lcn/nubia/b/a/f;)[B
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/camera/aimoon/e;->a(Lcn/nubia/b/a/f;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/aimoon/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/aimoon/e;)Lcn/nubia/camera/aimoon/g;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/camera/aimoon/e;->e:Lcn/nubia/camera/aimoon/g;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 96
    iget-boolean v0, p0, Lcn/nubia/camera/aimoon/e;->g:Z

    const-string v1, "AIMoonOnShutterButtonListener"

    if-nez v0, :cond_0

    const-string v0, "Fragment is not resume"

    .line 97
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->e:Lcn/nubia/camera/aimoon/g;

    new-instance v2, Lcn/nubia/camera/aimoon/e$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/aimoon/e$2;-><init>(Lcn/nubia/camera/aimoon/e;)V

    invoke-virtual {v0, v2}, Lcn/nubia/camera/aimoon/g;->a(Lcn/nubia/camera/aimoon/g$b;)V

    .line 115
    iget v0, p0, Lcn/nubia/camera/aimoon/e;->f:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcn/nubia/camera/aimoon/e$a;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcn/nubia/camera/aimoon/e$a;-><init>(Lcn/nubia/camera/aimoon/e;Z)V

    .line 117
    iget-object v3, p0, Lcn/nubia/camera/aimoon/e;->c:Lcn/nubia/camera/aimoon/h;

    iget-object v4, p0, Lcn/nubia/camera/aimoon/e;->d:Lcn/nubia/camera/g/h;

    invoke-virtual {v3, v4, v0, v0}, Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Lcn/nubia/camera/aimoon/e$a;

    invoke-direct {v0, p0, v2}, Lcn/nubia/camera/aimoon/e$a;-><init>(Lcn/nubia/camera/aimoon/e;Z)V

    .line 120
    iget-object v2, p0, Lcn/nubia/camera/aimoon/e;->c:Lcn/nubia/camera/aimoon/h;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v0}, Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/g/h;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Lcn/nubia/camera/aimoon/e$a;

    invoke-direct {v0, p0, v2}, Lcn/nubia/camera/aimoon/e$a;-><init>(Lcn/nubia/camera/aimoon/e;Z)V

    .line 124
    iget-object v2, p0, Lcn/nubia/camera/aimoon/e;->c:Lcn/nubia/camera/aimoon/h;

    iget-object v3, p0, Lcn/nubia/camera/aimoon/e;->d:Lcn/nubia/camera/g/h;

    invoke-virtual {v2, v3, v0, v0}, Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/g/h;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    move-result v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-string v0, "take fail!"

    .line 128
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->e:Lcn/nubia/camera/aimoon/g;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/g;->b()V

    .line 130
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    goto :goto_1

    .line 132
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->m()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/e;->g:Z

    .line 84
    new-instance v0, Lcn/nubia/camera/aimoon/g;

    iget-object v2, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    sget v4, Lcn/nubia/camera/aimoon/l;->a:F

    sget v5, Lcn/nubia/camera/aimoon/l;->b:F

    iget v6, p0, Lcn/nubia/camera/aimoon/e;->f:I

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/aimoon/g;-><init>(Lcn/nubia/camera/ad/a;ZFFI)V

    iput-object v0, p0, Lcn/nubia/camera/aimoon/e;->e:Lcn/nubia/camera/aimoon/g;

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 50
    iput p1, p0, Lcn/nubia/camera/aimoon/e;->f:I

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->e:Lcn/nubia/camera/aimoon/g;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aimoon/g;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/q/b;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/aimoon/e;->a:Lcn/nubia/camera/q/b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "AIMoonOnShutterButtonListener"

    const-string v1, "onShutterButtonClick"

    .line 66
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 72
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/e;->e()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcn/nubia/camera/aimoon/e;->g:Z

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/aimoon/e;->e:Lcn/nubia/camera/aimoon/g;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/g;->a()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/aimoon/e;->e:Lcn/nubia/camera/aimoon/g;

    :cond_0
    return-void
.end method
