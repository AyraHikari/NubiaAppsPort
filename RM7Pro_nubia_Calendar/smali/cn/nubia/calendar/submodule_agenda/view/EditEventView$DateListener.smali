.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateListener"
.end annotation


# instance fields
.field private editEventViewWF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/EditEventView;",
            ">;"
        }
    .end annotation
.end field

.field private mDatePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

.field private mViewWF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "editEventView"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->mDatePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 650
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->mViewWF:Ljava/lang/ref/WeakReference;

    .line 651
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->editEventViewWF:Ljava/lang/ref/WeakReference;

    .line 652
    return-void
.end method


# virtual methods
.method public onDateSet(Lcn/nubia/commonui/widget/DatePickerView;III)V
    .locals 16
    .param p1, "view"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "monthDay"    # I

    .prologue
    .line 663
    const/4 v7, 0x0

    .line 664
    .local v7, "mView":Landroid/view/View;
    const/4 v3, 0x0

    .line 666
    .local v3, "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->mViewWF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "mView":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .restart local v7    # "mView":Landroid/view/View;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->editEventViewWF:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .restart local v3    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    if-nez v3, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    const/16 v14, 0x7f6

    move/from16 v0, p2

    if-lt v0, v14, :cond_2

    .line 672
    const/16 p2, 0x7f5

    .line 673
    const/16 p3, 0xb

    .line 674
    const/16 p4, 0x1f

    .line 677
    :cond_2
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;

    move-result-object v12

    .line 678
    .local v12, "startTime":Landroid/text/format/Time;
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;

    move-result-object v6

    .line 681
    .local v6, "endTime":Landroid/text/format/Time;
    const/4 v2, 0x0

    .line 683
    .local v2, "LeapMonth":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->mDatePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->mDatePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-virtual {v14}, Lcn/nubia/commonui/widget/DatePickerDialog;->getSwitchState()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 684
    const/4 v2, 0x1

    .line 687
    :cond_3
    const/4 v14, 0x1

    invoke-static {v3, v14}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    .line 688
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$300(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Z

    move-result v14

    if-eq v14, v2, :cond_6

    .line 689
    const/4 v14, 0x1

    invoke-static {v3, v14}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    .line 695
    :goto_1
    iput-boolean v2, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    .line 696
    if-nez v2, :cond_7

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveStatus:Z

    .line 697
    if-nez v2, :cond_4

    .line 698
    const/4 v14, 0x0

    iput-boolean v14, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    .line 700
    :cond_4
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v14

    if-ne v7, v14, :cond_8

    .line 701
    iget v14, v6, Landroid/text/format/Time;->year:I

    iget v15, v12, Landroid/text/format/Time;->year:I

    sub-int v13, v14, v15

    .line 702
    .local v13, "yearDuration":I
    iget v14, v6, Landroid/text/format/Time;->month:I

    iget v15, v12, Landroid/text/format/Time;->month:I

    sub-int v9, v14, v15

    .line 703
    .local v9, "monthDuration":I
    iget v14, v6, Landroid/text/format/Time;->monthDay:I

    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    sub-int v8, v14, v15

    .line 704
    .local v8, "monthDayDuration":I
    move/from16 v0, p2

    iput v0, v12, Landroid/text/format/Time;->year:I

    .line 705
    move/from16 v0, p3

    iput v0, v12, Landroid/text/format/Time;->month:I

    .line 706
    move/from16 v0, p4

    iput v0, v12, Landroid/text/format/Time;->monthDay:I

    .line 707
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 708
    .local v10, "startMillis":J
    add-int v14, p2, v13

    iput v14, v6, Landroid/text/format/Time;->year:I

    .line 709
    add-int v14, p3, v9

    iput v14, v6, Landroid/text/format/Time;->month:I

    .line 710
    add-int v14, p4, v8

    iput v14, v6, Landroid/text/format/Time;->monthDay:I

    .line 711
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 712
    .local v4, "endMillis":J
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 713
    invoke-static {v3, v10, v11}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;J)V

    .line 726
    .end local v8    # "monthDayDuration":I
    .end local v9    # "monthDuration":I
    .end local v13    # "yearDuration":I
    :cond_5
    :goto_3
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v3, v14, v10, v11, v15}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;JZ)V

    .line 727
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v3, v14, v4, v5, v15}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;JZ)V

    .line 728
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 729
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 731
    const/4 v14, 0x0

    invoke-static {v3, v14}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    goto/16 :goto_0

    .line 691
    .end local v4    # "endMillis":J
    .end local v10    # "startMillis":J
    :cond_6
    const/4 v14, 0x0

    invoke-static {v3, v14}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    goto :goto_1

    .line 696
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 715
    :cond_8
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 716
    .restart local v10    # "startMillis":J
    move/from16 v0, p2

    iput v0, v6, Landroid/text/format/Time;->year:I

    .line 717
    move/from16 v0, p3

    iput v0, v6, Landroid/text/format/Time;->month:I

    .line 718
    move/from16 v0, p4

    iput v0, v6, Landroid/text/format/Time;->monthDay:I

    .line 719
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 720
    .restart local v4    # "endMillis":J
    invoke-virtual {v6, v12}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 721
    invoke-virtual {v6, v12}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 722
    move-wide v4, v10

    goto :goto_3
.end method

.method public setDatePickerDialog(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0
    .param p1, "mDatePickerDialog"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 656
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->mDatePickerDialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 657
    return-void
.end method
