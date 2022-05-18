.class Lcn/nubia/camera/three_a/ui/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/three_a/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/three_a/ui/c;

.field private b:[I


# direct methods
.method constructor <init>(Lcn/nubia/camera/three_a/ui/c;[I)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p2, p0, Lcn/nubia/camera/three_a/ui/c$a;->b:[I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->b:[I

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-static {v0}, Lcn/nubia/camera/three_a/ui/c;->e(Lcn/nubia/camera/three_a/ui/c;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    .line 496
    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->b:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->B()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0}, Lcn/nubia/camera/three_a/ui/c;->C()I

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/c;->d(I)V

    .line 498
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    iget-object v1, p0, Lcn/nubia/camera/three_a/ui/c$a;->b:[I

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/c;->a([I)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/c;->d(I)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/three_a/ui/c$a;->a:Lcn/nubia/camera/three_a/ui/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/three_a/ui/c;->d(I)V

    :goto_0
    return-void
.end method
