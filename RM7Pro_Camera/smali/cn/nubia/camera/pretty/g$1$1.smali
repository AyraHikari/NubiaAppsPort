.class Lcn/nubia/camera/pretty/g$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/g$1;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/g$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/g$1;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcn/nubia/camera/pretty/g$1$1;->a:Lcn/nubia/camera/pretty/g$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1$1;->a:Lcn/nubia/camera/pretty/g$1;

    iget-object v0, v0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->a(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/pretty/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/e;->e()V

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1$1;->a:Lcn/nubia/camera/pretty/g$1;

    iget-object v0, v0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    iget-object v1, p0, Lcn/nubia/camera/pretty/g$1$1;->a:Lcn/nubia/camera/pretty/g$1;

    iget-object v1, v1, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v1}, Lcn/nubia/camera/pretty/g;->e(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/g;->a(Lcn/nubia/camera/pretty/g;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1$1;->a:Lcn/nubia/camera/pretty/g$1;

    iget-object v0, v0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    iget-object v1, p0, Lcn/nubia/camera/pretty/g$1$1;->a:Lcn/nubia/camera/pretty/g$1;

    iget-object v1, v1, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v1}, Lcn/nubia/camera/pretty/g;->f(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/g;->b(Lcn/nubia/camera/pretty/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/g$1$1;->a:Lcn/nubia/camera/pretty/g$1;

    iget-object v0, v0, Lcn/nubia/camera/pretty/g$1;->a:Lcn/nubia/camera/pretty/g;

    invoke-static {v0}, Lcn/nubia/camera/pretty/g;->g(Lcn/nubia/camera/pretty/g;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->r()V

    :cond_1
    return-void
.end method
