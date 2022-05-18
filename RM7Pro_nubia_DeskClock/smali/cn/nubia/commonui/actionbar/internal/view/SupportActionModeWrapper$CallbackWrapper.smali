.class public Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mActionModes:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Lcn/nubia/commonui/actionbar/view/ActionMode;",
            "Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMenus:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final mWrappedCallback:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportCallback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    .line 149
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Landroid/support/v4/util/SimpleArrayMap;

    .line 150
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    .line 151
    return-void
.end method

.method private getActionModeWrapper(Lcn/nubia/commonui/actionbar/view/ActionMode;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 190
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;

    .line 191
    .local v0, "wrapper":Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 199
    .end local v0    # "wrapper":Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;
    .local v1, "wrapper":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 197
    .end local v1    # "wrapper":Ljava/lang/Object;
    .restart local v0    # "wrapper":Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;

    .end local v0    # "wrapper":Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 198
    .restart local v0    # "wrapper":Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mActionModes:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 199
    .restart local v1    # "wrapper":Ljava/lang/Object;
    goto :goto_0
.end method

.method private getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 180
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    .line 181
    .local v0, "wrapper":Landroid/view/Menu;
    if-nez v0, :cond_0

    .line 182
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/internal/view/SupportMenu;

    invoke-static {v2, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuWrapperFactory;->wrapSupportMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenu;)Landroid/view/Menu;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mMenus:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcn/nubia/commonui/actionbar/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/support/v4/internal/view/SupportMenuItem;

    .line 171
    .end local p2    # "item":Landroid/view/MenuItem;
    invoke-static {v2, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v2

    .line 170
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcn/nubia/commonui/actionbar/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    .line 157
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 156
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcn/nubia/commonui/actionbar/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 177
    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Lcn/nubia/commonui/actionbar/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v1

    .line 164
    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;->getMenuWrapper(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 163
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
