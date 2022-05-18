.class Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;
.super Ljava/lang/Object;
.source "CalendarMonthFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$000(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Landroid/widget/TableLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 102
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$000(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Landroid/widget/TableLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TableLayout;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 105
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$100(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$100(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 108
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;->this$0:Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->access$100(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1$1;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1$1;-><init>(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method
