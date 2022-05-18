.class Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 201
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p3, p1, :cond_0

    .line 202
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->c(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 203
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->c(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$a;->a()V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$2;->a:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {p1}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->b(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;

    invoke-virtual {p1, p2, p3}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer$b;I)V

    :cond_1
    :goto_0
    return-void
.end method
