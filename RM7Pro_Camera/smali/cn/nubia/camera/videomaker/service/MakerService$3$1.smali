.class Lcn/nubia/camera/videomaker/service/MakerService$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/videomaker/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/videomaker/service/MakerService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/camera/videomaker/service/MakerService$3;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/service/MakerService$3;Ljava/lang/String;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->b:Lcn/nubia/camera/videomaker/service/MakerService$3;

    iput-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/videomaker/a/b;I)V
    .locals 1

    .line 619
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->c()Lcn/nubia/camera/videomaker/service/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/service/b;->a()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "op"

    const/4 v0, 0x4

    .line 620
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    iget-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->a:Ljava/lang/String;

    const-string v0, "filename"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    iget-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->b:Lcn/nubia/camera/videomaker/service/MakerService$3;

    iget-object p2, p2, Lcn/nubia/camera/videomaker/service/MakerService$3;->a:Landroid/content/Intent;

    const-string v0, "req_intent"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 624
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->d()Z

    move-result p2

    const-string v0, "cancelled"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 625
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->d()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 626
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->a:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 627
    iget-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->b:Lcn/nubia/camera/videomaker/service/MakerService$3;

    iget-object p2, p2, Lcn/nubia/camera/videomaker/service/MakerService$3;->b:Lcn/nubia/camera/videomaker/service/MakerService;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->a:Ljava/lang/String;

    invoke-static {p2, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Lcn/nubia/camera/videomaker/service/MakerService;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "uri"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string p2, "ex"

    const/4 v0, 0x0

    .line 636
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "MakerService"

    const-string v0, "submit statusIntent!"

    .line 637
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->b:Lcn/nubia/camera/videomaker/service/MakerService$3;

    iget-object v0, v0, Lcn/nubia/camera/videomaker/service/MakerService$3;->b:Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Lcn/nubia/camera/videomaker/service/MakerService;)Lcn/nubia/camera/videomaker/service/MakerService$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 639
    iget-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$1;->b:Lcn/nubia/camera/videomaker/service/MakerService$3;

    iget-object p2, p2, Lcn/nubia/camera/videomaker/service/MakerService$3;->b:Lcn/nubia/camera/videomaker/service/MakerService;

    invoke-static {p2}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Lcn/nubia/camera/videomaker/service/MakerService;)Lcn/nubia/camera/videomaker/service/MakerService$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/camera/videomaker/service/MakerService$a;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "mVideoThread = null "

    .line 641
    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
