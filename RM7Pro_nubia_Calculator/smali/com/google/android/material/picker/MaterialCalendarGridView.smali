.class final Lcom/google/android/material/picker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/picker/MonthAdapter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/picker/MonthAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/google/android/material/picker/MonthAdapter;
    .locals 0

    .line 40
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/picker/MonthAdapter;

    return-object p0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/picker/MonthAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/picker/MonthAdapter;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    invoke-interface {v0, p1, p0}, Lcom/google/android/material/picker/GridSelector;->onCalendarMonthDraw(Landroid/graphics/Canvas;Lcom/google/android/material/picker/MaterialCalendarGridView;)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 45
    instance-of v0, p1, Lcom/google/android/material/picker/MonthAdapter;

    if-eqz v0, :cond_0

    .line 52
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-class v1, Lcom/google/android/material/picker/MaterialCalendarGridView;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-class v1, Lcom/google/android/material/picker/MonthAdapter;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%1$s must have its Adapter set to a %2$s"

    .line 47
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
