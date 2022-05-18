.class Lcn/nubia/camera/aw/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aw/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aw/b;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcn/nubia/camera/aw/b$4;->a:Lcn/nubia/camera/aw/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 314
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 315
    iget-object p1, p0, Lcn/nubia/camera/aw/b$4;->a:Lcn/nubia/camera/aw/b;

    invoke-static {p1}, Lcn/nubia/camera/aw/b;->c(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p1

    .line 316
    iget-object p2, p0, Lcn/nubia/camera/aw/b$4;->a:Lcn/nubia/camera/aw/b;

    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    iget-object v1, p0, Lcn/nubia/camera/aw/b$4;->a:Lcn/nubia/camera/aw/b;

    sget-object v2, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    iget-object v3, p0, Lcn/nubia/camera/aw/b$4;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v3}, Lcn/nubia/camera/aw/b;->c(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/aw/b;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 317
    iget-object p2, p0, Lcn/nubia/camera/aw/b$4;->a:Lcn/nubia/camera/aw/b;

    invoke-static {p2}, Lcn/nubia/camera/aw/b;->c(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/a/a;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/af/a;)V

    return-void
.end method
