.class Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;
.super Ljava/lang/Object;
.source "BottomMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/BottomMenuLayout;I)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;->this$0:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    iput p2, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 222
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;->this$0:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->access$300(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;->this$0:Lcn/nubia/gallery3d/ui/BottomMenuLayout;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout;->access$200(Lcn/nubia/gallery3d/ui/BottomMenuLayout;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$3;->val$index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;

    iget v0, v0, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItem;->mId:I

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/BottomMenuLayout$MenuItemListener;->onClick(I)V

    return-void
.end method
