.class public Lcn/nubia/music/app/menu/ActionModeCallback;
.super Ljava/lang/Object;
.source "ActionModeCallback.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;


# direct methods
.method public constructor <init>(Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/music/app/menu/ActionModeCallback;->mListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/music/app/menu/ActionModeCallback;->mListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;->onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/music/app/menu/ActionModeCallback;->mListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;->onCreateActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/music/app/menu/ActionModeCallback;->mListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    invoke-interface {v0, p1}, Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 32
    return-void
.end method

.method public onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/music/app/menu/ActionModeCallback;->mListener:Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/music/app/menu/ActionModeCallback$IActionModeListener;->onPrepareActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
