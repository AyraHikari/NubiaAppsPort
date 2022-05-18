.class Lcn/nubia/camera/bd/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bd/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bd/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bd/b;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcn/nubia/camera/bd/b$6;->a:Lcn/nubia/camera/bd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/bd/b$6;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->d(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcn/nubia/camera/bd/b$6;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->d(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/bd/b$6;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->d(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/bd/b$6;->a:Lcn/nubia/camera/bd/b;

    invoke-static {v0}, Lcn/nubia/camera/bd/b;->d(Lcn/nubia/camera/bd/b;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h()V

    :cond_0
    return-void
.end method
