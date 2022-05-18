.class Lcn/nubia/camera/o/e$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/e$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/e$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/e$1;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcn/nubia/camera/o/e$1$1;->a:Lcn/nubia/camera/o/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcn/nubia/camera/o/e$1$1;->a:Lcn/nubia/camera/o/e$1;

    iget-object p1, p1, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {p1}, Lcn/nubia/camera/o/e;->g(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 154
    iget-object p1, p0, Lcn/nubia/camera/o/e$1$1;->a:Lcn/nubia/camera/o/e$1;

    iget-object p1, p1, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {p1}, Lcn/nubia/camera/o/e;->e(Lcn/nubia/camera/o/e;)Lcom/android/common/c/a$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcn/nubia/camera/o/e$1$1;->a:Lcn/nubia/camera/o/e$1;

    iget-object p1, p1, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    new-instance v0, Lcn/nubia/camera/o/e$1$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/o/e$1$1$1;-><init>(Lcn/nubia/camera/o/e$1$1;)V

    invoke-static {p1, v0}, Lcn/nubia/camera/o/e;->a(Lcn/nubia/camera/o/e;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;

    .line 164
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/o/e$1$1;->a:Lcn/nubia/camera/o/e$1;

    iget-object p1, p1, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {p1}, Lcn/nubia/camera/o/e;->i(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/o/e$1$1;->a:Lcn/nubia/camera/o/e$1;

    iget-object v0, v0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {v0}, Lcn/nubia/camera/o/e;->e(Lcn/nubia/camera/o/e;)Lcom/android/common/c/a$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    return-void
.end method
