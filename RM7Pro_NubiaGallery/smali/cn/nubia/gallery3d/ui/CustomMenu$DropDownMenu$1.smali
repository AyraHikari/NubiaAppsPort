.class Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu$1;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu$1;->this$0:Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu$1;->this$0:Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;->access$000(Lcn/nubia/gallery3d/ui/CustomMenu$DropDownMenu;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
