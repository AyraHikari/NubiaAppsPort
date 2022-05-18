.class Lcn/nubia/camera/hitchcock/c$b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/c$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/c$b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/c$b;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$b$4;->a:Lcn/nubia/camera/hitchcock/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$4;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->s(Lcn/nubia/camera/hitchcock/c;)V

    .line 684
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$4;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->t(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 685
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$4;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0, v1}, Lcn/nubia/camera/hitchcock/c;->a(Lcn/nubia/camera/hitchcock/c;Z)Z

    .line 686
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$4;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$4;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->b(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/a;->a()V

    :cond_0
    return-void
.end method
