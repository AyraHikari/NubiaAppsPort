.class Lcn/nubia/camera/videomaker/service/MakerService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Exception;

.field final synthetic e:Z

.field final synthetic f:Lcn/nubia/camera/videomaker/service/MakerService;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/service/MakerService;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->f:Lcn/nubia/camera/videomaker/service/MakerService;

    iput-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->d:Ljava/lang/Exception;

    iput-boolean p6, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 321
    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->f:Lcn/nubia/camera/videomaker/service/MakerService;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->b:Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->c:Ljava/lang/Object;

    iget-object v4, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->d:Ljava/lang/Exception;

    iget-boolean v5, p0, Lcn/nubia/camera/videomaker/service/MakerService$2;->e:Z

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V

    return-void
.end method
