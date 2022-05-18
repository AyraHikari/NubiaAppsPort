.class Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;
.super Ljava/lang/Object;
.source "NubiaMorePopupMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NubiaMorePopupMenu;->createContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 185
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$500(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$600(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$400(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$700(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$3;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$400(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method
