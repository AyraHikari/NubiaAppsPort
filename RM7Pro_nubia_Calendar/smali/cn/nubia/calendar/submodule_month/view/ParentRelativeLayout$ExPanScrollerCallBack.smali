.class Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;
.super Ljava/lang/Object;
.source "ParentRelativeLayout.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_month/view/ExPandViewPager$OnScrollerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExPanScrollerCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;
    .param p2, "x1"    # Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$1;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;-><init>(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)V

    return-void
.end method


# virtual methods
.method public getNextBottomPanelTranslationY(II)F
    .locals 2
    .param p1, "currPosition"    # I
    .param p2, "nextPosition"    # I

    .prologue
    .line 123
    if-le p2, p1, :cond_0

    .line 126
    const/high16 v0, 0x424c0000    # 51.0f

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 133
    :goto_0
    return v0

    .line 128
    :cond_0
    if-ge p2, p1, :cond_1

    .line 131
    const/high16 v0, -0x3db40000    # -51.0f

    iget-object v1, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$200(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDragHelperTranslation(F)V
    .locals 3
    .param p1, "maxTranslationY"    # F

    .prologue
    const/high16 v2, 0x43610000    # 225.0f

    .line 140
    iget-object v0, p0, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout$ExPanScrollerCallBack;->this$0:Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;->access$300(Lcn/nubia/calendar/submodule_month/view/ParentRelativeLayout;)Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;

    move-result-object v0

    sub-float v1, p1, v2

    invoke-virtual {v0, v2, v1}, Lcn/nubia/calendar/submodule_month/view/ViewPagerDragHelper;->setBottomTranslation(FF)V

    .line 142
    return-void
.end method
