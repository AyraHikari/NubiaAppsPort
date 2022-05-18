.class Lcn/nubia/camera/ao/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/j;->ae()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/j;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcn/nubia/camera/ao/j$3;->a:Lcn/nubia/camera/ao/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 1

    .line 339
    invoke-static {}, Lcn/nubia/camera/ao/j;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onConfingSuccess"

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object p1, p0, Lcn/nubia/camera/ao/j$3;->a:Lcn/nubia/camera/ao/j;

    invoke-static {p1}, Lcn/nubia/camera/ao/j;->k(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 341
    iget-object p1, p0, Lcn/nubia/camera/ao/j$3;->a:Lcn/nubia/camera/ao/j;

    invoke-static {p1}, Lcn/nubia/camera/ao/j;->l(Lcn/nubia/camera/ao/j;)Lcom/android/common/c/a$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 342
    iget-object p1, p0, Lcn/nubia/camera/ao/j$3;->a:Lcn/nubia/camera/ao/j;

    new-instance v0, Lcn/nubia/camera/ao/j$3$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/ao/j$3$1;-><init>(Lcn/nubia/camera/ao/j$3;)V

    invoke-static {p1, v0}, Lcn/nubia/camera/ao/j;->a(Lcn/nubia/camera/ao/j;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;

    .line 352
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ao/j$3;->a:Lcn/nubia/camera/ao/j;

    invoke-static {p1}, Lcn/nubia/camera/ao/j;->n(Lcn/nubia/camera/ao/j;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ao/j$3;->a:Lcn/nubia/camera/ao/j;

    invoke-static {v0}, Lcn/nubia/camera/ao/j;->l(Lcn/nubia/camera/ao/j;)Lcom/android/common/c/a$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    return-void
.end method
