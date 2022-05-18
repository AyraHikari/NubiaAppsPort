.class Lcn/nubia/video/list/ui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/a;->S(Lb/a/b/c/b/a$a;)V
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
    iput-object p1, p0, Lcn/nubia/video/list/ui/a$a;->a:Lcn/nubia/video/list/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/a$a;->a:Lcn/nubia/video/list/ui/a;

    invoke-static {p1}, Lcn/nubia/video/list/ui/a;->I(Lcn/nubia/video/list/ui/a;)Lb/a/b/c/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/ui/a$a;->a:Lcn/nubia/video/list/ui/a;

    invoke-static {p1}, Lcn/nubia/video/list/ui/a;->I(Lcn/nubia/video/list/ui/a;)Lb/a/b/c/b/a$a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/list/ui/a$a;->a:Lcn/nubia/video/list/ui/a;

    invoke-static {v0}, Lcn/nubia/video/list/ui/a;->J(Lcn/nubia/video/list/ui/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/list/ui/a$a;->a:Lcn/nubia/video/list/ui/a;

    .line 3
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->k()I

    move-result v1

    .line 4
    invoke-interface {p1, v0, v1}, Lb/a/b/c/b/a$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
