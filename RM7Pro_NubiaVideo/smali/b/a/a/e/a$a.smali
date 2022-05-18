.class Lb/a/a/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/e/a;


# direct methods
.method constructor <init>(Lb/a/a/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/a$a;->a:Lb/a/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/e/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/e/a$a;->a:Lb/a/a/e/a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/a/e/a;->b(Lb/a/a/e/a;I)I

    .line 2
    iget-object v0, p0, Lb/a/a/e/a$a;->a:Lb/a/a/e/a;

    invoke-virtual {p1}, Lb/a/a/e/b;->p()I

    move-result p1

    invoke-static {v0, p1}, Lb/a/a/e/a;->c(Lb/a/a/e/a;I)I

    .line 3
    iget-object p1, p0, Lb/a/a/e/a$a;->a:Lb/a/a/e/a;

    invoke-static {p1}, Lb/a/a/e/a;->d(Lb/a/a/e/a;)Lb/a/a/e/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lb/a/a/e/a$a;->a:Lb/a/a/e/a;

    invoke-static {p1}, Lb/a/a/e/a;->d(Lb/a/a/e/a;)Lb/a/a/e/f;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/a$a;->a:Lb/a/a/e/a;

    invoke-static {v0}, Lb/a/a/e/a;->a(Lb/a/a/e/a;)I

    move-result v0

    invoke-interface {p1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_0
    return-void
.end method
