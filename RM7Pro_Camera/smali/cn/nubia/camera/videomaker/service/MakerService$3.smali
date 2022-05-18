.class Lcn/nubia/camera/videomaker/service/MakerService$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/service/MakerService;->d(Landroid/content/Intent;)V
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

    .line 603
    iput-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService$3;->b:Lcn/nubia/camera/videomaker/service/MakerService;

    iput-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Export exception: "

    const-string v1, "MakerService"

    const-string v2, "exportMovie"

    .line 606
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3;->a:Landroid/content/Intent;

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    iget-object v3, p0, Lcn/nubia/camera/videomaker/service/MakerService$3;->a:Landroid/content/Intent;

    const-string v4, "height"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 609
    iget-object v3, p0, Lcn/nubia/camera/videomaker/service/MakerService$3;->a:Landroid/content/Intent;

    const-string v4, "bitrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 610
    iget-object v3, p0, Lcn/nubia/camera/videomaker/service/MakerService$3;->a:Landroid/content/Intent;

    const-string v4, "fps"

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 614
    :try_start_0
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->e()Lcn/nubia/camera/videomaker/a/b;

    move-result-object v4

    new-instance v5, Lcn/nubia/camera/videomaker/service/MakerService$3$1;

    invoke-direct {v5, p0, v2}, Lcn/nubia/camera/videomaker/service/MakerService$3$1;-><init>(Lcn/nubia/camera/videomaker/service/MakerService$3;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcn/nubia/camera/videomaker/a/b;->a(Lcn/nubia/camera/videomaker/a/b$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    :goto_0
    :try_start_1
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->e()Lcn/nubia/camera/videomaker/a/b;

    move-result-object v4

    new-instance v5, Lcn/nubia/camera/videomaker/service/MakerService$3$2;

    invoke-direct {v5, p0, v2}, Lcn/nubia/camera/videomaker/service/MakerService$3$2;-><init>(Lcn/nubia/camera/videomaker/service/MakerService$3;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3, v5}, Lcn/nubia/camera/videomaker/a/b;->a(Ljava/lang/String;ILcn/nubia/camera/videomaker/a/b$c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
