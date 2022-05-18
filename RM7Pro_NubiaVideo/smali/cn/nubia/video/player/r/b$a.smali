.class Lcn/nubia/video/player/r/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/r/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/r/b;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/r/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/r/b$a;->a:Lcn/nubia/video/player/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/r/b$a;->a:Lcn/nubia/video/player/r/b;

    invoke-static {v0}, Lcn/nubia/video/player/r/b;->a(Lcn/nubia/video/player/r/b;)Lcn/nubia/video/player/r/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/r/b$a;->a:Lcn/nubia/video/player/r/b;

    invoke-static {v0}, Lcn/nubia/video/player/r/b;->a(Lcn/nubia/video/player/r/b;)Lcn/nubia/video/player/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/video/player/r/c;->a()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/r/b$a;->a:Lcn/nubia/video/player/r/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/video/player/r/b;->b(Lcn/nubia/video/player/r/b;Z)Z

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/r/b$a;->a:Lcn/nubia/video/player/r/b;

    invoke-static {v0}, Lcn/nubia/video/player/r/b;->c(Lcn/nubia/video/player/r/b;)Lcn/nubia/video/player/r/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/r/b$a;->a:Lcn/nubia/video/player/r/b;

    invoke-static {v0}, Lcn/nubia/video/player/r/b;->c(Lcn/nubia/video/player/r/b;)Lcn/nubia/video/player/r/b$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/r/b$a;->a:Lcn/nubia/video/player/r/b;

    invoke-static {v1}, Lcn/nubia/video/player/r/b;->a(Lcn/nubia/video/player/r/b;)Lcn/nubia/video/player/r/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/player/r/a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/video/player/r/b$b;->a(I)V

    :cond_0
    return-void
.end method
