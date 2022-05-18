.class Lcn/nubia/camera/prisma/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/prisma/c$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/c$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/c$1;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcn/nubia/camera/prisma/c$1$1;->a:Lcn/nubia/camera/prisma/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$1$1;->a:Lcn/nubia/camera/prisma/c$1;

    iget-object v0, v0, Lcn/nubia/camera/prisma/c$1;->c:Lcn/nubia/camera/prisma/c;

    invoke-virtual {v0}, Lcn/nubia/camera/prisma/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prisma/c$1$1;->a:Lcn/nubia/camera/prisma/c$1;

    iget-object v0, v0, Lcn/nubia/camera/prisma/c$1;->c:Lcn/nubia/camera/prisma/c;

    invoke-static {v0}, Lcn/nubia/camera/prisma/c;->c(Lcn/nubia/camera/prisma/c;)Lcn/nubia/camera/prisma/i;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/prisma/c$1$1;->a:Lcn/nubia/camera/prisma/c$1;

    iget v1, v1, Lcn/nubia/camera/prisma/c$1;->a:I

    invoke-virtual {v0, v1}, Lcn/nubia/camera/prisma/i;->a(I)V

    return-void
.end method
