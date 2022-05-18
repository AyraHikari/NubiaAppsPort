.class Lcom/google/android/material/picker/MaterialCalendar$2;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialCalendar;->addMonthChangeListeners(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialCalendar;

.field final synthetic val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialCalendar;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    iput-object p2, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    iget-object v1, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    .line 198
    invoke-static {v1}, Lcom/google/android/material/picker/MaterialCalendar;->access$300(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/CalendarBounds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/picker/CalendarBounds;->getStart()Lcom/google/android/material/picker/Month;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    .line 199
    invoke-static {v2}, Lcom/google/android/material/picker/MaterialCalendar;->access$300(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/CalendarBounds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/picker/CalendarBounds;->getEnd()Lcom/google/android/material/picker/Month;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    .line 200
    invoke-static {v3}, Lcom/google/android/material/picker/MaterialCalendar;->access$100(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/MonthsPagerAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/material/picker/MonthsPagerAdapter;->getPageMonth(I)Lcom/google/android/material/picker/Month;

    move-result-object v3

    .line 197
    invoke-static {v1, v2, v3}, Lcom/google/android/material/picker/CalendarBounds;->create(Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;)Lcom/google/android/material/picker/CalendarBounds;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/google/android/material/picker/MaterialCalendar;->access$302(Lcom/google/android/material/picker/MaterialCalendar;Lcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/CalendarBounds;

    .line 201
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->val$monthDropSelect:Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar$2;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    invoke-static {p0}, Lcom/google/android/material/picker/MaterialCalendar;->access$100(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/MonthsPagerAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/picker/MonthsPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
