.class Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;
.super Ljava/lang/Object;
.source "NubiaMorePopupMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NubiaMorePopupMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)V
    .locals 2
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$100(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->getNavigationStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$100(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$200(Lcn/nubia/notepad/view/NubiaMorePopupMenu;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 145
    invoke-static {v0}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$100(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->getNavigationHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->height:I

    .line 144
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$400(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    invoke-static {v2}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$300(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x50

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->this$0:Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    .line 150
    invoke-static {v5}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->access$300(Lcn/nubia/notepad/view/NubiaMorePopupMenu;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcn/nubia/notepad/view/NubiaMorePopupMenu$2;->height:I

    add-int/2addr v5, v6

    .line 149
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
