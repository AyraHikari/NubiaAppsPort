.class Lcn/nubia/camera/o/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/c;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcn/nubia/camera/o/c$2;->a:Lcn/nubia/camera/o/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcn/nubia/camera/o/c$2;->a:Lcn/nubia/camera/o/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/c;Z)Z

    .line 276
    iget-object p1, p0, Lcn/nubia/camera/o/c$2;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->c(Lcn/nubia/camera/o/c;)V

    .line 277
    iget-object p1, p0, Lcn/nubia/camera/o/c$2;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->d(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq p1, v0, :cond_0

    .line 278
    iget-object p1, p0, Lcn/nubia/camera/o/c$2;->a:Lcn/nubia/camera/o/c;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcn/nubia/camera/o/c;->a(Lcn/nubia/camera/o/c;I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/o/c$2;->a:Lcn/nubia/camera/o/c;

    invoke-virtual {p1}, Lcn/nubia/camera/o/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/z/b;->c()V

    :goto_0
    return-void
.end method
