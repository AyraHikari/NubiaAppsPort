.class public Lcn/nubia/b/k;
.super Lcn/nubia/b/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/b/m<",
        "Lcn/nubia/b/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field private e:Lcn/nubia/b/a/h$a;

.field private f:Lcn/nubia/b/a/h$a;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/b/m;-><init>()V

    .line 29
    iput p1, p0, Lcn/nubia/b/k;->a:I

    .line 30
    iput p2, p0, Lcn/nubia/b/k;->b:I

    .line 31
    iput p3, p0, Lcn/nubia/b/k;->c:I

    .line 32
    iput p4, p0, Lcn/nubia/b/k;->d:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/Surface;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcn/nubia/b/k;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/c;

    invoke-virtual {v0}, Lcn/nubia/b/a/c;->d()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcn/nubia/b/a/c;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 95
    iget-object v0, p0, Lcn/nubia/b/k;->f:Lcn/nubia/b/a/h$a;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/nubia/b/k;->g:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    iget-object v1, p0, Lcn/nubia/b/k;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/b/a/c;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 99
    iget-object p1, p0, Lcn/nubia/b/k;->f:Lcn/nubia/b/a/h$a;

    iput-object p1, p0, Lcn/nubia/b/k;->e:Lcn/nubia/b/a/h$a;

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcn/nubia/b/k;->f()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    iput-object p1, p0, Lcn/nubia/b/k;->f:Lcn/nubia/b/a/h$a;

    .line 171
    iput-object p2, p0, Lcn/nubia/b/k;->g:Landroid/os/Handler;

    .line 172
    iput-object p1, p0, Lcn/nubia/b/k;->e:Lcn/nubia/b/a/h$a;

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/b/k;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/c;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/b/a/c;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 175
    iput-object p1, p0, Lcn/nubia/b/k;->e:Lcn/nubia/b/a/h$a;

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Lcn/nubia/b/k;->g:Landroid/os/Handler;

    .line 177
    iput-object p1, p0, Lcn/nubia/b/k;->f:Lcn/nubia/b/a/h$a;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    .line 105
    instance-of v0, p1, Lcn/nubia/b/k;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lcn/nubia/b/k;

    .line 107
    iget v0, p1, Lcn/nubia/b/k;->a:I

    iget v1, p0, Lcn/nubia/b/k;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/k;->b:I

    iget v1, p0, Lcn/nubia/b/k;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/k;->d:I

    iget v1, p0, Lcn/nubia/b/k;->d:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcn/nubia/b/k;->c:I

    iget v0, p0, Lcn/nubia/b/k;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()Lcn/nubia/b/a/c;
    .locals 5

    .line 79
    invoke-virtual {p0}, Lcn/nubia/b/k;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/c;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcn/nubia/b/a/c;

    iget v1, p0, Lcn/nubia/b/k;->a:I

    iget v2, p0, Lcn/nubia/b/k;->b:I

    iget v3, p0, Lcn/nubia/b/k;->c:I

    iget v4, p0, Lcn/nubia/b/k;->d:I

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/b/a/b;->a(IIII)Lcn/nubia/b/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/b/a/c;-><init>(Lcn/nubia/b/a/h;)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcn/nubia/b/k;->f:Lcn/nubia/b/a/h$a;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcn/nubia/b/k;->g:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 85
    :cond_1
    iget-object v2, p0, Lcn/nubia/b/k;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/b/a/c;->a(Lcn/nubia/b/a/h$a;Landroid/os/Handler;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/b/k;->f:Lcn/nubia/b/a/h$a;

    iput-object v1, p0, Lcn/nubia/b/k;->e:Lcn/nubia/b/a/h$a;

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcn/nubia/b/k;->f:Lcn/nubia/b/a/h$a;

    .line 88
    iput-object v1, p0, Lcn/nubia/b/k;->g:Landroid/os/Handler;

    :cond_2
    return-object v0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lcn/nubia/b/a/c;

    invoke-virtual {p0, p1}, Lcn/nubia/b/k;->a(Lcn/nubia/b/a/c;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcn/nubia/b/k;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcn/nubia/b/k;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/c;

    invoke-virtual {v0}, Lcn/nubia/b/a/c;->close()V

    :cond_0
    return-void
.end method

.method public d()Lcn/nubia/b/a/h$a;
    .locals 1

    .line 182
    iget-object v0, p0, Lcn/nubia/b/k;->e:Lcn/nubia/b/a/h$a;

    return-object v0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcn/nubia/b/k;->b()Lcn/nubia/b/a/c;

    move-result-object v0

    return-object v0
.end method
