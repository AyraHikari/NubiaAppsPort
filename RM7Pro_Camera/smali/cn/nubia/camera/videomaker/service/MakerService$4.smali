.class Lcn/nubia/camera/videomaker/service/MakerService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/service/MakerService;->e(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcn/nubia/camera/videomaker/service/MakerService;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/service/MakerService;Landroid/content/Intent;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService$4;->b:Lcn/nubia/camera/videomaker/service/MakerService;

    iput-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$4;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService$4;->b:Lcn/nubia/camera/videomaker/service/MakerService;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/service/MakerService$4;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Lcn/nubia/camera/videomaker/service/MakerService;Landroid/content/Intent;)V

    .line 710
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->c()Lcn/nubia/camera/videomaker/service/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/service/MakerService$4;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/service/b;->a(Landroid/content/Intent;)V

    return-void
.end method
