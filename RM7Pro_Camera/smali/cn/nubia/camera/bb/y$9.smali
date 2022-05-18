.class Lcn/nubia/camera/bb/y$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/y;->ag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/y;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/y;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcn/nubia/camera/bb/y$9;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 1

    const-string p1, "VideoMemberFragment"

    const-string v0, "onConfingSuccess"

    .line 578
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object p1, p0, Lcn/nubia/camera/bb/y$9;->a:Lcn/nubia/camera/bb/y;

    invoke-static {p1}, Lcn/nubia/camera/bb/y;->q(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 580
    iget-object p1, p0, Lcn/nubia/camera/bb/y$9;->a:Lcn/nubia/camera/bb/y;

    invoke-static {p1}, Lcn/nubia/camera/bb/y;->r(Lcn/nubia/camera/bb/y;)Lcom/android/common/c/a$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 581
    iget-object p1, p0, Lcn/nubia/camera/bb/y$9;->a:Lcn/nubia/camera/bb/y;

    new-instance v0, Lcn/nubia/camera/bb/y$9$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/bb/y$9$1;-><init>(Lcn/nubia/camera/bb/y$9;)V

    invoke-static {p1, v0}, Lcn/nubia/camera/bb/y;->a(Lcn/nubia/camera/bb/y;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;

    .line 591
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/bb/y$9;->a:Lcn/nubia/camera/bb/y;

    invoke-static {p1}, Lcn/nubia/camera/bb/y;->t(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/bb/y$9;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->r(Lcn/nubia/camera/bb/y;)Lcom/android/common/c/a$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/c/a;->a(Lcom/android/common/c/a$a;)V

    return-void
.end method
