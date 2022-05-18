.class Lcn/nubia/camera/x/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/a;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/a;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcn/nubia/camera/x/a$7;->a:Lcn/nubia/camera/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 767
    iget-object v0, p0, Lcn/nubia/camera/x/a$7;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->b(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcn/nubia/camera/x/a$7;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->b(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcn/nubia/camera/x/a$7;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->b(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcn/nubia/camera/x/a$7;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->b(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h()V

    :cond_0
    return-void
.end method
