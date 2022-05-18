.class Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;


# direct methods
.method constructor <init>(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$2;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

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

    .line 111
    iget-object p1, p0, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer$2;->a:Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;

    invoke-static {p1, p3}, Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;->a(Lcn/nubia/camera/extendedUI/HImageSlidingDrawer;I)V

    return-void
.end method
