.class Lcn/nubia/notepad/view/NubiaMorePopupMenu$1;
.super Ljava/lang/Object;
.source "NubiaMorePopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NubiaMorePopupMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZZ)V
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
    .line 116
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$1;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$1;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$000(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$1;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$000(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu$onPopupWindowDismissedListener;->onDismissed()V

    .line 123
    :cond_0
    return-void
.end method
