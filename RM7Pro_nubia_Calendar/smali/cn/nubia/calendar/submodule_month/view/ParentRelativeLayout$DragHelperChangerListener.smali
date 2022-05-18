.class Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;
.super Ljava/lang/Object;
.source "ParentRelativeLayout.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper$OnDragHelperChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperChangerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
    .param p2, "x1"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;-><init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V

    return-void
.end method


# virtual methods
.method public onDragHelperScrolled(F)V
    .locals 3
    .param p1, "position"    # F

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$600(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$400(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .line 153
    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$500(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 152
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setTranslationY(F)V

    .line 154
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 158
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$900(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/util/MonthUtil;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .line 159
    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$700(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .line 160
    invoke-static {v3}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$900(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/util/MonthUtil;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$800(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/util/MonthUtil;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v3

    .line 158
    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/util/MonthUtil;->getWeekNumsOfMonth(Landroid/text/format/Time;I)I

    move-result v1

    iput v1, v0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$600(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1000(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setVisibility(I)V

    .line 166
    sput-boolean v5, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    .line 168
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const v1, 0x43878000    # 271.0f

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1102(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;F)F

    .line 175
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    .line 176
    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1100(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v2

    .line 175
    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->setBottomTranslation(FF)V

    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;->onRefreshPage()V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 171
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v1, 0x435c0000    # 220.0f

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1102(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;F)F

    goto :goto_1

    .line 172
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    iget v0, v0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->lineNum:I

    if-ne v0, v6, :cond_1

    .line 173
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    const/high16 v1, 0x43290000    # 169.0f

    iget-object v2, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1102(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;F)F

    goto :goto_1

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 186
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$600(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1000(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setVisibility(I)V

    .line 188
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    .line 194
    :goto_2
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$OnRefreshPageListener;->onRefreshPage()V

    goto/16 :goto_0

    .line 190
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$600(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/nubia/calendar/submodule_month/view/ExPandViewPager;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$DragHelperChangerListener;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$1000(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/OtherViewPager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/calendar/submodule_month/view/OtherViewPager;->setVisibility(I)V

    .line 192
    sput-boolean v5, Lcn/nubia/calendar/submodule_month/view/MonthScroll;->mIsMiniView:Z

    goto :goto_2

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
