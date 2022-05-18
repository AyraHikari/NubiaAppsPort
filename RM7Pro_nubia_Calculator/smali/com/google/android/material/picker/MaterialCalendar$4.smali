.class Lcom/google/android/material/picker/MaterialCalendar$4;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$monthPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialCalendar;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar$4;->this$0:Lcom/google/android/material/picker/MaterialCalendar;

    iput-object p2, p0, Lcom/google/android/material/picker/MaterialCalendar$4;->val$monthPager:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 218
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar$4;->val$monthPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar$4;->val$monthPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar$4;->val$monthPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
