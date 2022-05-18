.class Lcn/nubia/camera/videomaker/service/MakerService$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/videomaker/a/b$c;


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

    .line 652
    iput-object p1, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$2;->b:Lcn/nubia/camera/videomaker/service/MakerService$3;

    iput-object p2, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/videomaker/a/b;I)V
    .locals 2

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgress  : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/videomaker/service/a;

    .line 659
    iget-object v1, p0, Lcn/nubia/camera/videomaker/service/MakerService$3$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcn/nubia/camera/videomaker/service/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
