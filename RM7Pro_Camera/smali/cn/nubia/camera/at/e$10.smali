.class Lcn/nubia/camera/at/e$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcn/nubia/camera/at/e$10;->a:Lcn/nubia/camera/at/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/at/e$10;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->m(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->g()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcn/nubia/camera/at/e$10;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->m(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->h()V

    return-void
.end method
