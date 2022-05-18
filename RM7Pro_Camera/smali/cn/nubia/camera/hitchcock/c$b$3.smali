.class Lcn/nubia/camera/hitchcock/c$b$3;
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

    .line 647
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$b$3;->a:Lcn/nubia/camera/hitchcock/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$3;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$3;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$b$3;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v1, v1, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->d(Lcn/nubia/camera/hitchcock/c;)F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/hitchcock/c;->b(Lcn/nubia/camera/hitchcock/c;F)V

    .line 654
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$3;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->l(Lcn/nubia/camera/hitchcock/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$3;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->m(Lcn/nubia/camera/hitchcock/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$3;->a:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/TipView;->setVisibility(I)V

    return-void
.end method
