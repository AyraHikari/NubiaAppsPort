.class public interface abstract Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;
.super Ljava/lang/Object;
.source "ActionModeCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/menu/ActionModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IActionModeListener"
.end annotation


# virtual methods
.method public abstract onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
.end method

.method public abstract onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
.end method

.method public abstract onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
.end method

.method public abstract onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
.end method
