.class Lb/a/c/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/d;


# direct methods
.method constructor <init>(Lb/a/c/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {p1, v3, v0, v2, v1}, Lb/a/c/a/b;->n(IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {p1, v3, v0, v2, v1}, Lb/a/c/a/b;->n(IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/a/c/a/d;->t(Lb/a/c/a/d;Z)Z

    .line 4
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {p1}, Lb/a/c/a/b;->g()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-static {p1}, Lb/a/c/a/d;->u(Lb/a/c/a/d;)Lb/a/a/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/e/h;->q()V

    .line 6
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-static {p1}, Lb/a/c/a/d;->u(Lb/a/c/a/d;)Lb/a/a/e/h;

    move-result-object p1

    iget-object v0, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    iget v0, v0, Lb/a/c/a/b;->b:I

    invoke-virtual {p1, v0}, Lb/a/a/e/h;->u(I)V

    goto :goto_1

    .line 7
    :cond_3
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {p1, v3, v3, v2, v1}, Lb/a/c/a/b;->n(IIILjava/lang/Object;)V

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-static {p1}, Lb/a/c/a/d;->u(Lb/a/c/a/d;)Lb/a/a/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/e/h;->m()I

    move-result v0

    iget-object v1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-static {v1}, Lb/a/c/a/d;->u(Lb/a/c/a/d;)Lb/a/a/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/e/h;->k()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lb/a/c/a/d;->J(II)V

    .line 9
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {p1}, Lb/a/c/a/b;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-static {p1}, Lb/a/c/a/d;->u(Lb/a/c/a/d;)Lb/a/a/e/h;

    move-result-object p1

    iget-object v0, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/b;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/e/h;->u(I)V

    goto :goto_0

    .line 11
    :cond_5
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    iget v0, p1, Lb/a/c/a/b;->b:I

    invoke-virtual {p1}, Lb/a/c/a/b;->d()I

    move-result p1

    if-lt v0, p1, :cond_6

    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    iget v0, p1, Lb/a/c/a/b;->b:I

    invoke-virtual {p1}, Lb/a/c/a/b;->c()I

    move-result p1

    if-le v0, p1, :cond_7

    .line 12
    :cond_6
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {p1}, Lb/a/c/a/b;->d()I

    move-result v0

    iput v0, p1, Lb/a/c/a/b;->b:I

    .line 13
    :cond_7
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-static {p1}, Lb/a/c/a/d;->u(Lb/a/c/a/d;)Lb/a/a/e/h;

    move-result-object p1

    iget-object v0, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    iget v0, v0, Lb/a/c/a/b;->b:I

    invoke-virtual {p1, v0}, Lb/a/a/e/h;->u(I)V

    .line 14
    :goto_0
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-static {p1}, Lb/a/c/a/d;->u(Lb/a/c/a/d;)Lb/a/a/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/e/h;->G()V

    goto :goto_1

    .line 15
    :cond_8
    iget-object p1, p0, Lb/a/c/a/d$a;->a:Lb/a/c/a/d;

    invoke-virtual {p1, v3, v0, v2, v1}, Lb/a/c/a/b;->n(IIILjava/lang/Object;)V

    :goto_1
    return-void
.end method
