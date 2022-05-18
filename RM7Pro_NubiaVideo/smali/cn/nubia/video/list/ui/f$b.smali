.class Lcn/nubia/video/list/ui/f$b;
.super Landroid/support/v7/widget/RecyclerView$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/f;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/f$b;->a:Lcn/nubia/video/list/ui/f;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$b;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$b;->a:Lcn/nubia/video/list/ui/f;

    invoke-static {p1}, Lcn/nubia/video/list/ui/f;->B(Lcn/nubia/video/list/ui/f;)V

    return-void
.end method
