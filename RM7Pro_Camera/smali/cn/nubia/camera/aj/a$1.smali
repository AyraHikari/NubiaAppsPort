.class Lcn/nubia/camera/aj/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/a;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/camera/aj/a$1;->a:Lcn/nubia/camera/aj/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcn/nubia/camera/aj/a$1;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v0}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ad/a;->c(Z)V

    .line 35
    iget-object v0, p0, Lcn/nubia/camera/aj/a$1;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v0}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ae/a;->a(J)V

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/aj/a$1;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v0}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    .line 37
    iget-object v0, p0, Lcn/nubia/camera/aj/a$1;->a:Lcn/nubia/camera/aj/a;

    invoke-static {v0}, Lcn/nubia/camera/aj/a;->a(Lcn/nubia/camera/aj/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->g:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    return-void
.end method
