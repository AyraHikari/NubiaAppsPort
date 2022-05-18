.class Lcn/nubia/collage/ui/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/j;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/j;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/j$b;->a:Lcn/nubia/collage/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/j$b;->a:Lcn/nubia/collage/ui/j;

    iget-object v0, v0, Lcn/nubia/collage/ui/b;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
