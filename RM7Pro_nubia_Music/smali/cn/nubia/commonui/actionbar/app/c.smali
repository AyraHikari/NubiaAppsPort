.class Lcn/nubia/commonui/actionbar/app/c;
.super Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.source "AppCompatDelegateImplV11.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private n:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    .line 39
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/c;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/c;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    .line 80
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 44
    const v0, 0x1020002

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/c;->n:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    .line 48
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/c;->n:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/c;->n:Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Lcn/nubia/commonui/actionbar/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;

    invoke-direct {v1, v0, p2}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/app/c;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/c;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/view/ActionMode;)V

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
