.class Lcn/nubia/camera/l/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/l/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/l/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/l/a;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcn/nubia/camera/l/a$6;->a:Lcn/nubia/camera/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/l/a$6;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v0}, Lcn/nubia/camera/l/a;->e()V

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/l/a$6;->a:Lcn/nubia/camera/l/a;

    invoke-static {v0}, Lcn/nubia/camera/l/a;->d(Lcn/nubia/camera/l/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/l/a$6;->a:Lcn/nubia/camera/l/a;

    invoke-virtual {v0}, Lcn/nubia/camera/l/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    :cond_0
    return-void
.end method
