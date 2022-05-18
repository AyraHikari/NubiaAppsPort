.class Lb/a/a/e/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/e/h;


# direct methods
.method constructor <init>(Lb/a/a/e/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/e/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/a/e/h;->b(Lb/a/a/e/h;I)I

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    invoke-virtual {p1}, Lb/a/a/e/c;->j()I

    move-result v1

    invoke-static {v0, v1}, Lb/a/a/e/h;->f(Lb/a/a/e/h;I)I

    .line 3
    iget-object v0, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    invoke-virtual {p1}, Lb/a/a/e/c;->n()I

    move-result v1

    invoke-static {v0, v1}, Lb/a/a/e/h;->d(Lb/a/a/e/h;I)I

    .line 4
    iget-object v0, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    invoke-virtual {p1}, Lb/a/a/e/c;->m()I

    move-result p1

    invoke-static {v0, p1}, Lb/a/a/e/h;->e(Lb/a/a/e/h;I)I

    .line 5
    :cond_0
    iget-object p1, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    invoke-static {p1}, Lb/a/a/e/h;->c(Lb/a/a/e/h;)Lb/a/a/e/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    invoke-static {p1}, Lb/a/a/e/h;->c(Lb/a/a/e/h;)Lb/a/a/e/f;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/h$c;->a:Lb/a/a/e/h;

    invoke-static {v0}, Lb/a/a/e/h;->a(Lb/a/a/e/h;)I

    move-result v0

    invoke-interface {p1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_1
    return-void
.end method
