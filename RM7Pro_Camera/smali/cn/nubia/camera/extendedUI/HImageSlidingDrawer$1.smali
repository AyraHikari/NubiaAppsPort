.class Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$1;->b:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    iput p2, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$1;->b:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-static {v0}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$1;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return-void
.end method
