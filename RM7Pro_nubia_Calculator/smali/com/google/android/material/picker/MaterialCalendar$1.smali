.class Lcom/google/android/material/picker/MaterialCalendar$1;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialCalendar;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialCalendar;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar$1;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Ljava/util/Calendar;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendar$1;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-static {v0}, Lcom/google/android/material/picker/MaterialCalendar;->access$000(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/GridSelector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/picker/GridSelector;->select(Ljava/util/Calendar;)V

    .line 142
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar$1;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-static {p1}, Lcom/google/android/material/picker/MaterialCalendar;->access$100(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/MonthsPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/picker/MonthsPagerAdapter;->notifyDataSetChanged()V

    .line 143
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar$1;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-static {p1}, Lcom/google/android/material/picker/MaterialCalendar;->access$200(Lcom/google/android/material/picker/MaterialCalendar;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener;

    .line 144
    iget-object v1, p0, Lcom/google/android/material/picker/MaterialCalendar$1;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-static {v1}, Lcom/google/android/material/picker/MaterialCalendar;->access$000(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/GridSelector;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/material/picker/GridSelector;->getSelection()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
