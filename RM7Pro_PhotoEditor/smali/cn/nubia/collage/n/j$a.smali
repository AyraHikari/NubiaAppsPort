.class Lcn/nubia/collage/n/j$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/n/j;->g(Ljava/util/List;Ljava/util/List;Lcn/nubia/collage/n/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/n/j;


# direct methods
.method constructor <init>(Lcn/nubia/collage/n/j;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/n/j$a;->a:Lcn/nubia/collage/n/j;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/n/j$a;->a:Lcn/nubia/collage/n/j;

    invoke-static {v0}, Lcn/nubia/collage/n/j;->a(Lcn/nubia/collage/n/j;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/n/j$a;->a:Lcn/nubia/collage/n/j;

    invoke-static {v0}, Lcn/nubia/collage/n/j;->b(Lcn/nubia/collage/n/j;)Lcn/nubia/collage/n/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/collage/n/e;->a()V

    iget-object v0, p0, Lcn/nubia/collage/n/j$a;->a:Lcn/nubia/collage/n/j;

    invoke-static {v0}, Lcn/nubia/collage/n/j;->c(Lcn/nubia/collage/n/j;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/n/j$a;->a:Lcn/nubia/collage/n/j;

    invoke-static {v0}, Lcn/nubia/collage/n/j;->c(Lcn/nubia/collage/n/j;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/j$a;->a:Lcn/nubia/collage/n/j;

    invoke-static {v0}, Lcn/nubia/collage/n/j;->d(Lcn/nubia/collage/n/j;)V

    return-void
.end method
