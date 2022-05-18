.class Lcn/nubia/camera/y/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/y/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/y/i;-><init>(Lcn/nubia/camera/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/y/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/y/i;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/y/i$1;->a:Lcn/nubia/camera/y/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcn/nubia/camera/y/i$1;->a:Lcn/nubia/camera/y/i;

    invoke-static {v0}, Lcn/nubia/camera/y/i;->b(Lcn/nubia/camera/y/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TimeLapse"

    const-string v1, "when interval is not on, not call interval finish"

    .line 42
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/y/i$1;->a:Lcn/nubia/camera/y/i;

    invoke-static {v0}, Lcn/nubia/camera/y/i;->a(Lcn/nubia/camera/y/i;)Lcn/nubia/camera/y/i$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/y/i$1;->a:Lcn/nubia/camera/y/i;

    invoke-static {v0}, Lcn/nubia/camera/y/i;->a(Lcn/nubia/camera/y/i;)Lcn/nubia/camera/y/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/y/i$a;->d()V

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/y/i$1;->a:Lcn/nubia/camera/y/i;

    invoke-static {v0}, Lcn/nubia/camera/y/i;->a(Lcn/nubia/camera/y/i;)Lcn/nubia/camera/y/i$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/y/i$a;->b(J)V

    return-void
.end method
