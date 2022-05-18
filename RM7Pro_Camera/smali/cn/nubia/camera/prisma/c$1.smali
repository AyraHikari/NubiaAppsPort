.class Lcn/nubia/camera/prisma/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/an/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:I

.field b:Ljava/lang/Runnable;

.field final synthetic c:Lcn/nubia/camera/prisma/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/c;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$1;->c:Lcn/nubia/camera/prisma/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 212
    iput p1, p0, Lcn/nubia/camera/prisma/c$1;->a:I

    .line 238
    new-instance p1, Lcn/nubia/camera/prisma/c$1$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/prisma/c$1$1;-><init>(Lcn/nubia/camera/prisma/c$1;)V

    iput-object p1, p0, Lcn/nubia/camera/prisma/c$1;->b:Ljava/lang/Runnable;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$1;->c:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iput p1, p0, Lcn/nubia/camera/prisma/c$1;->a:I

    .line 234
    iget-object p1, p0, Lcn/nubia/camera/prisma/c$1;->c:Lcn/nubia/camera/prisma/c;

    invoke-static {p1}, Lcn/nubia/camera/prisma/c;->a(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/prisma/c$1;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object p1, p0, Lcn/nubia/camera/prisma/c$1;->c:Lcn/nubia/camera/prisma/c;

    invoke-static {p1}, Lcn/nubia/camera/prisma/c;->b(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->G()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/prisma/c$1;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 216
    invoke-direct {p0, p3}, Lcn/nubia/camera/prisma/c$1;->a(I)V

    return-void
.end method

.method public a(Lcn/nubia/camera/an/a;IIIIIIII)V
    .locals 0

    .line 221
    invoke-direct {p0, p3}, Lcn/nubia/camera/prisma/c$1;->a(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
