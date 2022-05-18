.class Lcn/nubia/camera/prisma/c$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/prisma/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/c$4;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/c$4;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/c$4;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$4$1;->a:Lcn/nubia/camera/prisma/c$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$4$1;->a:Lcn/nubia/camera/prisma/c$4;

    iget-object v0, v0, Lcn/nubia/camera/prisma/c$4;->a:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->f(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$4$1;->a:Lcn/nubia/camera/prisma/c$4;

    iget-object v0, v0, Lcn/nubia/camera/prisma/c$4;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/prisma/c;->b(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$4$1;->a:Lcn/nubia/camera/prisma/c$4;

    iget-object v0, v0, Lcn/nubia/camera/prisma/c$4;->a:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/prisma/c;->c(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
