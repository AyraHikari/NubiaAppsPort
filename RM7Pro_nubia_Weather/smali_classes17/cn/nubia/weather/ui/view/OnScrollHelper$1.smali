.class Lcn/nubia/weather/ui/view/OnScrollHelper$1;
.super Ljava/lang/Object;
.source "OnScrollHelper.java"

# interfaces
.implements Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/view/OnScrollHelper;->setScrollViewOnScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/view/OnScrollHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backAnimationEnd()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$000(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$000(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;->refreshBackAnimationEnd()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$102(Lcn/nubia/weather/ui/view/OnScrollHelper;Z)Z

    .line 65
    return-void
.end method

.method public onDragScrolled(I)V
    .locals 1
    .param p1, "scrollY"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->onDrag(I)V

    .line 75
    return-void
.end method

.method public onFlingScrolled(I)V
    .locals 1
    .param p1, "scrollY"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->onFling(I)V

    .line 70
    return-void
.end method

.method public onScrollChanged(I)V
    .locals 5
    .param p1, "scrollY"    # I

    .prologue
    const/high16 v2, 0x43c80000    # 400.0f

    .line 93
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$300(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    if-gez p1, :cond_3

    .line 95
    const/4 p1, 0x0

    .line 99
    :cond_0
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    iget-object v4, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    .line 100
    invoke-static {v4}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$400(Lcn/nubia/weather/ui/view/OnScrollHelper;)F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    .line 99
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v0, v1, v2

    .line 101
    .local v0, "alpha":F
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$500(Lcn/nubia/weather/ui/view/OnScrollHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/app/WeatherApplication;

    .line 102
    invoke-virtual {v1, v0}, Lcn/nubia/weather/app/WeatherApplication;->setWeatherAnimationAlpha(F)V

    .line 103
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$600(Lcn/nubia/weather/ui/view/OnScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$300(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setUpTranslationAlpha(F)V

    .line 108
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v1, p1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$700(Lcn/nubia/weather/ui/view/OnScrollHelper;I)V

    .line 110
    .end local v0    # "alpha":F
    :cond_2
    return-void

    .line 96
    :cond_3
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$400(Lcn/nubia/weather/ui/view/OnScrollHelper;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-le p1, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$400(Lcn/nubia/weather/ui/view/OnScrollHelper;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int p1, v1

    goto :goto_0
.end method

.method public onWillRefresh()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$102(Lcn/nubia/weather/ui/view/OnScrollHelper;Z)Z

    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$200(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/CircleView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/CircleView;->animatorIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$200(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/CircleView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/CircleView;->startAnimation()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$000(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$000(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;->pullDownState(I)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$000(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcn/nubia/weather/ui/view/OnScrollHelper$1;->this$0:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-static {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->access$000(Lcn/nubia/weather/ui/view/OnScrollHelper;)Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;->willRefresh()V

    .line 89
    :cond_2
    return-void
.end method
