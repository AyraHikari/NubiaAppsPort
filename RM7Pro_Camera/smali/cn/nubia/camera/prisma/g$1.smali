.class Lcn/nubia/camera/prisma/g$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/g;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcn/nubia/camera/prisma/g$1;->a:Lcn/nubia/camera/prisma/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 203
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/camera/prisma/g$b;

    if-eqz p1, :cond_1

    .line 206
    iget-object v0, p1, Lcn/nubia/camera/prisma/g$b;->a:Lcn/nubia/camera/prisma/b$a;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p1, Lcn/nubia/camera/prisma/g$b;->a:Lcn/nubia/camera/prisma/b$a;

    iget-object p1, p1, Lcn/nubia/camera/prisma/g$b;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcn/nubia/camera/prisma/b$a;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
