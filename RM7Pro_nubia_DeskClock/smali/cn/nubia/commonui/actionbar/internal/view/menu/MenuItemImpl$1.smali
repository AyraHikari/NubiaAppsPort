.class Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->setSupportActionProvider(Landroid/support/v4/view/ActionProvider;)Landroid/support/v4/internal/view/SupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    .prologue
    .line 665
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl$1;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 668
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl$1;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->access$000(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl$1;->this$0:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;)V

    .line 669
    return-void
.end method
