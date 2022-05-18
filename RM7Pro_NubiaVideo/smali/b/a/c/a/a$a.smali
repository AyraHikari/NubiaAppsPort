.class Lb/a/c/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/a;


# direct methods
.method constructor <init>(Lb/a/c/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-static {p1, v2}, Lb/a/c/a/a;->t(Lb/a/c/a/a;Z)Z

    .line 2
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-virtual {p1}, Lb/a/c/a/b;->g()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-static {p1}, Lb/a/c/a/a;->u(Lb/a/c/a/a;)Lb/a/a/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/e/a;->j()V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-virtual {p1}, Lb/a/c/a/b;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-static {p1}, Lb/a/c/a/a;->u(Lb/a/c/a/a;)Lb/a/a/e/a;

    move-result-object p1

    iget-object v0, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-virtual {v0}, Lb/a/c/a/b;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/a/e/a;->m(I)V

    .line 6
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-static {p1}, Lb/a/c/a/a;->u(Lb/a/c/a/a;)Lb/a/a/e/a;

    move-result-object p1

    iget-object v0, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    iget v0, v0, Lb/a/c/a/b;->b:I

    invoke-virtual {p1, v0}, Lb/a/a/e/a;->t(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-static {p1}, Lb/a/c/a/a;->u(Lb/a/c/a/a;)Lb/a/a/e/a;

    move-result-object p1

    iget-object v0, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    iget v0, v0, Lb/a/c/a/b;->b:I

    invoke-virtual {p1, v0}, Lb/a/a/e/a;->m(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-static {p1}, Lb/a/c/a/a;->u(Lb/a/c/a/a;)Lb/a/a/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/e/a;->w()V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-virtual {p1, v3, v1, v2, v0}, Lb/a/c/a/b;->n(IIILjava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Lb/a/c/a/a$a;->a:Lb/a/c/a/a;

    invoke-virtual {p1, v3, v1, v2, v0}, Lb/a/c/a/b;->n(IIILjava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method
