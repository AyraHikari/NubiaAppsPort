.class public Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;
.super Ljava/lang/Object;
.source "BottomBarManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BottomBarManager"


# instance fields
.field private mAddGroup:Landroid/widget/TextView;

.field private mCurMode:I

.field private mMoreGroup:Landroid/widget/TextView;

.field private mTodayLayout:Landroid/widget/LinearLayout;

.field private mTodayStringTextView:Landroid/widget/TextView;

.field private mTodayTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mAddGroup:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mMoreGroup:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayTextView:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayLayout:Landroid/widget/LinearLayout;

    .line 74
    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayStringTextView:Landroid/widget/TextView;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mCurMode:I

    .line 17
    const v0, 0x7f1100a8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mAddGroup:Landroid/widget/TextView;

    .line 18
    const v0, 0x7f1100a9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mMoreGroup:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f1100a6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayTextView:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f11008f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayLayout:Landroid/widget/LinearLayout;

    .line 23
    const v0, 0x7f1100a7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayStringTextView:Landroid/widget/TextView;

    .line 25
    return-void
.end method


# virtual methods
.method public getImgViewOfMoreMenuItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mMoreGroup:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView_Add()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mAddGroup:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView_More()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mMoreGroup:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView_Today()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getView_Today_String()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayStringTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setCurrentMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 57
    :pswitch_0
    return-void

    .line 50
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentTime(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "curTime"    # Landroid/text/format/Time;

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;->mTodayTextView:Landroid/widget/TextView;

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
