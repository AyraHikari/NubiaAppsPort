.class public Landroidx/recyclerview/widget/k$a;
.super Landroidx/core/f/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/k;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/core/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/k;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroidx/core/f/a;-><init>()V

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroidx/core/f/a/d;
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Landroidx/core/f/a;->a(Landroid/view/View;)Landroidx/core/f/a/d;

    move-result-object p1

    return-object p1

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/f/a;->a(Landroid/view/View;)Landroidx/core/f/a/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroidx/core/f/a/c;)V
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;Landroidx/core/f/a/c;)V

    .line 147
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;Landroidx/core/f/a/c;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;Landroidx/core/f/a/c;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/f/a;->a(Landroid/view/View;Landroidx/core/f/a/c;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 160
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/k;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/f/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/f/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 170
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->a:Landroidx/recyclerview/widget/k;

    iget-object v0, v0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$i;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 173
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroidx/core/f/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/f/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/f/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2}, Landroidx/core/f/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/f/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method c(Landroid/view/View;)V
    .locals 2

    .line 128
    invoke-static {p1}, Landroidx/core/f/u;->b(Landroid/view/View;)Landroidx/core/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 130
    iget-object v1, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2}, Landroidx/core/f/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/f/a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method d(Landroid/view/View;)Landroidx/core/f/a;
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/f/a;

    return-object p1
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 223
    iget-object v0, p0, Landroidx/recyclerview/widget/k$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/a;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2}, Landroidx/core/f/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/core/f/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method
