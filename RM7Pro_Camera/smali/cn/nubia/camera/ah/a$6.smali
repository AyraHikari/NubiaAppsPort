.class Lcn/nubia/camera/ah/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ah/a;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ah/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ah/a;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->u(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->u(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g()V

    .line 1057
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->g()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1064
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->u(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->u(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h()V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->e(Lcn/nubia/camera/ah/a;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcn/nubia/camera/ah/a$6;->a:Lcn/nubia/camera/ah/a;

    invoke-static {v0}, Lcn/nubia/camera/ah/a;->b(Lcn/nubia/camera/ah/a;)Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/SeekbarSlidingDrawer;->h()V

    :cond_1
    return-void
.end method
