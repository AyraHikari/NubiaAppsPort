.class Lcn/nubia/video/list/ui/b$a;
.super Landroid/support/v7/widget/RecyclerView$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/b;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/b;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/b$a;->a:Lcn/nubia/video/list/ui/b;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/b$a;->a:Lcn/nubia/video/list/ui/b;

    invoke-static {p1}, Lcn/nubia/video/list/ui/b;->w(Lcn/nubia/video/list/ui/b;)Lb/a/b/c/b/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/ui/b$a;->a:Lcn/nubia/video/list/ui/b;

    invoke-static {p1}, Lcn/nubia/video/list/ui/b;->w(Lcn/nubia/video/list/ui/b;)Lb/a/b/c/b/h;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/b$a;->a:Lcn/nubia/video/list/ui/b;

    invoke-static {p1}, Lcn/nubia/video/list/ui/b;->x(Lcn/nubia/video/list/ui/b;)V

    return-void
.end method
