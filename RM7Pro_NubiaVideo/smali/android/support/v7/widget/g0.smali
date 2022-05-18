.class public Landroid/support/v7/widget/g0;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field final b:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v7/widget/g0$a;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/g0$a;-><init>(Landroid/support/v7/widget/g0;)V

    iput-object v0, p0, Landroid/support/v7/widget/g0;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/g0;->a:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method a()Landroid/support/v4/view/AccessibilityDelegateCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/g0;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->n0(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    const-class p1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/g0;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/g0;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->o0(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/g0;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/g0;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->F0(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
