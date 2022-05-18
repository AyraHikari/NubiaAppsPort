.class Lcn/nubia/camera/au/j$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/j;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/j;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/j;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcn/nubia/camera/au/j$3;->a:Lcn/nubia/camera/au/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcn/nubia/camera/au/j$3;->a:Lcn/nubia/camera/au/j;

    invoke-static {v0}, Lcn/nubia/camera/au/j;->d(Lcn/nubia/camera/au/j;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcn/nubia/camera/au/j$3;->a:Lcn/nubia/camera/au/j;

    invoke-static {v0}, Lcn/nubia/camera/au/j;->d(Lcn/nubia/camera/au/j;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h()V

    return-void
.end method
