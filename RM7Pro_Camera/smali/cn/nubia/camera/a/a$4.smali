.class Lcn/nubia/camera/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a;->af()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcn/nubia/camera/a/a$4;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 717
    iget-object v0, p0, Lcn/nubia/camera/a/a$4;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/k/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcn/nubia/camera/a/a$4;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->w()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcn/nubia/camera/a/a$4;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcn/nubia/camera/a/a$4;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->e()Lcn/nubia/camera/aw/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aw/a;->o()V

    .line 728
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/a/a$4;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/k/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcn/nubia/camera/a/a$4;->a:Lcn/nubia/camera/a/a;

    invoke-static {v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->x()V

    :cond_1
    return-void
.end method
