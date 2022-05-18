.class Lcn/nubia/camera/pretty/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/g;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->a(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/pretty/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/e;->d()V

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->b(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/g;->a(Lcn/nubia/camera/pretty/g;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->c(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/g;->b(Lcn/nubia/camera/pretty/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->d(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->m()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/pretty/g$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/pretty/g$1$1;-><init>(Lcn/nubia/camera/pretty/g$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
