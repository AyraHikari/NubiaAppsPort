.class Lcn/nubia/video/list/ui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/a;->T(Lb/a/b/c/b/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/a$b;->a:Lcn/nubia/video/list/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/a$b;->a:Lcn/nubia/video/list/ui/a;

    invoke-static {p1}, Lcn/nubia/video/list/ui/a;->K(Lcn/nubia/video/list/ui/a;)Lb/a/b/c/b/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/ui/a$b;->a:Lcn/nubia/video/list/ui/a;

    invoke-static {p1}, Lcn/nubia/video/list/ui/a;->K(Lcn/nubia/video/list/ui/a;)Lb/a/b/c/b/a$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/list/ui/a$b;->a:Lcn/nubia/video/list/ui/a;

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->k()I

    move-result v0

    .line 4
    invoke-interface {p1, v0}, Lb/a/b/c/b/a$b;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
