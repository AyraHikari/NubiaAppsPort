.class Lcn/nubia/camera/prisma/PrismaSlidingDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;


# direct methods
.method constructor <init>(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;I)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$1;->b:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    iput p2, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$1;->b:Lcn/nubia/camera/prisma/PrismaSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/prisma/PrismaSlidingDrawer;->a(Lcn/nubia/camera/prisma/PrismaSlidingDrawer;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/prisma/PrismaSlidingDrawer$1;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method
