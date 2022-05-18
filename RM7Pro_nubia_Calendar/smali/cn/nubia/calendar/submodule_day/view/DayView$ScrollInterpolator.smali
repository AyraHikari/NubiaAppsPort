.class Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0

    .prologue
    .line 6441
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6442
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6445
    sub-float/2addr p1, v2

    .line 6446
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float p1, v0, v2

    .line 6448
    sub-float v0, v2, p1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$5900(Lcn/nubia/calendar/submodule_day/view/DayView;)F

    move-result v1

    mul-float/2addr v0, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 6449
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$ScrollInterpolator;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$6000(Lcn/nubia/calendar/submodule_day/view/DayView;)V

    .line 6452
    :cond_0
    return p1
.end method
