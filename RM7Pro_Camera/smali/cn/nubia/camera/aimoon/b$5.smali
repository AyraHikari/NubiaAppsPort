.class Lcn/nubia/camera/aimoon/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aimoon/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/b;->g(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/b;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->l(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->m(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->m()V

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->o(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/aimoon/b$5$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/aimoon/b$5$1;-><init>(Lcn/nubia/camera/aimoon/b$5;)V

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    .line 240
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->s(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v1}, Lcn/nubia/camera/aimoon/b;->p(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/aimoon/b$5$2;

    invoke-direct {v2, p0}, Lcn/nubia/camera/aimoon/b$5$2;-><init>(Lcn/nubia/camera/aimoon/b$5;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/af/b;Lcn/nubia/camera/k/h$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcn/nubia/camera/aimoon/b$5;->b()V

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$5;->a:Lcn/nubia/camera/aimoon/b;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/b;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/aimoon/d;

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/d;->n()V

    return-void
.end method
