.class Lcn/nubia/camera/aimoon/b$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aimoon/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/b;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcn/nubia/camera/aimoon/b$8;->a:Lcn/nubia/camera/aimoon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$8;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->f(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$8;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->f(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->g()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$8;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->f(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcn/nubia/camera/aimoon/b$8;->a:Lcn/nubia/camera/aimoon/b;

    invoke-static {v0}, Lcn/nubia/camera/aimoon/b;->f(Lcn/nubia/camera/aimoon/b;)Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aimoon/MoonEvSlidingDrawer;->h()V

    :cond_0
    return-void
.end method
