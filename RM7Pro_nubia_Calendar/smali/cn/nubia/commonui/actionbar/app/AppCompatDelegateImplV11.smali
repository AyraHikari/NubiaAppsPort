.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;
.super Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.source "AppCompatDelegateImplV11.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mNativeActionModeAwareLayout:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    .line 39
    return-void
.end method


# virtual methods
.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 83
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 78
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/view/LayoutInflater$Factory2;

    .line 80
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "subDecor"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    const v0, 0x1020002

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    .line 48
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;

    invoke-direct {v2, v0, p2}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v1

    .line 62
    .local v1, "supportActionMode":Lcn/nubia/commonui/actionbar/view/ActionMode;
    if-eqz v1, :cond_0

    .line 64
    new-instance v2, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV11;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 66
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
