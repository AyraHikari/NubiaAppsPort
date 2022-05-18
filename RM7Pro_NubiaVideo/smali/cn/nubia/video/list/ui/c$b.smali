.class Lcn/nubia/video/list/ui/c$b;
.super Landroid/support/v7/widget/RecyclerView$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/c;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/c$b;->a:Lcn/nubia/video/list/ui/c;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/c$b;->a:Lcn/nubia/video/list/ui/c;

    invoke-static {p1}, Lcn/nubia/video/list/ui/c;->E(Lcn/nubia/video/list/ui/c;)Lb/a/b/c/b/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/ui/c$b;->a:Lcn/nubia/video/list/ui/c;

    invoke-static {p1}, Lcn/nubia/video/list/ui/c;->E(Lcn/nubia/video/list/ui/c;)Lb/a/b/c/b/i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/c$b;->a:Lcn/nubia/video/list/ui/c;

    invoke-static {p1}, Lcn/nubia/video/list/ui/c;->F(Lcn/nubia/video/list/ui/c;)V

    return-void
.end method
