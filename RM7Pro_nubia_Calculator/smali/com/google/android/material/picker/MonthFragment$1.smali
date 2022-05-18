.class Lcom/google/android/material/picker/MonthFragment$1;
.super Ljava/lang/Object;
.source "MonthFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MonthFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/widget/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MonthFragment;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MonthFragment;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/android/material/picker/MonthFragment$1;->this$0:Lcom/google/android/material/picker/MonthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/google/android/material/picker/MonthFragment$1;->this$0:Lcom/google/android/material/picker/MonthFragment;

    invoke-static {p1}, Lcom/google/android/material/picker/MonthFragment;->access$000(Lcom/google/android/material/picker/MonthFragment;)Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/picker/MonthFragment$1;->this$0:Lcom/google/android/material/picker/MonthFragment;

    invoke-static {p1}, Lcom/google/android/material/picker/MonthFragment;->access$100(Lcom/google/android/material/picker/MonthFragment;)Lcom/google/android/material/picker/MonthAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/picker/MonthAdapter;->withinMonth(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/google/android/material/picker/MonthFragment$1;->this$0:Lcom/google/android/material/picker/MonthFragment;

    invoke-static {p1}, Lcom/google/android/material/picker/MonthFragment;->access$000(Lcom/google/android/material/picker/MonthFragment;)Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/picker/MonthFragment$1;->this$0:Lcom/google/android/material/picker/MonthFragment;

    invoke-static {p0}, Lcom/google/android/material/picker/MonthFragment;->access$100(Lcom/google/android/material/picker/MonthFragment;)Lcom/google/android/material/picker/MonthAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/google/android/material/picker/MonthAdapter;->getItem(I)Ljava/util/Calendar;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;->onDayClick(Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method
