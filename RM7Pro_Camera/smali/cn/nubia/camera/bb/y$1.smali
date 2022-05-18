.class Lcn/nubia/camera/bb/y$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/extendedUI/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/y;->c(Ljava/util/ArrayList;)V
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

    .line 323
    iput-object p1, p0, Lcn/nubia/camera/bb/y$1;->a:Lcn/nubia/camera/bb/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcn/nubia/camera/bb/y$1;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->a(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/bb/ab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/bb/ab;->b(Z)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/bb/y$1;->a:Lcn/nubia/camera/bb/y;

    invoke-static {v0}, Lcn/nubia/camera/bb/y;->b(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/bb/y$1;->a:Lcn/nubia/camera/bb/y;

    .line 332
    invoke-static {v0}, Lcn/nubia/camera/bb/y;->c(Lcn/nubia/camera/bb/y;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
