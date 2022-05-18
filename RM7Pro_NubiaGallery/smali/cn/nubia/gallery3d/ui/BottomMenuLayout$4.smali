.class Lcn/nubia/gallery3d/ui/BottomMenuLayout$4;
.super Ljava/lang/Object;
.source "BottomMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/BottomMenuLayout;->addItem(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

.field final synthetic val$menuItem:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/BottomMenuLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$4;->this$0:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$4;->val$menuItem:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$4;->val$menuItem:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$4;->val$menuItem:Landroid/widget/TextView;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
